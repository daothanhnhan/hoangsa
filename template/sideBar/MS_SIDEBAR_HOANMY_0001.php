<?php 
    $siderbar_product = $action_product->getProductList_byMultiLevel_orderProductId('','desc',1,99,'')['data'];
?>
<div class="side_bar">
    <aside class="widget">
        <h3 class="widget-title-tintuc">Sản phẩm</h3>
        <div class="widget-content">
            <ul class="list_category">
                <?php foreach ($siderbar_product as $item) { ?>
                <li class="item_category"><a href="/<?= $item['friendly_url'] ?>"><?= $item['product_name'] ?></a></li>
                <?php } ?>
                <!-- <li class="item_category"><a href="banh-mi-que-xuc-xich">Bánh mì que xúc xích</a></li>
                <li class="item_category"><a href="thit-xong-khoi-le-gourmet">Thịt xông khói Le Gourmet</a></li>
                <li class="item_category"><a href="sot-trung-ga-tuoi">Sốt Trứng Gà Tươi</a></li>
                <li class="item_category"><a href="pate-cha-bong-dam-bong">Pate - Chà bông - Dăm bông</a></li>
                <li class="item_category"><a href="banh-mi-que-nem-nuong">Bánh mì que nem nướng</a></li>
                <li class="item_category"><a href="banh-mi-nhan-rau-cu">Bánh mì nhân rau củ</a></li> -->
            </ul>
        </div>
    </aside>
</div>