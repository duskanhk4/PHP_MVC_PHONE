<?php
        // B1: tim tong so record( so san pham trong database hanghoa1)
        $hh  = new hanghoa();
        // $count = $hh -> getCountRecode() // 19
        $result  = $hh->getHangHoaAll(); //$result la bang chua 19 sp
        $count = $result->rowCount(); //19

        // b2: cho limit tu cho dua vao thiet ke
        $limit = 8;
        $maloai = 0;
        // b3: tinh ra so trang va start
        $p = new page();
        // tinh ra tong so trang
        $page = $p->findPage($count, $limit); // 19,8 $page= 3
        // lay ra start
        $start = $p->findStart($limit); //8
        //b4: thiet lap trang hien tai
        $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
        ?>

        <?php
       $ac=1;
       if(isset($_GET['action']))
       {
           if($_GET['action']=='sanpham')
           {
               if(isset($_GET['act'])&& $_GET['act']=='sanpham')
               {
                   $ac=2;
               }
               else if(isset($_GET['act'])&& $_GET['act']=='timkiem')
               {
                   $ac=3;
               }
               else{
                   $ac=1;
               }
           }
          
       }
        // $act  = null;
        // if ($act == "timkiem") {
        //     $ac = 1;
        // } else if ($act == "filterproduct") {
        //     $ac = 2;
        // } else {
        //     $ac = 0;
        // }
        ?>

        <!-- =============== Popular =============== -->
        <section class="popular section" id="popular">
            <h2 class="section__title">NĐA SHOP</h2>
            <?php
            if ($ac == 3) {
                echo '<span class="section__subtitle">Sản Phẩm Tìm Kiếm</span>';
            } else {
                echo '<span class="section__subtitle">Tất Cả Sản Phẩm</span>';
            }
            ?>
            <div class="filter_pro flex">

                <form class="filter_pro flex" action="index.php?action=sanpham&act=filterproduct" method="post">
                    <select class="search_content" name="ValueFilterType" id="ValueFilter" onchange="this.form.submit()">
                        <option value="">Tìm kiếm theo loại:</option>

                        <?php
                        $result = $hh->getLoai();
                        while ($set = $result->fetch()) {
                            $tloai = $hh->getTenLoai($set['maloai']);
                            $tenloai = $tloai['tenloai'];
                        ?>
                            <option value="<?php echo $set['maloai'] ?>"><?php echo $tenloai ?></option>
                        <?php
                        }
                        ?>
                    </select>

                    <select class="search_content" name="ValueFilter" id="ValueFilter" onchange="this.form.submit()">
                        <option value="">Sắp xếp theo:</option>
                        <option value="name_up">Tên tăng dần A-Z</option>
                        <option value="name_down">Tên giảm dần Z-A</option>
                        <option value="price_up">Giá tăng dần</option>
                        <option value="price_down">Giá giảm dần</option>
                    </select>
                </form>
                <form class="search_content" action="index.php?action=sanpham&act=timkiem" method="post">
                    <i class='bx bx-search search_icon'></i>
                    <input type="text" class="search_product"  placeholder="" name="searchtxt">
                    <input class="input-group-text" style="height: 35px; " type="submit" id="btsearch" value="Tìm Kiếm "/>
                    
                </form>
            </div>

            <div class="popular__container container grid">
                <?php
                $hh = new hanghoa();
                if ($ac == 3) {
                    if (isset($_POST["searchtxt"])) {
                        $tk = $_POST["searchtxt"];
                        // echo $tk;
                        //    viec tim kiem model  lam
                        $result = $hh->getTimKiem($tk);
                    }
                } else if ($ac == 2) {
                    if (isset($_POST['ValueFilter']) || isset($_POST['ValueFilterType'])) {
                        $ValueFilter = $_POST['ValueFilter'];
                        $ValueFilterType = $_POST['ValueFilterType'];
                        $result = $hh->getFilterProduct($ValueFilter, $ValueFilterType);
                    }

                    // $ValueFilter = $_POST['ValueFilter'];
                    // $result = $hh->getFilterProductPage($ValueFilter, $start, $limit);
                    // $result = $hh->getHangHoaAllPage($start, $limit);
                } else {
                    $result = $hh->getHangHoaAllPage($start, $limit);
                }
                while ($set = $result->fetch()) {
                    $maloai = $set['maloai'];
                ?>

                    <form class="popular__card" action="index.php?action=sanpham&act=product_like" method="post">
                        <input type="hidden" name="mahh" value="<?php echo $set['mahh'] ?>" />
                        <a href="index.php?action=sanpham&act=detail&id=<?php echo $set['mahh'] ?>">
                            <img style="width:180px" src="<?php echo '../CuoiKi/Content/img/' . $set['hinh'] ?>" alt="" class="popular__img shop_img">

                            <h3 class="popular__name"><?php echo $set['tenhh']; ?></h3>
                            <span class="popular__price"><?php echo number_format($set['dongia']); ?> VND</span>
                        </a>
                    </form>

                <?php
                }
                ?>
            </div>

            <div class="paging">
                <?php
                // lui
                if ($current_page > 1 && $page > 1) {
                    echo "<a href='index.php?action=sanpham&page=" . ($current_page - 1) . "'>  <i class='bx bxs-chevrons-left btn_paging'></i></a>";
                }
                echo " <div class='num_page'>";
                for ($i = 0; $i <= $page; $i++) {
                ?>
                    <a class="btn_paging" href="index.php?action=sanpham&page=<?php echo $i + 1 ?>"><?php echo $i + 1 ?></a>

                <?php
                }
                
                echo " </div>";
                // lui
                if ($current_page <= $page && $page >= 1) {
                    echo "<a href='index.php?action=sanpham&page=" . ($current_page + 1) . " '><i class='bx bxs-chevrons-right btn_paging'></i></a>";
                }
                ?>


                <!-- <i class='bx bx-chevron-left btn_paging'></i>
              <i class='bx bx-chevron-right btn_paging'></i> -->

            </div>
        </section>