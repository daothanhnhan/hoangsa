<?php 
    $home_anh = $action->getList('servicecat', '', '', 'servicecat_id', 'desc', '', '4', '');
    $home_video = $action->getList('video', '', '', 'id', 'desc', '', '4', '');
?>
<link rel="stylesheet" href="./plugin/animsition/css/animate.css">
<style type="text/css">
.video-item iframe {
    width: 100%;
    height: 208px;
}
</style>
<div id="videohoangsa" class="gb-home-banner">

    <div class="container">
        <div class="gb_video_title">
            <h2>Thư viện</h2>
        </div>

        <div class="item">

            <div class="">

                <div class="row">

                    <div class="col-md-6">

                        <div class="item_gt_left  wow slideInLeft" data-wow-duration="1s">
                            <div class="row">
                                <?php
                                $d = 0; 
                                foreach ($home_anh as $item) { 
                                    $d++;
                                ?>
                                <div class="col-md-6 col-sm-12 clear-padding-left clear-padding-right">
                                    <a href="/<?= $item['friendly_url'] ?>">
                                        <img src="/images/<?= $item['servicecat_img'] ?>" class="img-responsive">
                                    </a>
                                </div>
                                <?php 
                                    if ($d == 2) {
                                        echo '</div><div class="row">';
                                    }
                                } ?>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-6">

                        <div class="item_gt_right  wow slideInRight" data-wow-duration="1s">
                              <div class="row">
                                <?php
                                $d = 0; 
                                foreach ($home_video as $item) { 
                                    $d++;
                                ?>
                                <div class="col-md-6 col-sm-12 clear-padding-left clear-padding-right video-item">
                                    <?= $item['content'] ?>
                                </div>
                                <?php 
                                    if ($d == 2) {
                                        echo '</div><div class="row">';
                                    }
                                } ?>
                            </div>               
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>
<script src="./plugin/waypoint/jquery.waypoints.min.js"></script>
<script src="./plugin/animsition/js/wow.min.js"></script>
<script>
    $(document).ready(function () {
        new WOW().init();
    });
</script>