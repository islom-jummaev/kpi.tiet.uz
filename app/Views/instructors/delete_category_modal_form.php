<?php echo form_open(get_uri("instructors/delete_category"), array("id" => "instructors-category-form", "class" => "general-form", "role" => "form")); ?>
<div class="modal-body clearfix">
    <div class="container-fluid" id="#name">
        <input type="hidden" name="id" value="<?=$id?>">
        <?php echo app_lang('delete_confirmation_message'); ?>
    </div>
</div>

<div class="modal-footer">
    <button type="button" class="btn btn-default" data-bs-dismiss="modal"><span data-feather="x" class="icon-16"></span> <?php echo app_lang('close'); ?></button>
    <button type="submit" class="btn btn-danger"><span data-feather="trash-2" class="icon-16"></span> <?php echo app_lang('delete'); ?></button>
</div>
<?php echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function () {
        $("#instructors-category-form").appForm({
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
            $("#name").focus();
        }, 200);
    });
</script>