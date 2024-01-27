<?php
/**
 * Class Category
 * @author Umidjon Mukhtorov <u.mkh@ya.ru>
 * @version v0.1
 */

namespace App\Models\Instructors;

use CodeIgniter\Database\BaseConnection;
use CodeIgniter\Database\BaseResult;
use CodeIgniter\Model;

class Instructor extends Model
{
    /** @var string */
    protected $table = "instructors";

    /** @var BaseConnection */
    protected $db;

    /** @var string[] */
    protected $allowedFields = ['cat_id', 'name', 'file'];

    public function __construct()
    {
        parent::__construct();
        $this->db = db_connect();
    }

    /**
     * @param int $cat_id
     * @return array
     */
    public function getInstructors(int $cat_id): array {
        return $this->select("*")->where("cat_id", $cat_id)->findAll();
    }

    /**
     * @param array $data
     * @return BaseResult|false|int|object|string
     */
    public function saveInstructor(array $data): int {
        return $this->insert($data);
    }

    /**
     * @param int $id
     * @param int $cat_id
     * @param string $name
     * @param string $file
     * @return bool
     */
    public function updateInstructor(int $id, int $cat_id, string $name, string $file): bool {
        return $this->update($id, [
            "cat_id" => $cat_id,
            "name" => $name,
            "file" => $file,
        ]);
    }

    /**
     * @param string $id
     * @return bool
     */
    public function deleteInstructor(string $id): bool {
        return $this->delete($id, true);
    }
}