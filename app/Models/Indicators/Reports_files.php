<?php

namespace App\Models\Indicators;

use CodeIgniter\Model;
use ReflectionException;

class Reports_files extends Model
{
    protected $table = "reports_files";
    protected $db;
    protected $allowedFields = ["report_id", "file"];

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
    public function saveFile(array $data): int {
        return $this->insert($data);
    }

    /**
     * @param int $report_id
     * @return array
     */
    public function getFiles(int $report_id): array {
        return $this->where("report_id", $report_id)->findAll();
    }
}