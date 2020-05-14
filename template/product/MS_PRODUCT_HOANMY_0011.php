<?php 
    $action = new action();
    $action_product = new action_product();                                                                                
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];
        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang[$nameColIdProductCat_productCatLanguage],$lang);
        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,9,$slug);
    }else{
        $rows = $action->getList($nameTable_product,'','',$nameColId_product,'desc',$trang,9,'san-pham');
        
    }
    $_SESSION['sidebar'] = 'productCat';
?>  
<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
<input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productcat($slug, $lang);
?>
<div class="gb-sanpham-body">
    <div class="row">
        <div class="wp-content-product-category">
            <?php 
                foreach ($rows['data'] as $row) {
                    $rowLang1 = $action_product->getProductLangDetail_byId($row['product_id'],$lang);
                    $row1 = $action_product->getProductDetail_byId($row['product_id'],$lang); 
            ?>
                <div class="col-md-4 col-sm-6">
                    <div class="item-list-product-home">
                        <div class="img-item-product-home">
                            <a href="/<?= $rowLang1['friendly_url'] ?>">
                                <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                            </a>
                             <div class="info-hover-cart">
                                <?php include DIR_CART . "MS_CART_HOANMY_0001.php"; ?>
                                <a href="/<?= $rowLang1['friendly_url'] ?>" title=""><i class="fa fa-align-center"></i></a>
                            </div>
                        </div>
                        <div class="info-product-home">
                            <h2 class="product-home-name">
                                <a href="/<?= $rowLang1['friendly_url'] ?>" title=""><?= $rowLang1['lang_product_name'] ?></a>
                            </h2>
                            <h3><?= $rowLang1['lang_product_des'] ?></h3>
                            <p class="price-product-home">Giá: <?= number_format($row1['product_price']) ?> ₫</p>     
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
    <?php include DIR_PAGINATION. "MS_PAGINATION_HOANMy_0001.php";?>
</div>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
              window.location = '/gio-hang';
          }else{
              location.reload();
          }  
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>

