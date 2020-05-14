<link rel="stylesheet" href="./plugin/animsition/css/animate.css">

<div id="lienhehoangsa" class="gb-lienhe">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="gb-lienhe-title">
                    <h2>Liên hệ với chúng tôi</h2>
                    <div class="uniderline_hoanmy"></div>
                </div>
                
            </div>
            <div class="col-md-6">
                <?php include DIR_EMAIL."MS_EMAIL_HOANMY_0001.php";?>
            </div>
            <div class="col-md-6">
                <div class="box_thongtin_lienhe">
                    <div class="thongtin_lienhe_title">
                        <h3>HOÀNG SA – AMC Co..Ltd</h3>
                    </div><hr>
                    <div class="thongtin_lienhe_addres">
                        <strong><i class="fa fa-map-marker"></i>Nhà hàng Hoàng Sa</strong>
                        <p>
                            <span>Địa chỉ: </span>
                            <?= $rowConfig['content_home1'] ?>
                        </p>
                        <hr>
                        <strong><i class="fa fa-map-marker"></i>Chợ đêm Hoàng Sa</strong>
                        <p>
                            <span>Địa chỉ: </span>
                            <?= $rowConfig['content_home4'] ?>
                        </p><hr>
                        <strong><i class="fa fa-map-marker"></i>Hải sản Vịnh Xanh</strong>
                        <p>
                            <span>Địa chỉ: </span>
                            <?= $rowConfig['content_home7'] ?>
                        </p><hr>
                        <strong><i class="fa fa-map-marker"></i>Hệ thống cafe CCCP</strong>
                        <p>
                            <span>Địa chỉ: </span>
                            <?= $rowConfig['content_home8'] ?>
                        </p><hr>
                        <p>
                            <i class="fa fa-envelope"></i>
                            <span>Email: <?= $rowConfig['content_home2'] ?></span>
                            
                        </p><hr>
                        <p>
                             <i class="fa fa-facebook"></i>
                            <span>Fanpage: <a href="<?= $rowConfig['facebook'] ?>" title=""><?= $rowConfig['facebook'] ?></a></span>
                            
                        </p>
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