<?php

/**
 * Class Indicators
 * @author Umidjon Mukhtorov <u.mkh@ya.ru>
 * @version v0.1
 */

namespace App\Models\Indicators;

use CodeIgniter\Database\BaseResult;
use CodeIgniter\Model;
use ReflectionException;

/**
 * Class Indicator
 */
class Indicator extends Model
{
    protected $table = "indicators";
    protected $db;

    protected $allowedFields = ['name', 'rating', 'parent', 'user_id'];

    public function __construct()
    {
        parent::__construct();
        $this->db = db_connect();
    }

    /**
     * @param int $parent
     * @return array
     */
    public function getIndicators(int $parent = 0): array {
        return $this->select("name, rating, id, user_id")->where("parent", $parent)->findAll();
    }

    /**
     * @param int $id
     * @return array | null | object
     */
    public function getIndicator(int $id): array {
        return $this->find($id);
    }

    /**
     * @param array $data
     * @return int
     * @throws ReflectionException
     */
    public function saveIndicator(array $data): int {
        return $this->insert($data, true);
    }

    /**
     * @param int $id
     * @param array $data
     * @return bool
     * @throws ReflectionException
     */
    public function updateIndicator(int $id, array $data): bool {
        return $this->update($id, $data);
    }

    /**
     * @param int $id
     * @return bool|BaseResult
     */
    public function deleteIndicator(int $id) {
        return $this->delete($id, true);
    }
}