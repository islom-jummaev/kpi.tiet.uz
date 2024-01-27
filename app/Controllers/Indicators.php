<?php
/**
 * Class Indicators
 * @author Umidjon Mukhtorov <u.mkh@ya.ru>
 * @version v0.1
 */

namespace App\Controllers;

use App\Models\Indicators\Indicator;
use App\Models\Indicators\Report;
use App\Models\Indicators\Reports_files;
use App\Models\Indicators\Report_notification;
use CodeIgniter\Files\File;
use ReflectionException;

/**
 * Class Indicators
 */
class Indicators extends Security_Controller
{
    /** @var Indicator */
    protected Indicator $indicator;

    /** @var Report  */
    protected Report $report;

    /** @var Reports_files  */
    protected Reports_files $reports_files;

    protected  $ct;

    protected Report_notification $report_notification;

    public function __construct()
    {
        parent::__construct();
        $this->indicator = new Indicator();
        $this->report = new Report();
        $this->reports_files = new Reports_files();
        $this->report_notification = new Report_notification();
    }

    /**
     * @param int $id
     * @return string
     */
    public function parent(int $id): string {

        $view_data = [ "id" => $id ];
        return $this->template->rander('indicators/index', $view_data);
    }

    /**
     * @return string | false
     */
    public function list(int $parent): string {
        $this->access_only_team_members();

        $data = $this->indicator->getIndicators($parent);
        $result = [];
        foreach ($data as $d){
            $result[] = $this->makeRow($d);
        }

        $view_data = [ "data" => $result ];
        return json_encode($view_data);
    }

    /**
     * @param $data
     * @return array
     */
    private function makeRow($data): array {
        $row_data[] = modal_anchor(
            get_uri("indicators/report_modal_form"),
            "<i data-feather='plus' class='icon-16'></i>",
            array(
                "class" => "plus",
                "title" => lang('incs.send_report'),
                "data-post-id" => $data["id"]
            )
        );

        $row_data[] = $data["name"];
        $row_data[] = $data["rating"];

        if ($this->login_user->is_admin) {
            $edit = modal_anchor(
                get_uri("indicators/update_modal_form"),
                "<i data-feather='edit' class='icon-16'></i>",
                array(
                    "class" => "edit",
                    "title" => lang('incs.edit_indicator'),
                    "data-post-id" => $data["id"]
                )
            );

            $delete = js_anchor(
                "<i data-feather='x' class='icon-16'></i>",
                array(
                    'title' => app_lang('delete_client'),
                    "class" => "delete", "data-id" => $data["id"],
                    "data-action-url" => get_uri("indicators/delete"),
                    "data-action" => "delete-confirmation"
                )
            );

            $row_data[] = $edit.$delete;
        }

        return $row_data;
    }

    /**
     * @param int $id
     * @return string
     */
    public function modal_form(int $id): string {
        return $this->template->view("indicators/modal_form", ["id" => $id]);
    }

    /**
     * @return string
     */
    public function update_modal_form(): string {

        $this->validate_submitted_data([
            "id" => "required|numeric"
        ]);

        $id = $this->request->getPost("id");

        $indicator = $this->indicator->getIndicator($id);

        $view_data = [
            "indicator" => $indicator
        ];

        return $this->template->view("indicators/update_modal_form", $view_data);
    }

    /**
     * @throws ReflectionException
     */
    public function save(): void
    {
        $data = [
            "parent" => $this->request->getPost("parent_id"),
            "name" => $this->request->getPost("indicator_name"),
            "rating" => $this->request->getPost("indicator_rating"),
            "user_id" => $this->login_user->id,
        ];

        $id = $this->indicator->saveIndicator($data);
        if ($id) {
            echo json_encode(array("success" => true, "data" => "test", 'id' => $id, 'message' => app_lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => app_lang('error_occurred')));
        }
    }

    /**
     * @throws ReflectionException
     */
    public function update(): void {
        $this->validate_submitted_data([
            "indicator_id" => "required"
        ]);

        $id = $this->request->getPost("indicator_id");
        $data = [
            "name" => $this->request->getPost("indicator_name"),
            "parent_id" => intval($this->request->getPost("parent_id")),
            "rating" => floatval($this->request->getPost("indicator_rating")),
            "user_id" => $this->login_user->id,
            "updated_at" => date('Y-m-d H:m:s', time())
        ];

        $isUpdate = $this->indicator->updateIndicator(intval($id), $data);
        if ($isUpdate) {
            echo json_encode(array("success" => true, 'message' => app_lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => app_lang('error_occurred')));
        }
    }

    public function delete(): void {
        $this->access_only_admin();

        $this->validate_submitted_data([
            "id" => "required|numeric"
        ]);

        $id = $this->request->getPost("id");

        $isDelete = $this->indicator->deleteIndicator($id);

        if ($isDelete) {
            echo json_encode(array("success" => true, 'message' => app_lang('record_deleted')));
        } else {
            echo json_encode(array("success" => false, 'message' => app_lang('record_cannot_be_deleted')));
        }
    }

    public function report_modal_form() {

        $this->validate_submitted_data([
            "id" => "required|numeric"
        ]);

        $indicator_id = $this->request->getPost("id");
        $view_data["indicator"] = $this->indicator->getIndicator($indicator_id);
        $view_data["sender"] = sprintf("%s %s", $this->login_user->first_name, $this->login_user->last_name);

        $view_data["team_members_dropdown"] = $this->get_team_members_only_admins_dropdown(true);

        return $this->template->view("indicators/report_modal_form", $view_data);
    }

    /**
     * @throws ReflectionException
     */
    public function send_report(): void {

        $this->validate_submitted_data([
            "indicator_id" => "required|numeric",
            "indicator_receiver" => "required|numeric",
            "report_description" => "required|string"
        ]);

        $data = [
            "indicator_id" => intval($this->request->getPost("indicator_id")),
            "sender_id" => $this->login_user->id,
            "receiver_id" => intval($this->request->getPost("indicator_receiver")),
            "description" => $this->request->getPost("report_description"),
            "status" => $this->report::PENDING
        ];


        $id = $this->report->insert($data);
        if (!$id) {
            echo json_encode(array("success" => false, 'message' => app_lang('error_occurred')));
            exit();
        }

        $report_files = $this->request->getFileMultiple("report_files");

        try {
            if (!is_null($report_files) && count($report_files) > 0) {
                 foreach ($report_files as $file) {
                    if (!$file->hasMoved()) {
                        $path = ROOTPATH . "files/reports_files";
                        $exp = explode(".", $file->getClientName());
                        $file_name = sprintf("%s.%s", gen_uuid(), end($exp));
                        $file->move($path, $file_name);

                        $this->reports_files->saveFile([
                            "file" => "files/reports_files/" . $file_name,
                            "report_id" => $id
                        ]);
                    }
                }
            }
        } catch (\RuntimeException $message) {
            echo json_encode(array("success" => false, 'message' => $message->getMessage()));
            exit();
        }

        $this->report_notification->saveNotification([
            "report_id" => $id,
            "sender_id" => $this->login_user->id,
            "receiver_id" => intval($this->request->getPost("indicator_receiver")),
            "report_status" => $this->report::PENDING,
            "status" => $this->report_notification::UNREAD
        ]);

        echo json_encode(array("success" => true, 'message' => app_lang('record_saved')));
    }
}