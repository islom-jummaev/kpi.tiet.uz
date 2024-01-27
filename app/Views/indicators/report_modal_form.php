<?php echo form_open_multipart("indicators/send_report", array("id" => "indicator-send-report-form", "class" => "general-form")); ?>
    <div class="modal-body clearfix">
        <div class="container-fluid">
            <div class="form-group">
                <div class="row">
                    <input type="hidden" name="indicator_id" value="<?=$indicator["id"]?>">
                    <label for="indicator_name" class="col-md-3"><?php echo lang('incs.indicator'); ?></label>
                    <div class="col-md-9">
                        <?php
                        echo form_input(array(
                            "id" => "indicator_name",
                            "name" => "indicator_name",
                            "value" => $indicator["name"],
                            "class" => "form-control",
                            "placeholder" => lang('incs.name'),
                            "disabled" => "disabled"
                        ));
                        ?>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <label for="indicator_report_sender" class="col-md-3"><?php echo lang('incs.sender'); ?></label>
                    <div class="col-md-9">
                        <?php
                        echo form_input(array(
                            "id" => "indicator_report_sender",
                            "name" => "indicator_report_sender",
                            "value" => $sender,
                            "class" => "form-control",
                            "placeholder" => lang('incs.name'),
                            "disabled" => "disabled"
                        ));
                        ?>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <label for="indicator_receiver" class="col-md-3"><?php echo lang('incs.receiver'); ?></label>
                    <div class="col-md-9">
                        <?php
                        echo form_input(array(
                            "id" => "indicator_receiver",
                            "name" => "indicator_receiver",
                            "value" => "",
                            "class" => "form-control",
                            "placeholder" => lang('incs.receiver'),
                            "data-rule-required" => true,
                            "data-msg-required" => app_lang("field_required")
                        ));
                        ?>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <label for="report_files" class="col-md-3"><?php echo lang('incs.report_files'); ?></label>
                    <div class="col-md-9">
                        <input type="file" id="report_files" name="report_files[]" class="form-control">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <label for="report_description" class="col-md-3"><?php echo lang('incs.report_description'); ?></label>
                    <div class="col-md-9">
                        <?php
                        echo form_textarea(array(
                            "id" => "report_description",
                            "name" => "report_description",
                            "value" => "",
                            "class" => "form-control",
                            "placeholder" => lang('incs.report_description'),
                            "data-rule-required" => true,
                            "data-msg-required" => app_lang("field_required"),
                        ));
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-bs-dismiss="modal"><span data-feather="x" class="icon-16"></span> <?php echo app_lang('close'); ?></button>
        <button type="submit" class="btn btn-primary"><span data-feather="check-circle" class="icon-16"></span> <?php echo app_lang('save'); ?></button>
    </div>
</form>
<?php // echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $("#indicator-send-report-form").appForm({
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

    $(document).ready(function () {
        $('[data-bs-toggle="tooltip"]').tooltip();
        $('#indicator_receiver').select2({data: <?=$team_members_dropdown?>});
    });
</script>