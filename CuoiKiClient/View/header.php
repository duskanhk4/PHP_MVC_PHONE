<header style="background-color:black; color:white" class="header" id="header">
    <nav  class="nav container">
        <a s href="index.php#" class="nav__logo">
       NĐA SHOP
        </a>
        <div class="nav__menu" id="nav-menu">
            <ul class="nav__list " style="margin: 30px;">
                <li class="nav__item">
                    <a href="index.php?action=main" class="nav__link active-link">Trang chủ</a>
                </li>
            </ul>

            <!-- Close button -->
            <div class="nav__close" id="nav-close">
                <i class='bx bx-x'></i>
            </div>

            <img src="./Content/img/leaf-branch-4.png" alt="" class="nav__img-1">
            <img src="./Content/img/leaf-branch-3.png" alt="" class="nav__img-2">
        </div>

        <div class="nav__buttons">
            <!-- <a href="index.php?action=dangnhap" class="login nav__link">Login</a> -->

            <!-- Shopping -->
           
            <!-- Theme Change button -->
            <!-- <i class='bx bx-moon' id="theme-button"></i> -->
            <?php
            if (isset($_SESSION['makh']) && isset($_SESSION['tenkh'])) :
                $name = $_SESSION['tenkh'];
            ?>
                <a href="index.php?action=dangnhap&act=logout" class="login nav__link">Đăng xuất</a>
                <span><?php echo "Welcome" . $name; ?></span>
            <?php
            else :
                echo '<a href="index.php?action=dangnhap" class="login nav__link">Đăng nhập</a>
                ';
            ?>
            <?php
            endif;
            ?>
            <!-- Toogle Button -->
            <div class="nav__toggle" id="nav-toggle">
                <i class='bx bx-grid-alt'></i>
            </div>
            <i class='bx bx-shopping-bag' id="cart-button" onclick="location.href='index.php?action=giohang'"></i>
        </div>
    </nav>
</header>

<?php
