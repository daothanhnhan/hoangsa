<?php 
    $home_map_1 = $action->getDetail('map', 'id', 1);
    $home_map_2 = $action->getDetail('map', 'id', 2);
    $home_map_3 = $action->getDetail('map', 'id', 3);
    $home_map_4 = $action->getDetail('map', 'id', 4);
?>
<link rel="stylesheet" href="./plugin/animsition/css/animate.css">

<div id="bandohoangsaea" class="gb-home-map">

    <div class="container">
        <div class="gb_map_title">
            <h2>Bản đồ hệ thống cửa hàng</h2>
        </div>

        <div class="item">

            <div class="">

                <div class="row">

                    <div class="col-md-6">
                        <div class="gb_map_title_item">
                            <h4><?= $home_map_1['name'] ?></h4>
                        </div>

                        <div class="item_gt_map_left  wow slideInLeft" data-wow-duration="1s">

                            <?= $home_map_1['content'] ?>

                        </div>

                    </div>

                    <div class="col-md-6">
                        <div class="gb_map_title_item">
                            <h4><?= $home_map_2['name'] ?></h4>
                        </div>
                        <div class="item_gt_map_right  wow slideInRight" data-wow-duration="1s">

                            <?= $home_map_2['content'] ?>

                        </div>

                    </div>

                </div>
                <div class="row">

                    <div class="col-md-6">
                        <div class="gb_map_title_item">
                            <h4><?= $home_map_3['name'] ?></h4>
                        </div>

                        <div class="item_gt_map_left  wow slideInLeft" data-wow-duration="1s">

                            <?= $home_map_3['content'] ?>

                        </div>

                    </div>

                    <div class="col-md-6">
                        <div class="gb_map_title_item">
                            <h4><?= $home_map_4['name'] ?></h4>
                        </div>
                        <div class="item_gt_map_right  wow slideInRight" data-wow-duration="1s">

                           <?= $home_map_4['content'] ?>

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