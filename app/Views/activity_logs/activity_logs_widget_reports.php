<?php if (count($data) === 0) echo '<center><small><span class="text-off">'.lang("incs.notification_report").'</span></small></center>'; ?>
<?php foreach ($data as $res) { ?>
        <div class="d-flex border-bottom mb-3">
            <div class="flex-shrink-0 me-2 mt-3">
                <span class="avatar avatar-xs">
                        <img src="<?=$res['ava']?>" alt="..." />
                </span>
            </div>
            <div class="p-2 w-100">
                <div class="card-title">
                    <?php
                        echo sprintf("<b>%s</b>", $res['link']);
                    ?>
                    <small><span class="text-off"><?=$res['created_at']?></span></small>
                </div>

                <p><?=$res['report_status']?></p>
                <p> <?php echo "<b>".lang("incs.indicator")."</b>: <a href='/index.php/reports'>".$res['name']."</a>"; ?></p>
            </div>
        </div>
        <?php
}
?>
