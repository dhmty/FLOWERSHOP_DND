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
                        <h3 class="title-3">FAQ</h3>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/home/index.htm">Home</a></li>
                            <li>Faq</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->
    <!--faq area start-->
    <div class="faq-area">
        <!-- Faq Content Start  -->
        <div class="faq_content_area mt-text-6">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="faq_content_wrapper">
                            <h4>Below are frequently asked questions, you may find the answer for yourself</h4>
                            <p>Shop Hoa DND s??? l?? c???u n???i ????? k???t n???i nh???ng t??nh c???m th??n y??u c???a b???n, l??m v???ng b???n m???i th??m giao b???ng h???u t???o d???ng ?????ng c???p v?? phong c??ch kh??c bi???t trong cu???c s???ng v?? c??ng vi???c hay ????? chia ng???t s??? b??i, g???i g???m t??m t?? ...</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Faq Content End -->
        <!--Accordion area-->
        <div class="accordion_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div id="accordion" class="card__accordion">
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingOne">
                                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">L??m  sao ????? mua ???????c s???n ph???m t??? DND Flower Shop?<i class="fa fa-plus"></i><i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>  Qu?? kh??ch c?? th??? ?????t h??ng theo c??c c??ch sau: <br>
												 + Mua h??ng tr???c ti???p tr??n website.<br>
												 + ?????t h??ng qua Hotline(24/24): 19001000 <br>
												 + ?????t h??ng tr???c ti???p t???i shop DND: contact@dndshop.com
										</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingTwo">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										Th???i gian ?????t h??ng tr?????c khi giao hoa l?? bao nhi??u th?? t???t nh???t?                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>
											Trong t???t c??? tr?????ng h???p, ch??ng t??i ?????u khuy???n kh??ch b???n n??n ?????t hoa tr?????c 24h, ??i???u n??y gi??p ch??ng t??i c?? th??? gi??p b???n ???????c t???t h??n. Tuy nhi??n, m???t s??? tr?????ng h???p ?????t xu???t quan tr???ng v?? nh???ng m???u hoa ????n gi???n ch??ng t??i c??ng v???n c?? th??? ch???p nh???n c??c ????n h??ng tr?????c 1 ?????n 2 gi???. Ch??ng t??i s??? c??? g???ng h???t s???c trong kh??? n??ng cho ph??p ????? c?? th??? gi??p b???n.                                        
											</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingThree">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
										DND s??? x??c nh???n ????n h??ng nh?? th??? n??o?                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                   		 <p>Khi ?????t h??ng th??nh c??ng qu?? kh??ch s??? nh???n ???????c th??ng b??o N???i dung chi ti???t ????n ?????t h??nh th??nh c??ng qua email qu?? kh??ch ???? ????ng k?? tr??n website. Sau khi nh???n ???????c ????n ?????t h??ng ch??ng t??i s??? g???i ??i???n tho???i ho???c g???i email x??c nh???n ????n ?????t h??ng v???i qu?? kh??ch.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingfour">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseeight" aria-expanded="false" aria-controls="collapseeight">
											 S???n ph???m c???a DND c?? ?????m b???o ch???t l?????ng v?? ????ng m???u kh??ng?                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseeight" class="collapse" aria-labelledby="headingfour" data-parent="#accordion">
                                    <div class="card-body">
	                                    <p>T???t c??? c??c ?????i l?? v?? nh?? cung c???p s???n ph???m,d???ch v??? ???? ??????c ch???n l???c v?? c?? cam k???t v???i DND shop ????? ph???c v??? c??c s???n ph???m, d???ch v??? t???t nh???t ?????n qu?? kh??ch. B???n c??? y??n t??m nh??! N???u c?? ??i???u g?? kh??ng h??i l??ng, b???n h??y ph???n h???i cho ch??ng t??i t???i t???ng ????i ho???c email: contact@dndflower.com . Ch??ng t??i lu??n l???ng nghe v?? ghi nh???n nh???ng ?? ki???n ????ng g??p c???a kh??ch h??ng.
	                                    	<br>Trong tr?????ng h???p thi???u nguy??n li???u v??? hoa, ch??ng t??i s??? ch??? ?????ng li??n h??? v???i qu?? kh??ch ????? th??ng b??o v?? t?? v???n ph????ng ??n thay th??? t???t nh???t.
	                                    </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingfive">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseseven" aria-expanded="false" aria-controls="collapseseven">
										C??c ????n h??ng ??? t???nh th?? ph?? v???n chuy???n ( ph?? ship ) ???????c t??nh nh?? th??? n??o ?                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseseven" class="collapse" aria-labelledby="headingfive" data-parent="#accordion">
                                    <div class="card-body">
                                   		 <p>?????i v???i c??c ????n h??ng ??? t???nh, n???u ?????a ??i???m giao hoa n???m trong ph???m vi b??n k??nh 5km t??nh t??? trung t??m c???a t???nh th?? kh??ch h??ng s??? kh??ng c???n tr??? th??m ph?? ship. ?????i v???i c??c ????n h??ng n???m ngo??i ph???m vi b??n k??nh 5km, ch??ng t??i nh??? chi nh??nh x??c nh???n l???i ph?? ship, th???i gian giao hoa c??ng nh?? ch???t l?????ng hoa trong qu?? tr??nh giao nh???n v?? s??? tr??? l???i l???i cho qu?? kh??ch trong th???i gian th?????ng 15 ph??t.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingsix">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
										 T??i c?? nh???t thi???t ph???i ????ng k?? tr??? th??nh kh??ch h??ng c???a DND m???i ???????c mua h??ng hay kh??ng?                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsefour" class="collapse" aria-labelledby="headingsix" data-parent="#accordion">
                                    <div class="card-body">
										<p>T??y v??o t??nh ch???t ri??ng t?? b???n kh??ng c???n ph???i ????ng k?? (c?? th??? nh??? ng?????i kh??c ????ng k??). Tuy nhi??n, vi???c ????ng k?? gi??p ch??ng t??i c?? nh???ng th??ng tin ch??m s??c b???n t???t h??n nh??: g???i ch????ng tr??nh khuy???n m??i, t???ng qu??...</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingseven">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsefive" aria-expanded="false" aria-controls="collapsefive">
                                        Tr?????ng h???p b???n qu??n m???t kh???u  
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsefive" class="collapse" aria-labelledby="headingseven" data-parent="#accordion">
                                    <div class="card-body">
										<p>????? l???y l???i m???t kh???u c???a m??nh b???n b???m Qu??n M???t Kh???u khi ????ng nh???p v?? l??m theo h?????ng d???n</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingeight">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsesix" aria-expanded="false" aria-controls="collapsesix">
                                        T??i mu???n gi???i thi???u b???n b?? v?? ng?????i th??n tham gia mua h??ng t???i website c???a DND shop th?? l??m th??? n??o?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsesix" class="collapse" aria-labelledby="headingeight" data-parent="#accordion">
                                    <div class="card-body">
										<p>B???n c?? th??? g???i ???????ng link website c???a ch??ng t??i cho h??? qua Email, Facebook, Yahoo ho???c c??c m???ng x?? h???i kh??c. Ch??ng t??i lu??n tr??n tr???ng s??? y??u m???n v?? tin t?????ng c???a c??c b???n.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Accordion area end-->
    </div>
    <!--faq area End-->
    
    
    <%@include file="/WEB-INF/views/include/footer.jsp"%>
    
    
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
	      var item=lis[3];
	      item.className += " active";
	   
	</script>
</body>
</html>