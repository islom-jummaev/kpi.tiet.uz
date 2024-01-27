<?php echo form_open(get_uri("reports/approved"), array("id" => "approved-modal-form", "class" => "general-form", "role" => "form")); ?>
<div class="modal-body clearfix">
    <div class="container-fluid">
        <input type="hidden" name="report_id" value="<?=$report_id?>" />
        <input type="hidden" name="user_id" value="<?=$data->user_id?>" />
        <input type="hidden" name="rating" value="<?=$data->rating?>" />
        <input type="hidden" name="indicator_id" value="<?=$data->indicator_id?>" />

        <div class="form-group">
            <div class="row">
                <label class="col-md-3"><?php echo lang('incs.sender'); ?>:</label>
                <div class="col-md-9">
                    <span class='avatar avatar-xs'><img src='<?=$image?>'  alt=""/></span>
                    <?=sprintf("%s %s", $data->first_name, $data->last_name)?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <label class="col-md-3"><?php echo lang('incs.indicator'); ?>:</label>
                <div class="col-md-9">
                    <?=$data->name?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <label class="col-md-3"><?php echo lang('incs.rating'); ?>:</label>
                <div class="col-md-9">
                    <?=$data->rating?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <label class="col-md-3"><?php echo lang('incs.report_description'); ?>:</label>
                <div class="col-md-9">
                    <?=$data->description?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <label class="col-md-3"><?php echo lang('incs.report_files'); ?>:</label>
                <div class="col-md-9">
                    <?php
                        foreach ($files as $file) {
                            echo "<a href='/".$file["file"]."'><span data-feather='file' class='icon-32'></span> ".lang("incs.file")."</a></br>";
                        }
                    ?>
                </div>
            </div>
        </div>
        <?php if ($data->status == 1): ?>
        <div class="form-group">
            <div class="row">
                <label for="address" class="col-md-3"><?php echo lang('incs.status'); ?></label>
                <div class="col-md-9">
                    <input type="radio" class="btn-check" name="status" id="success" value="1" autocomplete="on">
                    <label class="btn btn-outline-success" for="success"><?=lang('incs.reports_approved')?></label>
                    <input type="radio" class="btn-check" name="status" id="failure" value="0" autocomplete="off">
                    <label class="btn btn-outline-danger" for="failure"><?=lang('incs.reports_failure')?></label>
                </div>
            </div>
        </div>
        <?php endif; ?>
    </div>
</div>

<div class="modal-footer">
    <button type="button" class="btn btn-default" data-bs-dismiss="modal"><span data-feather="x" class="icon-16"></span> <?php echo app_lang('close'); ?></button>
    <button type="submit" class="btn btn-primary"><span data-feather="check-circle" class="icon-16"></span> <?php echo app_lang('save'); ?></button>
</div>
<?php echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $("#approved-modal-form").appForm({
            onSuccess: function (result) {
                if (result.view === "details") {
                    appAlert.success(result.message, {duration: 10000});
                    setTimeout(function () {
                        location.reload();
                    }, 500);

                } else {
                    location.reload();
                }
            }
        });
    });
</script>