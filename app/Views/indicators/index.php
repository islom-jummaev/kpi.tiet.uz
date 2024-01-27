<div id="page-content" class="page-wrapper clearfix">
    <div class="card">
        <div class="page-title clearfix">
            <h1><?php echo lang('incs.indicators'); ?></h1>
            <div class="title-button-group">
                <?php
                if ($login_user->is_admin) {
                    echo modal_anchor(get_uri("indicators/modal_form/$id"), "<i data-feather='plus-circle' class='icon-16'></i> " . lang('incs.add_indicator'), array("class" => "btn btn-default", "title" => lang('incs.add_indicator')));
                }
                ?>
            </div>
        </div>
        <div class="table-responsive">
            <table id="indicators-table" class="display" cellspacing="0" width="100%">
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        var columns = [];
        if (<?=$login_user->is_admin?>) {
            columns = [
                {title: '', "class": "w50 text-center"},
                {title: "<?php echo lang("incs.name") ?>"},
                {title: "<?php echo lang("incs.rating") ?>", "class": "w15p"},
                {title: '<i data-feather="menu" class="icon-16"></i>', "class": "text-center option w100"}
            ];
        } else {
            columns = [
                {title: '', "class": "w50 text-center"},
                {title: "<?php echo lang("incs.name") ?>"},
                {title: "<?php echo lang("incs.rating") ?>", "class": "w15p"}
            ];
        }

        $("#indicators-table").appTable({
            source: '<?php echo_uri("indicators/list/$id") ?>',
            order: [[1, "asc"]],
            columns: columns
        });
    });
</script>
