<?php
/**
 * Class Report
 * @author Umidjon Mukhtorov <u.mkh@ya.ru>
 * @version v0.1
 */

namespace App\Models\Indicators;

use CodeIgniter\Database\BaseConnection;
use CodeIgniter\Database\BaseResult;
use CodeIgniter\Model;
use ReflectionException;

class Report extends Model
{
    const PENDING = 1;
    const APPROVED = 2;
    const FAILURE = 3;

    /** @var string  */
    protected $table = "reports";

    /** @var BaseConnection  */
    protected $db;

    /** @var string[]  */
    protected $allowedFields = ['indicator_id', 'sender_id', 'receiver_id', 'description', 'status'];

    public function __construct()
    {
        parent::__construct();
        $this->db = db_connect();
    }

    /**
     * @param array $data
     * @return BaseResult|false|int|object|string
     * @throws ReflectionException
     */
    public function saveReport(array $data): int {
        return $this->insert($data);
    }

    /**
     * @param int $id
     * @param int $status
     * @return bool
     * @throws ReflectionException
     */
    public function updateReport(int $id, int $status): bool {
        return $this->update($id, [
            "status" => $status
        ]);
    }

    /**
     * @param int $is_admin
     * @param int $user_id
     * @param int $status
     * @return array
     */
    public function getReports(int $is_admin, int $user_id, int $status): array
    {
        $select = "s.id as user_id, s.first_name, s.last_name, s.image as user_image, i.name, r.status, r.created_at, r.id";
        if ($is_admin == 0) $users = "INNER JOIN users as s ON r.receiver_id = s.id and r.sender_id = $user_id";
        if ($is_admin == 1) $users = "INNER JOIN users as s ON r.sender_id = s.id and r.receiver_id = $user_id";
        $indicators = "INNER JOIN indicators as i ON r.indicator_id = i.id";
        $where = "WHERE r.status = $status";
        $order_by = "ORDER BY r.created_at DESC";
        $sqlQuery = sprintf("SELECT %s FROM %s as r %s %s %s %s", $select, $this->table, $users, $indicators, $where, $order_by);

        $query = $this->db->query($sqlQuery);

        return $query->getResultArray();
    }

    /**
     * @param int $id
     * @param int $receiver
     * @return object
     */
    public function getReportReceiver(int $id, int $receiver): object {
        $select = "s.id as user_id, s.first_name, s.last_name, s.image, i.name, i.id as indicator_id, i.rating, r.status, r.description, r.created_at, r.id";
        $users = "INNER JOIN users as s ON r.sender_id = s.id and r.receiver_id = $receiver";
        $indicators = "INNER JOIN indicators as i ON r.indicator_id = i.id";
        $where = "WHERE r.id = $id LIMIT 1";
        $sqlQuery = sprintf("SELECT %s FROM %s as r %s %s %s", $select, $this->table, $users, $indicators, $where);

        $query = $this->db->query($sqlQuery);

        return $query->getRowObject();
    }

    /**
     * @param int $id
     * @param int $status
     * @return bool
     * @throws ReflectionException
     */
    public function updateStatus(int $id, int $status): bool {
        return $this->update($id, [
            "status" => $status
        ]);
    }
}