<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
  <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>DND Flower Shop</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/resources/assets/images/icon.ico' />">

    <!-- CSS
	============================================ -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/vendor/bootstrap.min.css' />">
    
    <!-- Test -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/images/icon.ico' />">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/vendor/font.awesome.min.css' />">
    <!-- Linear Icons CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/vendor/linearicons.min.css' />">
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/plugins/swiper-bundle.min.css' />">
    
    <!-- Animation CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/plugins/animate.min.css' />">
    <!-- Jquery ui CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/plugins/jquery-ui.min.css' />">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/plugins/nice-select.min.css' />">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/plugins/magnific-popup.css' />">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/style.css' />">
    
	<base href="${pageContext.servletContext.contextPath }" />
</head>

<body>
	<%@include file="/WEB-INF/views/include/header.jsp"%>
    
        <!-- Breadcrumb Area Start Here -->
    <div class="breadcrumbs-area position-relative">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="breadcrumb-content position-relative section-content">
                        <h3 class="title-3">About Us</h3>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/home/index.htm">Home</a></li>
                            <li>About Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->
    <!-- About Area Start Here -->
    <div class="about-area mt-no-text">
        <div class="container custom-area">
            <div class="row mb-30 align-items-center">
                <div class="col-md-6 col-custom">
                    <div class="collection-content">
                        <div class="section-title text-left">
                            <span class="section-title-1">Flowers for the</span>
                            <h3 class="section-title-3 pb-0">Birthday & Gifts</h3>
                        </div>
                        <div class="desc-content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                        </div>
                        <a href="${pageContext.request.contextPath}/shop/man.htm" class="btn flosun-button secondary-btn rounded-0">Shop Collection</a>
                    </div>
                </div>
                <div class="col-md-6 col-custom">
                    <!--Single Banner Area Start-->
                    <div class="single-banner hover-style">
                        <div class="banner-img">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/resources/assets/images/about/1.jpg" alt="About Image">
                                <div class="overlay-1"></div>
                            </a>
                        </div>
                    </div>
                    <!--Single Banner Area End-->
                </div>
            </div>
            <div class="row align-items-center">
                <div class="col-md-6 col-custom order-2 order-md-1">
                    <!--Single Banner Area Start-->
                    <div class="single-banner hover-style">
                        <div class="banner-img">
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/resources/assets/images/about/2.jpg" alt="About Image">
                                <div class="overlay-1"></div>
                            </a>
                        </div>
                    </div>
                    <!--Single Banner Area End-->
                </div>
                <div class="col-md-6 col-custom order-1 order-md-2">
                    <div class="collection-content">
                        <div class="section-title text-left">
                            <span class="section-title-1">Flowers for the</span>
                            <h3 class="section-title-3 pb-0">Wedding day</h3>
                        </div>
                        <div class="desc-content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                        </div>
                        <a href="${pageContext.request.contextPath}/shop/man.htm" class="btn flosun-button secondary-btn rounded-0">Shop Collection</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About Us Area End Here -->
    <!-- History Area Start Here -->
    <div class="our-history-area gray-bg pt-5 mt-text-3">
        <div class="our-history-area">
            <div class="container custom-area">
                <div class="row">
                    <!--Section Title Start-->
                    <div class="col-12 col-custom">
                        <div class="section-title text-center mb-30">
                            <span class="section-title-1">A little story about us</span>
                            <h2 class="section-title-large">Our History</h2>
                        </div>
                    </div>
                    <!--Section Title End-->
                </div>
                <div class="row">
                    <div class="col-lg-8 ml-auto mr-auto">
                        <div class="history-area-content text-center border-0">
                            <p><strong>DND Flower Shop: From Three Student of PTITHCM</strong></p>
                            <p>Hoa l?? m??n qu?? v?? gi?? m?? thi??n nhi??n ???? d??nh t???ng cho con ng?????i. M???i lo??i hoa mang m???t v??? ?????p v?? s???c th??i ri??ng, ch??nh v?? v???y m?? ng?????i th?????ng hoa c?? th??? g???i g???m t??m t?? t??nh c???m c???a m??nh v??o ch???u hoa m???t c??ch tinh t???, ?? nh???.
							B??n c???nh ????, m???i lo??i hoa c??n mang m???t ?? ngh??a ?????c bi???t, hi???u ???????c n?? s??? gi??p b???n tr??nh kh???i nh???ng b???i r???i kh??ng n??i n??n l???i tr?????c m???t t??nh y??u e ???p, tr?????c m???t t??nh b???n b???n l??u, m???t l??ng bi???t ??n v?? b??? b???n ?????i v???i cha v???i m???, hay ch??? ????n gi???n l?? m???t l???i c???m ??n s??u s???c, ch??n th??nh???
							Shop Hoa DND s??? l?? c???u n???i ????? k???t n???i nh???ng t??nh c???m th??n y??u c???a b???n, l??m v???ng b???n m???i th??m giao b???ng h???u t???o d???ng ?????ng c???p v?? phong c??ch kh??c bi???t trong cu???c s???ng v?? c??ng vi???c hay ????? chia ng???t s??? b??i, g???i g???m t??m t?? ...
							H??y li??n h??? v???i ch??ng t??i, v???n s??? ho??n to??n y??n t??m ????? ch??ng t??i c?? th??? thay b???n mang ?????n ni???m vui cho nh???ng ng?????i th??n y??u, b???n b??, ?????i t??c,???c???a b???n. C??ng ch??? m???t thao t??c b???n ???? c?? m???t b?? hoa ?????y m??u s???c c??ng nh???ng th??ng ??i???p ng???t ng??o d??nh t???ng ng?????i th??n, nh???ng ng?????i ?????c bi???t.
							?????n v???i ch??ng t??i b???n s??? th???t s??? an t??m v???i th??i ????? ph???c v??? nhi???t t??nh c???a ?????i ng?? nh??n vi??n n??ng ?????ng, nhi???t t??nh v?? nhi???u n??m kinh nghi???m trong ng??nh, h??? s??? t?? v???n cho qu?? kh??ch h??ng nh???ng b?? hoa, nh???ng m??n qu?? ph?? h???p v?? ?? ngh??a.
							H?????ng ?????n s??? chuy??n nghi???p trong t???t c??? c??c quy tr??nh l?? c??ng vi???c m?? ch??ng t??i ?????t l??n h??ng ?????u nh???m ??em l???i s??? h??i l??ng t???t nh???t cho b???n.
							</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Feature History Area End Here -->
    <!-- Team Member Area Start Here -->
    <div class="team-member-wrapper mt-text-3">
        <div class="container custom-area">
            <div class="row">
                <div class="col-lg-12 col-custom">
                    <div class="section-title text-center">
                        <span class="section-title-1">The guys behind the curtains</span>
                        <h2 class="section-title-2">a team of DND Flower Shop</h2>
                    </div>
                </div>
            </div>
            <div class="row ht-team-member-style-two pt-40">
                <div class="col-lg-4 col-md-4 col-custom">
                    <div class="grid-item">
                        <div class="ht-team-member">
                            <div class="team-image">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/resources/assets/images/team/1.jpg" alt="">
                                <div class="social-networks">
                                    <div class="inner">
                                        <a href="#"><i class="fa fa-facebook"></i>
                                        </a>
                                        <a href="#"><i class="fa fa-twitter"></i>
                                        </a>
                                        <a href="#"><i class="fa fa-instagram"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-info text-center">
                                <h5 class="name">????? V??n Nam </h5>
                                <div class="position">N18DCCN128</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-custom">
                    <div class="grid-item">
                        <div class="ht-team-member">
                            <div class="team-image">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/resources/assets/images/team/2.jpg" alt="">
                                <div class="social-networks">
                                    <div class="inner">
                                        <a href="#"><i class="fa fa-facebook"></i>
                                        </a>
                                        <a href="#"><i class="fa fa-twitter"></i>
                                        </a>
                                        <a href="#"><i class="fa fa-instagram"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-info text-center">
                                <h5 class="name">Nguy???n Minh ??oan </h5>
                                <div class="position">N18DCCN044</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-custom">
                    <div class="grid-item">
                        <div class="ht-team-member">
                            <div class="team-image">
                                <img class="img-fluid" src="${pageContext.request.contextPath}/resources/assets/images/team/3.jpg" alt="">
                                <div class="social-networks">
                                    <div class="inner">
                                        <a href="#"><i class="fa fa-facebook"></i>
                                        </a>
                                        <a href="#"><i class="fa fa-twitter"></i>
                                        </a>
                                        <a href="#"><i class="fa fa-instagram"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-info text-center">
                                <h5 class="name">Tr???n Anh ?????c </h5>
                                <div class="position">N18DCCN047</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team Member Area End Here -->
    <!-- Brand Logo Area Start Here -->
    <div class="brand-logo-area gray-bg pt-text-3 pb-text-4 mt-text-2">
        <div class="container custom-area">
            <div class="row">
                <div class="col-12 col-custom">
                    <div class="brand-logo-carousel swiper-container intro11-carousel-wrap arrow-style-3">
                        <div class="swiper-wrapper">
                            <div class="single-brand swiper-slide">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/brand/1.png" alt="Brand Logo">
                                </a>
                            </div>
                            <div class="single-brand swiper-slide">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/brand/2.png" alt="Brand Logo">
                                </a>
                            </div>
                            <div class="single-brand swiper-slide">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/brand/3.png" alt="Brand Logo">
                                </a>
                            </div>
                            <div class="single-brand swiper-slide">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/brand/4.png" alt="Brand Logo">
                                </a>
                            </div>
                            <div class="single-brand swiper-slide">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/assets/images/brand/5.png" alt="Brand Logo">
                                </a>
                            </div>
                        </div>
                        <!-- Slider Navigation -->
                        <div class="home1-slider-prev swiper-button-prev main-slider-nav"><i class="lnr lnr-arrow-left"></i></div>
                        <div class="home1-slider-next swiper-button-next main-slider-nav"><i class="lnr lnr-arrow-right"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Brand Logo Area End Here -->
    
    
    
    <%@include file="/WEB-INF/views/include/footer.jsp"%>
    
     <!-- Scroll to Top Start -->
    <a class="scroll-to-top" href="#">
        <i class="lnr lnr-arrow-up"></i>
    </a>
    <!-- Scroll to Top End -->
    
    
     <!-- JS
