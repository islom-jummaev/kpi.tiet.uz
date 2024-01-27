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

class Category extends Model
{
    /** @var string */
    protected $table = "instruct_cats";

    /** @var BaseConnection */
    protected $db;

    /** @var string[] */
    protected $allowedFields = ['name'];

    public function __construct()
    {
        parent::__construct();
        $this->db = db_connect();
    }

    /**
     * @return array
     */
    public function getCategories(): array {
        return $this->findAll();
    }

    /**
     * @param int $id
     * @return object
     */
    public function getCategory(int $id): object {
        return $this->find($id);
    }

    /**
     * @param array $data
     * @return BaseResult|false|int|object|string
     */
    public function saveCategory(array $data): int {
        return $this->insert($data);
    }

    /**
     * @param int $id
     * @param string $name
     * @return bool
     */
    public function updateCategory(int $id, string $name): bool {
        return $this->update($id, [
            "name" => $name
        ]);
    }

    /**
     * @param int $id
     * @return bool
     */
    public function deleteCategory(int $id): bool {
        return $this->delete($id);
    }
}