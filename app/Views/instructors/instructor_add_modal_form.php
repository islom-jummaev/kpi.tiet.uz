<?php echo form_open(get_uri("instructors/saveInstructor"), array("id" => "instructor-add-form", "class" => "general-form", "role" => "form")); ?>
<div class="modal-body clearfix">
    <div class="container-fluid">
        <div class="form-group">
            <div class="row">
                <label for="indicator_name" class="col-md-3"><?php echo lang('incs.name'); ?></label>
                <div class="col-md-9">
                    <?php
                    echo form_input(array(
                        "id" => "name",
                        "name" => "name",
                        "value" => "",
                        "class" => "form-control",
                        "placeholder" => lang('incs.name')
                    ));
                    ?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <label for="indicator_receiver" class="col-md-3"><?php echo lang('incs.category'); ?></label>
                <div class="col-md-9">
                    <?php
                    echo form_input(array(
                        "id" => "instructor_categories",
                        "name" => "cat_id",
                        "value" => "",
                        "class" => "form-control",
                        "placeholder" => lang('incs.category'),
                        "data-rule-required" => true,
                        "data-msg-required" => app_lang("field_required")
                    ));
                    ?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <label for="report_files" class="col-md-3"><?php echo lang('incs.file'); ?></label>
                <div class="col-md-9">
                    <?php
                    echo form_input(array(
                        "id" => "file",
                        "name" => "file",
                        "type" => "file",
                        "class" => "form-control"
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
<?php echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $("#instructor-add-form").appForm({
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
        $('#instructor_categories').select2({data: <?=$categories?>});
    });
</script>