============================================ -->


    <!-- Modernizer JS -->
    <script src="<c:url value='/resources/assets/js/vendor/modernizr-3.7.1.min.js' />"></script>
    <!-- jQuery JS -->
    <script src="<c:url value='/resources/assets/js/vendor/jquery-3.5.1.min.js' />"></script>
    <!-- Bootstrap JS -->
    <script src="<c:url value='/resources/assets/js/vendor/bootstrap.bundle.min.js' />"></script>

    <!-- Swiper Slider JS -->
    <script src="<c:url value='/resources/assets/js/plugins/swiper-bundle.min.js' />"></script>
    <!-- nice select JS -->
    <script src="<c:url value='/resources/assets/js/plugins/nice-select.min.js' />"></script>
    <!-- Ajaxchimpt js -->
    <script src="<c:url value='/resources/assets/js/plugins/jquery.ajaxchimp.min.js' />"></script>
    <!-- Jquery Ui js -->
    <script src="<c:url value='/resources/assets/js/plugins/jquery-ui.min.js' />"></script>
    <!-- Jquery Countdown js -->
    <script src="<c:url value='/resources/assets/js/plugins/jquery.countdown.min.js' />"></script>
    <!-- jquery magnific popup js -->
    <script src="<c:url value='/resources/assets/js/plugins/jquery.magnific-popup.min.js' />"></script>

    <!-- Main JS -->
    <script src="<c:url value='/resources/assets/js/main.js' />"></script>
    
    <script>
	    // Get all <li>
	    var lis = document.getElementById('navbar_main').querySelectorAll('li a');
	   /*  lis.forEach((item, index) => {
	    	
	    	item.className += " active";
	        console.log({ index, item })
	      }); */
	      var item=lis[lis.length-2];
	      item.className += " active";
	   
	</script>
</body>
</html>