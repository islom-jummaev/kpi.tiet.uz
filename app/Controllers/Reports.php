<?php
/**
 * Class Reports
 * @author Umidjon Mukhtorov <u.mkh@ya.ru>
 * @version v0.1
 */

namespace App\Controllers;

use App\Models\Indicators\Rating;
use App\Models\Indicators\Report;
use App\Models\Indicators\Reports_files;
use App\Models\Indicators\Report_notification;
use ReflectionException;

class Reports extends Security_Controller
{

    const METODIST = "Metodist";

    /** @var Report  */
    protected Report $reports;

    /** @var Reports_files  */
    protected Reports_files $reports_files;

    // /** @var ReportNotification */
    protected Report_notification $report_notification;

    protected Rating $rating;

    public function __construct()
    {
        parent::__construct();

        $this->reports = new Report();
        $this->reports_files = new Reports_files();
        $this->rating = new Rating();
        $this->report_notification = new Report_notification();
    }

    /**
     * @return string
     */
    public function index(): string {
        // $this->can_send_reports_view();

        $this->report_notification->updateStatus($this->login_user->id, $this->report_notification::UNREAD, $this->report_notification::READ);
        return $this->template->rander("reports/index", []);
    }

    /**
     * @return string | false
     */
    public function list(): string {
        // $this->can_send_reports_view();

        $this->validate_submitted_data([
            "status" => "numeric"
        ]);

        $status = $this->request->getPost("status");

        $data = $this->reports->getReports($this->login_user->is_admin, $this->login_user->id, $status);
        $result = [];
        foreach ($data as $d){
            if ($this->login_user->is_admin == 0) {
                $result[] = $this->makeRowSender($d);
            }

            if($this->login_user->is_admin == 1) {
                $result[] = $this->makeRowReceiver($d);
            }
        }

        $view_data = [ "data" => $result ];
        return json_encode($view_data);
    }

    /**
     * @param $data
     * @return array
     */
    private function makeRowSender($data): array {
        $image_url = get_avatar($data["user_image"]);
        $full_name = sprintf("%s %s", $data["first_name"], $data["last_name"]);
        $row_data[] = "<span class='avatar avatar-xs'><img src='$image_url' alt='$full_name'></span>";

        $row_data[] = get_team_member_profile_link($data["user_id"], $full_name);
        $row_data[] = $data["name"];
        $row_data[] = report_status($data["status"]);
        $row_data[] = $data["created_at"];

        return $row_data;
    }

    /**
     * @param $data
     * @return array
     */
    private function makeRowReceiver($data): array {
        $image_url = get_avatar($data["user_image"]);
        $full_name = sprintf("%s %s", $data["first_name"], $data["last_name"]);
        $row_data[] = "<span class='avatar avatar-xs'><img src='$image_url' alt='$full_name'></span>";

        $row_data[] = get_team_member_profile_link($data["user_id"], $full_name);
        $row_data[] = $data["name"];
        $row_data[] = report_status($data["status"]);
        $row_data[] = $data["created_at"];

        //if($this->can_send_reports_approved()) {
        $row_data[] = modal_anchor(
            get_uri("reports/approved_modal_form"),
            "<i data-feather='eye' class='icon-16'></i>",
            array(
                "class" => "edit",
                "title" => lang('incs.report_view'),
                "data-post-id" => $data["id"]
            )
        );
        //}

        return $row_data;
    }

    /**
     * @return string
     */
    public function approved_modal_form(): string {
        $this->can_send_reports_view();
        if(!$this->can_send_reports_approved()){
            app_redirect("forbidden");
        }

        $this->validate_submitted_data([
            "id" => "required"
        ]);

        $view_data["report_id"] = $this->request->getPost("id");
        $view_data["data"] = $this->reports->getReportReceiver($view_data["report_id"], $this->login_user->id);
        $view_data["files"] = $this->reports_files->getFiles($view_data["data"]->id);
        $view_data["image"] = get_avatar($view_data["data"]->image);

        return $this->template->view("reports/approved_modal_form", $view_data);
    }

    /**
     * @throws ReflectionException
     */
    public function approved() {

        $this->validate_submitted_data([
            "report_id" => "required",
            "user_id" => "required",
            "status" => "required",
            "indicator_id" => "required"
        ]);

        $report_id = intval($this->request->getPost("report_id"));
        $user_id = intval($this->request->getPost("user_id"));
        $rating =  floatval($this->request->getPost("rating"));
        $indicator_id = intval($this->request->getPost("indicator_id"));
        $status = $this->request->getPost("status");
        $status = ($status == "1") ? $this->reports::APPROVED : $this->reports::FAILURE;


        if (!$this->reports->updateReport($report_id, $status)) {
            echo json_encode(array("success" => false, 'message' => app_lang('error_occurred')));
            exit();
        }

        $this->report_notification->saveNotification([
            "report_id" => $report_id,
            "sender_id" => $this->login_user->id,
            "receiver_id" => $user_id,
            "report_status" => $status,
            "status" => $this->report_notification::UNREAD
        ]);

        if ($status === 2) {
            $id = $this->rating->saveRating([
                "user_id" => $user_id,
                "appraiser" => $this->login_user->id,
                "rating" => $rating,
                "indicator_id" => $indicator_id
            ]);

            if ($id) {
                echo json_encode(array("success" => true, "data" => "test", 'id' => $id, 'message' => app_lang('record_saved')));
            } else {
                echo json_encode(array("success" => false, 'message' => app_lang('error_occurred')));
            }
        } else {
            echo json_encode(array("success" => true, "data" => "test", 'id' => "1", 'message' => app_lang('record_saved')));
        }
    }

    /**
     * @return array
     */
    public function listNotification(): array {
        $data = $this->report_notification->getNotifications($this->login_user->id, $this->report_notification::UNREAD, $this->reports::PENDING);
        $result = [];
        foreach ($data as $d){
            $result[] = $this->makeRowNotification($d);
        }

        return [ "data" => $result ];
    }

    /**
     * @param $data
     * @return array
     */
    private function makeRowNotification($data): array {
        $image_url = get_avatar($data["user_image"]);
        $full_name = sprintf("%s %s", $data["first_name"], $data["last_name"]);
        $row_data["ava"] = $image_url;

        $row_data["link"] = get_team_member_profile_link($data["user_id"], $full_name);
        $row_data["name"] = $data["name"];
        $row_data["report_status"] = report_status($data["report_status"]);
        $row_data["created_at"] = $data["created_at"];

        return $row_data;
    }

}