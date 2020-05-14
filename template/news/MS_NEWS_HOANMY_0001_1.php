<?php   
    $action_news = new action_news();
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];//echo 'tuan';die;                    
        $rowCatLang = $action_news->getNewsCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_news->getNewsCatDetail_byId($rowCatLang[$nameColIdNewsCat_newsCatLanguage],$lang);
        if (newsCatPageHasSub) {
            $rows = $action_news->getNewsList_byMultiLevel_orderNewsId($rowCat[$nameColId_newsCat],'desc',$trang,9,$slug);
        } else {
            $rows = $action_news->getNewsCat_byNewsCatIdParentHighest($rowCat[$nameColId_newsCat],'desc');//var_dump($rows);die;
        }        
    }
    else $rows = $action->getList($nameTable_news,'','',$nameColId_news,'desc',$trang,6,'tin-tuc'); 
    // var_dump($rows);die;
?>
<div class="gb-tintucmoinhat_hoanmy">
    <div class="container">
        <div class="gb-tintucmoinhat_hoanmy-title">
            <h2><?= $title ?></h2>
            <img src="/images/line.PNG" alt="" class="img-responsive">
        </div>
        <div class="row">
                <?php 
                $d = 0;
                foreach ($rows['data'] as $item) {
                    $d++;
                    $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
                ?>
                <div class="col-sm-4">
                    <div class="gb-tintucmoinhat_hoanmy-item  wow slideInUp"  data-wow-duration="1s">
                        <div class="item-img_hoanmy">
                            <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>
                            <div class="item-time_honamy">
                                <i class="fa fa-calendar"></i><?= substr($item['news_created_date'], 0, 10) ?>
                            </div>
                        </div>
                        <div class="item-text_hoanmy">
                            <h3><a href="/<?= $item['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h3>
                            <div class="item-author-comment_hoanmy">
                                <ul>
                                    <li class="post-author"><i class="fa fa-user"></i>By <a href="javascript:;">John</a> </li>
                                    <li class="post-comment"><i class="fa fa-comments"></i> <a href="javascript:;">0 comment</a> </li>
                                </ul>
                            </div>
                            <p>
                                <?= $rowLang['lang_news_des'] ?>
                            </p>
                        </div>
                    </div>
                </div>
            <?php 
            if ($d%3==0) {
                echo '<hr style="width:100%;border:0;" />';
            }
            } ?>
        </div>
        <div><?= $rows['paging'] ?></div>
    </div>
</div>