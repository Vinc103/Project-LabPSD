<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Project_PSD.View.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>
         @import url(animate.min.css);
 @import url(normalize.css);
 @import url(icomoon.css);
 @import url(css/font-awesome.min.css);
 @import url(meanmenu.css);
 @import url(owl.carousel.min.css);
 @import url(swiper.min.css);
 @import url(slick.css);
 @import url(jquery.fancybox.min.css);
 @import url(jquery-ui.css);
 @import url(nice-select.css);



 * {
     box-sizing: border-box !important;
     transition: ease all 0.5s;
 }

 html {
     scroll-behavior: smooth;
 }

 body {
     color: #666666;
     font-size: 14px;
     line-height: 1.80857;
     font-weight: normal;
     overflow-x: hidden;
     font-family: 'Open Sans', sans-serif;
      margin: auto;
      height: 100%;
 }

 a {
     color: #1f1f1f;
     text-decoration: none !important;
     outline: none !important;
     -webkit-transition: all .3s ease-in-out;
     -moz-transition: all .3s ease-in-out;
     -o-transition: all .3s ease-in-out;
     transition: all .3s ease-in-out;
 }

 h1,
 h2,
 h3,
 h4,
 h5,
 h6 {
     letter-spacing: 0;
     font-weight: normal;
     position: relative;
     padding: 0 0 10px 0;
     font-weight: normal;
     line-height: normal;
     color: #111111;
     margin: 0
 }

 h1 {
     font-size: 24px
 }

 h2 {
     font-size: 22px
 }

 h3 {
     font-size: 18px
 }

 h4 {
     font-size: 16px
 }

 h5 {
     font-size: 14px
 }

 h6 {
     font-size: 13px
 }

 *,
 *::after,
 *::before {
     -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
     box-sizing: border-box;
 }

 h1 a,
 h2 a,
 h3 a,
 h4 a,
 h5 a,
 h6 a {
     color: #212121;
     text-decoration: none!important;
     opacity: 1
 }

 button:focus {
     outline: none;
 }

 ul,
 li,
 ol {
     margin: 0px;
     padding: 0px;
     list-style: none;
 }

 p {
     margin: 20px;
     font-weight: 300;
     font-size: 15px;
     line-height: 24px;
 }

 a {
     color: #222222;
     text-decoration: none;
     outline: none !important;
 }

 a,
 .btn {
     text-decoration: none !important;
     outline: none !important;
     -webkit-transition: all .3s ease-in-out;
     -moz-transition: all .3s ease-in-out;
     -o-transition: all .3s ease-in-out;
     transition: all .3s ease-in-out;
 }

 img {
     max-width: 100%;
     height: auto;
 }

  :focus {
     outline: 0;
 }

 .paddind_bottom_0 {
     padding-bottom: 0 !important;
 }

 .btn-custom {
     margin-top: 20px;
     background-color: transparent !important;
     border: 2px solid #ddd;
     padding: 12px 40px;
     font-size: 16px;
 }

 .lead {
     font-size: 18px;
     line-height: 30px;
     color: #767676;
     margin: 0;
     padding: 0;
 }

 .form-control:focus {
     border-color: #ffffff !important;
     box-shadow: 0 0 0 .2rem rgba(255, 255, 255, .25);
 }

 .navbar-form input {
     border: none !important;
 }

 .badge {
     font-weight: 500;
 }

 blockquote {
     margin: 20px 0 20px;
     padding: 30px;
 }

 button {
     border: 0;
     margin: 0;
     padding: 0;
     cursor: pointer;
 }

 .full {
     float: left;
     width: 100%;
 }

 .layout_padding {
     padding-top: 90px;
     padding-bottom: 0px;
 }

 .padding_0 {
     padding: 0px;
 }


 /* header section start */

 .header_section {
     position:relative;
     width: 100%;
     float: left;
     background: linear-gradient(180deg, rgb(34, 193, 195) 0%, rgb(253, 187, 45) 100%);
     height: auto;
     background-size: 100%;
 }

 .bg-light {
     background-color: transparent!important;
 }

 .toggle_icon {
     padding: 10px 0px;
 }

 .nav-icon{
     top: 15px;
 }

 .sidenav {
     height: 100%;
     width: 0;
     position: fixed;
     z-index: 1;
     top: 0;
     left: 0;
     background-color: #111;
     overflow-x: hidden;
     transition: 0.5s;
     padding-top: 60px;
     text-align: center;
 }

 .sidenav a {
     padding: 4px 8px 4px 8px;
     text-decoration: none;
     font-size: 20px;
     color: #ffffff;
     display: block;
     transition: 0.3s;
 }

 .sidenav a:hover {
     color: #fc967e;
 }

 .sidenav .closebtn {
     position: absolute;
     top: 0;
     right: 25px;
     font-size: 36px;
     margin-left: 50px;
 }

 .sidenav {
     z-index: 99999999999999;
     background-color: rgb(0, 0, 0, 0.9);
 }

 @media screen and (max-width: 450px) {
     .sidenav {
         padding-top: 15px;
         background-color: rgb(0, 0, 0, 0.9);
     }
     .sidenav a {
         font-size: 18px;
     }
 }

 .login_text {
     margin: -30px 0px;
     float: right;
     width: 76px;
     left: 0px;
     top: 5px;
     
 }


 .login_text ul {
     margin: 10px;
     padding: 0px;
 }

 .login_text li {
     margin:0px;
     font-size: 18px;
     color: #ffffff;
     text-transform: uppercase;
     padding-left: 15px;
     float : right;
 }


 .login_text a {
     color: #ffffff;
 }

 .login_text a:hover {
     color: #ffffff;
 }

 

 .navbar-light .navbar-brand {
     color: rgba(0, 0, 0, .9);
     padding-left: 90px;
     z-index: 2;
 }


 /* header section end */


 /* banner section start */

 .banner_section {
     width: 100%;
     float: left;
     background-color: rgba(255, 255, 255, 1);
     height: auto;
     background-size: 100% 100%;
     background-repeat: no-repeat;
 }

 .banner_taital {
     width: 100%;
     margin: 0 auto;
     font-size: 100px;
     color: #000;
     line-height: 90px;
     padding-top: 20px;
     font-family: 'Great Vibes', cursive;
 }

 .banner_text {
     width: 100%;
     float: left;
     font-size: 16px;
     color: #000;
     margin: 20px 0px;
 }

 .read_bt {
     width: 170px;
     float: left;
     padding-top: 30px;
 }

 .read_bt a {
     width: 100%;
     float: left;
     font-size: 16px;
     color: #ffffff;
     background-color: #252525;
     text-align: center;
     padding: 10px 0px;
     border-radius: 5px;
     text-transform: uppercase;
 }

 .read_bt a:hover {
     color: #ffffff;
     background-color: #f5ddb6;
 }


 /* banner section end */


 /* product section start */

 .product_section {
     width: 100%;
     float: left;
     padding-bottom: 90px;
 }

 .product_taital {
     width: 100%;
     float: left;
     font-size: 40px;
     text-transform: uppercase;
     text-align: center;
     color: #232322;
     font-weight: bold;
 }

 .product_text {
     width: 100%;
     float: left;
     font-size: 16px;
     text-align: center;
     color: #50504f;
     margin: 0px;
 }

 .product_section_2 {
     width: 100%;
     float: left;
     padding-top: 30px;
 }

 .product_box {
     width: 100%;
     background-color: #ffffff;
     height: auto;
     border: 1px solid #7d7d7c;
     padding: 20px 0px 0px 0px;
     margin-top: 30px;
 }

 .bursh_text {
     width: 100%;
     font-size: 20px;
     text-align: center;
     color: #1a1c1b;
     font-weight: 600;
 }

 .text {
     width: 100%;
     font-size: 14px;
     text-align: center;
     color: #50504f;
     margin: 0px;
 }

 .image_1 {
     width: 100%;
     text-align: center;
     margin: 20px 0px;
     padding: 0px 20px;
     height: 200px;
 }

 .btn_main {
     width: 100%;
     display: flex;
     background-color: #000;
     height: auto;
     padding: 20px 10px 13px 10px;
 }

 .buy_bt {
     float: left;
     width: 100%;
 }

 .buy_bt ul {
     margin: 0px;
     padding: 0px;
 }

 .buy_bt li a {
     float: left;
     font-size: 12px;
     color: #252525;
     padding: 5px 10px;
     background-color: #ffffff;
     text-transform: uppercase;
     margin-right: 5px;
     border-radius: 40px;
 }

 .buy_bt li a:hover {
     background-color: #FDBB2D;
     color: #ffffff;
 }

 .buy_bt li.active a {
     background-color: #22C1C3;
     color: #fff;
 }

 .price_text {
     font-size: 16px;
     color: #fefefd;
     width: 42%;
     padding-top: 5px;
     text-align: right;
 }

 .seemore_bt {
     width: 170px;
     margin: 0 auto;
     padding-top: 60px;
 }

 .seemore_bt a {
     width: 100%;
     float: left;
     font-size: 16px;
     color: #ffffff;
     background-color: #252525;
     text-align: center;
     padding: 10px 0px;
     border-radius: 5px;
     font-weight: bold;
     text-transform: uppercase;
 }

 .seemore_bt a:hover {
     color: #ffffff;
     background-color: #FDBB2D;
 }


 /* product section end */


 /* about section start */

 .about_section {
     width: 100%;
     float: left;
     background-color: #22C1C3;
     height: auto;
     padding-bottom: 90px;
 }

 .about_section_main {
     width: 100%;
     float: left;
 }

 .about_taital_main {
     width: 100%;
     float: left;
     padding-top: 20px;
     padding-left: 100px;
 }

 .about_taital {
     width: 100%;
     float: left;
     font-size: 44px;
     color: #252525;
     font-weight: bold;
     text-transform: uppercase;
 }

 .about_text {
     width: 100%;
     float: left;
     font-size: 14px;
     color: ghostwhite;
     margin: 0px;
 }

 .image_3 {
     width: 100%;
     float: left;
     height: 430px;
 }

 .readmore_bt {
     width: 170px;
     float: left;
     padding-top: 30px;
 }

 .readmore_bt a {
     width: 100%;
     float: left;
     font-size: 16px;
     color: #ffffff;
     background-color: #363636;
     text-align: center;
     padding: 10px 0px;
     border-radius: 5px;
     font-weight: bold;
     text-transform: uppercase;
 }

 .readmore_bt a:hover {
     color: #50504f;
     background-color: #ffffff;
 }


 .about_section layout_padding{
     color: aquamarine;
 }
 /* about section end */



 /* contact section start */

 .contact_section {
     width: 100%;
     float: left;
 }

 .contact_taital {
     width: 100%;
     float: left;
     color: #1a1c1b;
     font-weight: bold;
     font-size: 40px;
     text-transform: uppercase;
 }

 .contact_text {
     width: 100%;
     float: left;
     color: #252525;
     margin: 0px;
     font-size: 16px;
 }

 .contact_main {
     width: 100%;
     display: flex;
     margin-top: 45px;
 }

 .contact_bt {
     width: 200px;
 }

 .contact_bt a {
     width: 100%;
     float: left;
     font-size: 16px;
     color: #ffffff;
     padding: 10px 30px;
     background-color: #252525;
     text-transform: uppercase;
     margin-right: 15px;
     border-radius: 5px;
     text-align: center;
 }

 .contact_bt a:hover {
     background-color: #252525;
     color: #ffffff;
 }

 .newletter_bt {
     width: 200px;
     margin-left: 20px;
 }

 .newletter_bt a {
     width: 100%;
     float: left;
     font-size: 16px;
     color: #252525;
     padding: 10px 30px;
     background-color: #fef4ec;
     text-transform: uppercase;
     margin-right: 15px;
     border-radius: 5px;
     text-align: center;
 }

 .newletter_bt a:hover {
     background-color: #252525;
     color: #ffffff;
 }

 .map_main {
     width: 100%;
     float: left;
     margin-top: 90px;
 }

 .contact_section_2 {
     width: 100%;
     float: left;
 }


 /* contact section start */


 /* footer section start */

 .footer_section {
     width: 100%;
     float: left;
     background-color: #252525;
     height: auto;
     background-size: 100%;
     padding-bottom: 30px;
 }

 .footer_logo {
     width: 100%;
     float: left;
     text-align: center;
     display: none;
 }

 .footer_logo_1 {
     width: 100%;
     float: left;
     text-align: center;
 }

 .address_bt {
     width: 100%;
     float: left;
     right: 100px
 }

 .address_bt ul {
     margin: 0px;
     padding: 0px;
 }

 .address_bt li {
     font-size: 16px;
     color: #ffffff;
     padding: 10px 0px 0px 0px;
     right: 100px;
     
 }

 .address_bt li a {
     color: #ffffff;

 }

 .address_bt li a:hover {
     color: #f5ddb6;
 }



 .padding_left10 {
     padding-left: 10px;
     
 }

 .address_text {
     font-size: 24px;
     color: #ffffff;
     text-transform: uppercase;
 }


 .ipsum_text {
     width: 65%;
     float: left;
     font-size: 14px;
     color: #ffffff;
     margin: 0px;
     padding-top: 10px;
 }

 .main {
     width: 54%;
     float: right;
 }



 /* footer section end */

 .copyright_section {
     width: 100%;
     float: left;
     background-color: #252525;
     height: auto;
 }

 .copyright_text {
     width: 100%;
     color: #ffffff;
     text-align: center;
     font-size: 16px;
     margin: 20px 0px;
 }

 .copyright_text a {
     color: #ffffff;
 }

 .copyright_text a:hover {
     color: #f5ddb6;
 }

 .margin_top90 {
     margin-top: 90px;
 }

 .banner_img{
     position: relative;
     left: 60px;
 }

 .logo{
     position: absolute;
     top: 2px;
     left: 615px;
     font-size: 40px;
     font-weight: 400;
     line-height: normal;
 }
 
 .bagicon{
     float: right;
     margin: 5px;
     top: 10px;
     width: 35px;
 }

 .col-sm-4{
     left: 390px;
     text-align:center;
 }

    </style>

        <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="stylesheet" type="text/css" href="../Css/bootstrap-grid.min.css"/>
  <!-- Responsive-->
  <link rel="stylesheet" href="../Css/responsive.css" />
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
  <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Open+Sans:400,700&display=swap&subset=latin-ext" rel="stylesheet" />
  <!-- owl stylesheets --> 
  <link rel="stylesheet" href="../Css/owl.carousel.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css " media="screen" />
  <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
  <title>Product Page</title>
   </head>
   <body>
      <!-- header section start -->
     <div class="header_section">
   <div class="container-fluid">
      <nav class="navbar navbar-light bg-light justify-content-between">
         <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="Home.aspx">Home</a>
            <a href="Product.aspx">Products</a>
            <a href="Profile.aspx">Profile</a>
         </div>
         <a class="logo" href="Home.aspx">MakeMeUpzz</a>
         <span onclick="openNav()"><img src="../Web Img/toggle-icon.png" class="toggle_icon"/></span>
         <a href="Transaction.aspx"><img src="../Web Img/Bag-icon.png" class="bagicon"/></a>
         <form class="form-inline ">

            <div class="login_text">   
            </div>
         </form>
      </nav>
   </div>
