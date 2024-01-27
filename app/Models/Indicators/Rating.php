<?php

namespace App\Models\Indicators;

use CodeIgniter\Model;
use ReflectionException;

class Rating extends Model
{
    protected $table = "ratings";

    protected $db;

    protected $allowedFields = ["user_id", "appraiser", "rating", "indicator_id"];

    public function __construct()
    {
        parent::__construct();
        $this->db = db_connect();
    }

    /**
     * @param array $data
     * @return int
     * @throws ReflectionException
     */
    public function saveRating(array $data): int {
        return $this->insert($data);
    }

    /**
     * @param int $user_id
     * @return array
     */
    public function getRatingSum(int $user_id): array {
        return $this->select("SUM(rating) AS rating_sum")
            ->where("user_id", $user_id)
            ->first();
    }

    public function get() {}
}