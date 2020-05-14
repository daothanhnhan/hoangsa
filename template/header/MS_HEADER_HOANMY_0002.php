     <!-- Landing page edit by PTD -->
     <link href="/plugin/css/creative.css" rel="stylesheet">
     <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
       <div class="ptd_header_logo">
         <a href="#page-top"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="" class="img-responsive"></a>
       </div>
       <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
         data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
         aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarResponsive">
         <?php
                $list_menu = $menu->getListMainMenu_byOrderASC();
                $menu->showMenu_byMultiLevel_mainMenuOnion($list_menu,0,$lang,0);
            ?>
       </div>
       <div id="ttwmenu" class="multi_language">
         <ul>
           <li>
             <a href="#" title="">
               <img src="/images/ptd_vn.jpg" class="ptd_lgue">VN
             </a>
             <ul>
               <li class="translation-icons">
                 <a href="javascript:void(0)" title="" data-placement="0">
                   <img src="/images/ptd_vn.jpg" class=" ptd_lgue">VN
                 </a>
               </li>
               <li class="translation-icons">
                 <a href="javascript:void(0)" title="" data-placement="1">
                   <img src="/images/ptd_en.jpg" class="ptd_lgue">EN
                 </a>
               </li>
             </ul>
           </li>
         </ul>
       </div>
     </nav>
     <!-- JS landing page edit by PTD -->
     <!-- Bootstrap core JavaScript -->
     <script src="/plugin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

     <!-- Plugin JavaScript -->
     <script src="/plugin/vendor/jquery-easing/jquery.easing.min.js"></script>
     <script src="/plugin/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

     <!-- Custom scripts for this template -->
     <script src="/plugin/js/creative.min.js"></script>