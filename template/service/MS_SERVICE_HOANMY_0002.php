<?php echo $a; ?>
<?php
    $home_page_1 = $action->getDetail('page', 'page_id', 36);
    $home_page_2 = $action->getDetail('page', 'page_id', 39);
    $home_page_3 = $action->getDetail('page', 'page_id', 40);
    $home_page_4 = $action->getDetail('page', 'page_id', 41);
?>
<link rel="stylesheet" href="/plugin/animsition/css/animate.css">
<div id="dichvuhoangsa" class="gb-home-product gb-home-product-category gb-dichvu_hoanmy">
    <div class="container">
        <div class="gb-dichvu_hoanmy-title">
                <h2>Hệ thống dịch vụ</h2>
            </div>
        <div class="row">  
            <div class="col-md-6 wow slideInLeft" data-wow-duration="1s">
                <div class="product-home-category">
                    <div class="product-home-category-text">
                        <a href="/<?= $home_page_1['friendly_url'] ?>" title="">
                            <img class="img-responsive success" src="/images/<?= $home_page_1['page_img'] ?>" alt="<?= $home_page_1['page_name'] ?>">
                        </a>
                        <div class="landing-text-content">
                            <p class="text_ring1"><span><?= $home_page_1['page_name'] ?></span></p>
                            <p class="sv_text_other">
                                <?= $home_page_1['page_des'] ?>
                            </p>
                            <p class="text_responsive text_ringlink"><a href="/<?= $home_page_1['friendly_url'] ?>">Xem chi tiết</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 wow slideInRight" data-wow-duration="1s">
                <div class="product-home-category">
                    <div class="product-home-category-text">
                        <a href="/<?= $home_page_2['friendly_url'] ?>" title="">
                            <img class="img-responsive success" src="/images/<?= $home_page_2['page_img'] ?>" alt="<?= $home_page_2['page_name'] ?>">
                        </a>
                        <div class="landing-text-content">
                            <p class="text_ring1"><span><?= $home_page_2['page_name'] ?></span></p>
                            <p class="sv_text_other">
                                <?= $home_page_2['page_des'] ?>
                            </p>
                            <p class="text_responsive text_ringlink"><a href="/<?= $home_page_2['friendly_url'] ?>">Xem chi tiết</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 wow slideInUp" data-wow-duration="1s">
                <div class="product-home-category">
                    <div class="product-home-category-text">
                        <a href="/<?= $home_page_3['friendly_url'] ?>" title="">
                            <img class="img-responsive success" src="/images/<?= $home_page_3['page_img'] ?>" alt="<?= $home_page_3['page_name'] ?>">
                        </a>
                        <div class="landing-text-content">
                            <p class="text_ring1"><span><?= $home_page_3['page_name'] ?></span></p>
                            <p class="sv_text_other">
                                <?= $home_page_3['page_des'] ?>
                            </p>
                            <p class="text_responsive text_ringlink"><a href="/<?= $home_page_3['friendly_url'] ?>">Xem chi tiết</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 wow slideInUp" data-wow-duration="1s">
                <div class="product-home-category">
                    <div class="product-home-category-text">
                        <a href="/<?= $home_page_4['friendly_url'] ?>">
                            <img class="img-responsive success" src="/images/<?= $home_page_4['page_img'] ?>" alt="<?= $home_page_4['page_name'] ?>">
                        </a>
                        <div class="landing-text-content">
                            <p class="text_ring1"><span><?= $home_page_4['page_name'] ?></span></p>
                            <p class="sv_text_other">
                                <?= $home_page_4['page_des'] ?>
                            </p>
                            <p class="text_responsive text_ringlink"><a href="/<?= $home_page_4['friendly_url'] ?>">Xem chi tiết</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/plugin/waypoint/jquery.waypoints.min.js"></script>
<script src="/plugin/animsition/js/wow.min.js"></script>
<script>
    $(document).ready(function () {
        new WOW().init();
    });
</script>