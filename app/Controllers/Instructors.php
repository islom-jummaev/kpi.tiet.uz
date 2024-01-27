<?php
/**
 * Class Instructors
 * @author Umidjon Mukhtorov <u.mkh@ya.ru>
 * @version v0.1
 */

namespace App\Controllers;

use App\Models\Instructors\Instructor;
use App\Models\Instructors\Category;

/**
 * Class Instructors
 */
class Instructors extends Security_Controller
{
    /** @var Instructor */
    protected Instructor $instruct;

    /** @var Category */
    protected Category $category;

    public function __construct()
    {
        parent::__construct();
        $this->instruct = new Instructor();
        $this->category = new Category();
    }


    /**
     * @return string
     */
    public function index(): string {
        $view_data = $this->list();
        return $this->template->rander('instructors/index', $view_data);
    }

    /**
     * @return string | false
     */
    private function list(): array {
        $category = $this->category->getCategories();
        $resp = [];
        foreach ($category as $data){
            $edit = "";
            $delete = "";

            if ($this->login_user->is_admin) {
                $edit = modal_anchor(
                    get_uri("instructors/update_modal_form"),
                    "<i data-feather='edit' class='icon-16'></i>",
                    array(
                        "class" => "edit",
                        "title" => lang('incs.edit_category'),
                        "data-post-id" => intval($data["id"])
                    )
                );

                $delete = modal_anchor(
                    get_uri("instructors/delete_category_modal_form"),
                    "<i data-feather='x-circle' class='icon-16'></i>",
                    array(
                        "class" => "delete",
                        "title" => lang('incs.delete_category'),
                        "data-post-id" => intval($data["id"])
                    )
                );
            }

            $resp[] = [
                "id" => $data["id"],
                "name" => $data["name"],
                "instructors" => $this->makeRow($data),
                "edit" => $edit,
                "delete" => $delete
            ];
        }

        return [ "data" => $resp ];
    }

    /**
     * @param $data
     * @return array
     */
    private function makeRow($data): array {
        $instructs = $this->instruct->getInstructors($data["id"]);
        $row_data = [];

        foreach ($instructs as $ins) {
            $delete = "";

            if ($this->login_user->is_admin) {
                $delete = modal_anchor(
                    get_uri("instructors/delete_instruct_modal_form"),
                    "<i data-feather='x-circle' class='icon-16'></i>",
                    array(
                        "class" => "delete",
                        "title" => lang('incs.delete_file'),
                        "data-post-id" => intval($ins["id"])
                    )
                );
            }

            $row_data[] = [
                "name" => $ins["name"],
                "file" => $ins["file"],
                "delete" => $delete

            ];
        }

        return $row_data;
    }

    /**
     * @return string
     */
    public function category_add_modal_form(): string {
        return $this->template->view("instructors/category_add_modal_form");
    }

    /**
     * @return string
     */
    public function instructor_add_modal_form(): string {
        $view_data["categories"] = $this->getInstructorsCategories();

        return $this->template->view("instructors/instructor_add_modal_form", $view_data);
    }

    /**
     * @return string
     */
    public function update_modal_form(): string {
        $id = $this->request->getPost("id");
        $category = $this->category->find($id);

        return $this->template->view("instructors/update_modal_form", [
            "category" => $category
        ]);
    }


    public function saveCategory(): void
    {
        $this->validate_submitted_data([
            "name" => "required"
        ]);

        $data = [
            "name" => $this->request->getPost("name"),
        ];

        $id = $this->category->saveCategory($data);
        if ($id) {
            echo json_encode(array("success" => true, "data" => "test", 'id' => $id, 'message' => app_lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => app_lang('error_occurred')));
        }
    }


    public function updateCategory(): void {
        $this->validate_submitted_data([
            "id" => "required",
            "name" => "required"
        ]);

        $id = intval($this->request->getPost("id"));
        $name = $this->request->getPost("name");

        $isUpdate = $this->category->updateCategory($id, $name);
        if ($isUpdate) {
            echo json_encode(array("success" => true, 'message' => app_lang('record_saved')));
        } else {
            echo json_encode(array("success" => false, 'message' => app_lang('error_occurred')));
        }
    }

    /**
     * @return string
     */
    public function delete_category_modal_form(): string {
        $id = $this->request->getPost("id");
        return $this->template->view("instructors/delete_category_modal_form", [
            "id" => $id
        ]);
    }

    /**
     * @return string
     */
    public function delete_instruct_modal_form(): string {
        $id = $this->request->getPost("id");
        return $this->template->view("instructors/delete_instruct_modal_form", [
            "id" => $id
        ]);
    }

    public function delete_category(): void {
        $this->validate_submitted_data([
            "id" => "required|numeric"
        ]);

        $id = $this->request->getPost("id");
        $isDel = $this->category->delete($id);
        if ($isDel) {
            echo json_encode(array("success" => true, "id" => $id, 'message' => app_lang('record_deleted')));
        } else {
            echo json_encode(array("success" => false, "id" => $id, 'message' => app_lang('record_cannot_be_deleted')));
        }
    }

    public function saveInstructor(): void
    {
        $this->validate_submitted_data([
            "cat_id" => "required|numeric",
            "name" => "required"
        ]);

        $file = $this->request->getFile("file");
        if ($file->isValid()) {
            $path = ROOTPATH . "files/instructors";
            if (!is_dir($path)) mkdir($path);
            $exp = explode(".", $file->getClientName());
            $file_name = sprintf("%s.%s", gen_uuid(), end($exp));
            $file->move($path, $file_name);

            $data = [
                "cat_id" => $this->request->getPost("cat_id"),
                "name" => $this->request->getPost("name"),
                "file" => "files/instructors/" . $file_name
            ];

            $id = $this->instruct->saveInstructor($data);
            if (!$id) {
                echo json_encode(array("success" => false, 'message' => app_lang('error_occurred')));
                exit();
            }
        }

        echo json_encode(array("success" => true, 'message' => app_lang('record_saved')));
    }


    public function deleteInstructor(): void {
        $this->validate_submitted_data([
            "id" => "required"
        ]);

        $id = intval($this->request->getPost("id"));
        $isDelete = $this->instruct->delete($id);
        if ($isDelete) {
            echo json_encode(array("success" => true, 'message' => app_lang('record_deleted')));
        } else {
            echo json_encode(array("success" => false, 'message' => app_lang('record_cannot_be_deleted')));
        }
    }

    /**
     * @return false|string
     */
    private function getInstructorsCategories() {
        $team_members = $this->category->getCategories();

        $team_members_dropdown = array();


        foreach ($team_members as $member) {
            $team_members_dropdown[] = array("id" => $member["id"], "text" => $member["name"]);
        }

        return json_encode($team_members_dropdown);
    }

}