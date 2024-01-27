<?php echo form_open(get_uri("indicators/save"), array("id" => "indicator-form", "class" => "general-form", "role" => "form")); ?>
<div class="modal-body clearfix">
    <div class="container-fluid">
        <div class="form-group">
            <input type="hidden" name="parent_id" value="<?=$id?>" />
            <div class="row">
                <label for="company_name" class="col-md-3"><?php echo lang('incs.name'); ?></label>
                <div class="col-md-9">
                    <?php
                    echo form_input(array(
                        "id" => "indicator_name",
                        "name" => "indicator_name",
                        "value" => "",
                        "class" => "form-control",
                        "placeholder" => lang('incs.name'),
                        "autofocus" => true,
                        "data-rule-required" => true,
                        "data-msg-required" => app_lang("field_required"),
                    ));
                    ?>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <label for="address" class="col-md-3"><?php echo lang('incs.rating'); ?></label>
                <div class="col-md-9">
                    <?php
                    echo form_input(array(
                        "id" => "indicator_rating",
                        "name" => "indicator_rating",
                        "value" => "",
                        "class" => "form-control",
                        "placeholder" => lang('incs.rating')
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
        $("#indicator-form").appForm({
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
        setTimeout(function () {
            $("#indicator_name").focus();
        }, 200);
    });
</script>