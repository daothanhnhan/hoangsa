<?php 
    $landing_vechungtoi = $action->getDetail('page', 'page_id', 35);
    $home_anh = $action->getList('servicecat', '', '', 'servicecat_id', 'desc', '', '4', '');
?>
<link rel="stylesheet" href="./plugin/animsition/css/animate.css">
<div id="gioithieuhoangsa" class="gb-introhome_hoanmy">

    <div class="container">

        <div class="row">

            <div class="col-sm-6">

                <div class="gb-introhome_hoanmy-left  wow slideInLeft"  data-wow-duration="1s">
                    <div class="row">
                        <?php
                        $d = 0; 
                        foreach ($home_anh as $item) { 
                            $d++;
                        ?>
                        <div class="col-md-6 clear-padding-left clear-padding-right">
                            <div class="introhome_hoanmy_left_item">
                                <img src="/images/<?= $item['servicecat_img'] ?>">
                            </div>
                        </div>
                        <?php 
                            if ($d == 2) {
                                echo '</div><div class="row">';
                            }
                        } ?>
                    </div>
                </div>

            </div>

            <div class="col-sm-6">

                <div class="gb-introhome_hoanmy-right  wow slideInRight"  data-wow-duration="1s">

                    <h2>Về chúng tôi</h2>

                    <?= $landing_vechungtoi['page_des'] ?>

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