</div>
      <!-- header section end -->
      <!-- product section start -->
      <div class="product_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <h1 class="product_taital">Our Products</h1>
               </div>
            </div>
            <div class="product_section_2 layout_padding">
               <div class="row">
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">

                         <%--Nama product--%>
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-1.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-2.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-3.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-4.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-5.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-6.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-7.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-8.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-9.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-10.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-11.png" class="image_1"/>
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <div class="product_box">
                        <h4 class="bursh_text">Beauty Bursh</h4>
                        <p class="lorem_text">incididunt ut labore et dolore magna aliqua. Ut enim </p>
                        <img src="../Web Img/img-12.png" class="image_1" />
                        <div class="btn_main">
                           <div class="buy_bt">
                              <ul>
                                 <li class="active"><a href="#">Buy Now</a></li>
                                 <li><a href="#">Buy Now</a></li>
                              </ul>
                           </div>
                           <h3 class="price_text">Price $30</h3>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="seemore_bt"><a href="#">See More</a></div>
            </div>
         </div>
      </div>
      <!-- product section end -->
      <!-- footer section start -->
      <div class="footer_section layout_padding">
         <div class="container">
            <div class="footer_logo"><a href="index.html"><img src="../Web Img/footer-logo.png"/></a></div>
   
            
         </div>
      </div>
      <!-- footer section end -->
      <!-- copyright section start -->
      <div class="copyright_section">
         <div class="container">
            <p class="copyright_text">2024 All Rights Reserved. Design by <a href="Home.aspx">MakeMeUpzz</a></p>
         </div>
      </div>
      <!-- copyright section end -->
      
      <!-- javascript --> 
      <script src="js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>  
      <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
      <script>
         function openNav() {
           document.getElementById("mySidenav").style.width = "100%";
         }
         
         function closeNav() {
           document.getElementById("mySidenav").style.width = "0";
         }
      </script> 
   </body>
</html>
