<div id="page-content" class="page-wrapper clearfix">
    <div class="card">
        <div class="page-title clearfix">
            <h1><?php echo lang('incs.reports'); ?></h1>
        </div>
        <div class="table-responsive">
            <a href="#" class="badge badge-warning">Hello</a>
            <table id="reports-table" class="display" cellspacing="0" width="100%">
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
                {title: "<?php echo lang("incs.sender") ?>", "class": "w40"},
                {title: "<?php echo lang("incs.indicator") ?>", "class": "w28p text-center"},
                {title: "<?php echo lang("incs.status") ?>", "class": "w15p text-center"},
                {title: "<?php echo lang("incs.created_at") ?>", "class": "w15p text-center"},
                {title: '<i data-feather="menu" class="icon-16"></i>', "class": "text-center option w100"}
            ]
        } else {
            columns = [
                {title: '', "class": "w50 text-center"},
                {title: "<?php echo lang("incs.receiver") ?>", "class": "w40"},
                {title: "<?php echo lang("incs.indicator") ?>", "class": "w28p text-center"},
                {title: "<?php echo lang("incs.status") ?>", "class": "w15p text-center"},
                {title: "<?php echo lang("incs.created_at") ?>", "class": "w15p text-center"}
            ]
        }

        // filterDropdown: [{name: "user_id", class: "w200", options: $team_members_dropdown}],
        $("#reports-table").appTable({
            source: '<?php echo_uri("reports/list") ?>',
            order: [[1, "asc"]],
            radioButtons: [
                {text: '<?php echo lang("incs.pending") ?>', name: "status", value: 1, isChecked: true},
                {text: '<?php echo lang("incs.approved") ?>', name: "status", value: 2, isChecked: false},
                {text: '<?php echo lang("incs.failure") ?>', name: "status", value: 3, isChecked: false}
            ],
            columns: columns
        });
    });
</script>
