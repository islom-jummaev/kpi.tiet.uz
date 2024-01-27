<div id="page-content" class="page-wrapper clearfix">
    <div class="card">
        <div class="page-title clearfix">
            <h1><?php echo lang('incs.instructors'); ?></h1>
            <div class="title-button-group">
                <?php
                if ($login_user->is_admin) {
                    echo modal_anchor(get_uri("instructors/category_add_modal_form"), "<i data-feather='plus-circle' class='icon-16'></i> " . lang('incs.add_category'), array("class" => "btn btn-default", "title" => lang('incs.add_category')));
                    echo modal_anchor(get_uri("instructors/instructor_add_modal_form"), "<i data-feather='plus-circle' class='icon-16'></i> " . lang('incs.new_file'), array("class" => "btn btn-default", "title" => lang('incs.new_file')));
                }
                ?>
            </div>
        </div>
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <?php foreach ($data as $item){ ?>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-heading-<?=$item["id"]?>">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse-<?=$item["id"]?>" aria-expanded="false" aria-controls="flush-collapseOne">
                        <i data-feather='bookmark' class='icon-20'></i>&nbsp;&nbsp;<?=$item["name"]?>&nbsp;&nbsp;<?php if ($login_user->is_admin) { ?><?=$item["edit"]?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=$item["delete"]?> <?php } ?>
                    </button>
                </h2>
                <div id="flush-collapse-<?=$item["id"]?>" class="accordion-collapse collapse" aria-labelledby="flush-heading-<?=$item["id"]?>" data-bs-parent="#accordionFlushExample">

                    <div class="accordion-body">
                        <?php if(count($item["instructors"]) > 0){ ?>
                            <?php foreach($item["instructors"] as $file){ ?>

                            <h5 style="padding-bottom: 5px">
                                <a href="/<?=$file["file"]?>" target="_blank">
                                    <i data-feather='file-text' class='icon-18'></i>&nbsp;<?=$file["name"]?><?php if ($login_user->is_admin) {?>&nbsp;&nbsp;&nbsp;&nbsp;<?=$file["delete"]?> <?php } ?>
                                </a>
                            </h5>
                            <?php } ?>
                        <?php } else { echo lang("incs.empty"); } ?>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
