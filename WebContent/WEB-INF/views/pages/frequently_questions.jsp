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
                            <li><a href="index.html">Home</a></li>
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
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id erat sagittis, faucibus metus malesuada, eleifend turpis. Mauris semper augue id nisl aliquet, a porta lectus mattis. Nulla at tortor augue. In eget enim diam. Donec gravida tortor sem, ac fermentum nibh rutrum sit amet. Nulla convallis mauris vitae congue consequat. Donec interdum nunc purus, vitae vulputate arcu fringilla quis. Vivamus iaculis euismod dui.</p>
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
                                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Mauris congue euismod purus at semper. Morbi et vulputate massa?<i class="fa fa-plus"></i><i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingTwo">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Donec mattis finibus elit ut tristique?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingThree">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        Aenean elit orci, efficitur quis nisl at, accumsan?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingfour">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseeight" aria-expanded="false" aria-controls="collapseeight">
                                        Pellentesque habitant morbi tristique senectus et netus?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseeight" class="collapse" aria-labelledby="headingfour" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingfive">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseseven" aria-expanded="false" aria-controls="collapseseven">
                                        Nam pellentesque aliquam metus?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseseven" class="collapse" aria-labelledby="headingfive" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingsix">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
                                        Aenean elit orci, efficitur quis nisl at?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsefour" class="collapse" aria-labelledby="headingsix" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingseven">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsefive" aria-expanded="false" aria-controls="collapsefive">
                                        Morbi gravida, nisi id fringilla ultricies, elit lorem?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsefive" class="collapse" aria-labelledby="headingseven" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingeight">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsesix" aria-expanded="false" aria-controls="collapsesix">
                                        Aenean elit orci, efficitur quis nisl at, accumsan?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsesix" class="collapse" aria-labelledby="headingeight" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
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