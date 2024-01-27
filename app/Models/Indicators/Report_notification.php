<?php
/**
 * Class ReportNotification
 * @author Umidjon Mukhtorov <u.mkh@ya.ru>
 * @version v0.1
 */

namespace App\Models\Indicators;

use CodeIgniter\Database\BaseConnection;
use CodeIgniter\Database\BaseResult;
use CodeIgniter\Model;

class Report_notification extends Model
{
    const UNREAD = 1;
    const READ = 2;

    /** @var string  */
    protected $table = "report_notifications";

    /** @var BaseConnection  */
    protected $db;

    /** @var string[]  */
    protected $allowedFields = ['report_id', 'sender_id', 'receiver_id', 'report_status', 'status', 'created_at'];

    public function __construct()
    {
        parent::__construct();
        $this->db = db_connect();
    }

    /**
     * @param array $data
     * @return BaseResult|false|int|object|string
     */
    public function saveNotification(array $data): int {
        return $this->insert($data);
    }

    /**
     * @param int $user_id
     * @param int $status
     * @param int $report_status
     * @return array
     */
    public function getNotifications(int $user_id, int $status, int $report_status): array {
        $select = "s.id as user_id, s.first_name, s.last_name, s.image as user_image, i.name, r.status, r.report_status, r.created_at, rp.indicator_id";
        $users = "INNER JOIN users as s ON s.id = r.sender_id";
        $report = "INNER JOIN reports as rp ON rp.id = r.report_id";
        $indicators = "INNER JOIN indicators as i ON rp.indicator_id = i.id";
        $where = "WHERE r.status = $status AND r.receiver_id = $user_id";
        $order_by = "ORDER BY r.created_at DESC";
        $sqlQuery = sprintf("SELECT %s FROM %s as r %s %s %s %s %s", $select, $this->table, $users, $report, $indicators, $where, $order_by);

        $query = $this->db->query($sqlQuery);

        return $query->getResultArray();
    }

    /**
     * @param int $user_id
     * @param int $status
     * @param int $newStatus
     * @return void
     */
    public function updateStatus(int $user_id, int $status, int $newStatus)
    {
        // $this->update(['receiver' => $user_id, 'status' => $status], ['status' => $newStatus]);
        $this->db->query(sprintf("UPDATE %s SET status = %d WHERE status = %d AND receiver_id = %d", $this->table, $newStatus, $status, $user_id));
    }
}