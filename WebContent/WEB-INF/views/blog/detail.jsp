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
    
    
    

    
      <div class="blog-area-wrapper">
        <!-- Breadcrumb Area Start Here -->
        <div class="breadcrumbs-area position-relative">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <div class="breadcrumb-content position-relative section-content">
                            <h3 class="title-3">Blog Details</h3>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/home/index.htm">Home</a></li>
                                <li>Blog</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End Here -->
        <!-- Blog Main Area Start Here -->
        <div class="blog-main-area">
            <div class="container container-default custom-area">
                <div class="row">
                    <div class="col-12 col-custom widget-mt">
                        <!-- Blog Details wrapper Area Start -->
                        <div class="blog-post-details">
                            <figure class="blog-post-thumb mb-5">
                                <img src="${pageContext.request.contextPath}/resources/assets/images/blog/blog1.jpg" alt="Blog Image">
                            </figure>
                            <section class="blog-post-wrapper product-summery">
                                <div class="section-content section-title">
                                    <h2 class="section-title-2 mb-3">DND Flower Shop Blog</h2>
                                    <p class="mb-4">Hoa l?? m??n qu?? v?? gi?? m?? thi??n nhi??n ???? d??nh t???ng cho con ng?????i. M???i lo??i hoa mang m???t v??? ?????p v?? s???c th??i ri??ng, ch??nh v?? v???y m?? ng?????i th?????ng hoa c?? th??? g???i g???m t??m t?? t??nh c???m c???a m??nh v??o ch???u hoa m???t c??ch tinh t???, ?? nh???.</p>
                                    <blockquote class="blockquote mb-4">
                                        <p>Shop Hoa DND s??? l?? c???u n???i ????? k???t n???i nh???ng t??nh c???m th??n y??u c???a b???n, l??m v???ng b???n m???i th??m giao b???ng h???u t???o d???ng ?????ng c???p v?? phong c??ch kh??c bi???t trong cu???c s???ng v?? c??ng vi???c hay ????? chia ng???t s??? b??i, g???i g???m t??m t?? ...</p>
                                    </blockquote>
                                    <p class="mb-5">H??y li??n h??? v???i ch??ng t??i, v???n s??? ho??n to??n y??n t??m ????? ch??ng t??i c?? th??? thay b???n mang ?????n ni???m vui cho nh???ng ng?????i th??n y??u, b???n b??, ?????i t??c,???c???a b???n. C??ng ch??? m???t thao t??c b???n ???? c?? m???t b?? hoa ?????y m??u s???c c??ng nh???ng th??ng ??i???p ng???t ng??o d??nh t???ng ng?????i th??n, nh???ng ng?????i ?????c bi???t.
										?????n v???i ch??ng t??i b???n s??? th???t s??? an t??m v???i th??i ????? ph???c v??? nhi???t t??nh c???a ?????i ng?? nh??n vi??n n??ng ?????ng, nhi???t t??nh v?? nhi???u n??m kinh nghi???m trong ng??nh, h??? s??? t?? v???n cho qu?? kh??ch h??ng nh???ng b?? hoa, nh???ng m??n qu?? ph?? h???p v?? ?? ngh??a.
										-	D???ch v??? t???t.
										-	Hoa lu??n t????i m???i
										-	Th???m m???, s??ng t???o.
										-	Mang t??nh ngh??? thu???t ?????c ????o
										H?????ng ?????n s??? chuy??n nghi???p trong t???t c??? c??c quy tr??nh l?? c??ng vi???c m?? ch??ng t??i ?????t l??n h??ng ?????u nh???m ??em l???i s??? h??i l??ng t???t nh???t cho b???n.
                                     </p>
                                </div>
                                <div class="share-article">
                                    <span class="left-side">
                                <a href="#"> <i class="fa fa-long-arrow-left"></i> Older Post</a>
                            </span>
                                    <h6 class="text-uppercase">Share this article</h6>
                                    <span class="right-side">
                            <a href="#">Newer Post <i class="fa fa-long-arrow-right"></i></a>
                            </span>
                                </div>
                                <div class="social-share">
                                    <a href="#"><i class="fa fa-facebook-square facebook-color"></i></a>
                                    <a href="#"><i class="fa fa-twitter-square twitter-color"></i></a>
                                    <a href="#"><i class="fa fa-linkedin-square linkedin-color"></i></a>
                                    <a href="#"><i class="fa fa-pinterest-square pinterest-color"></i></a>
                                </div>
                                <div class="comment-area-wrapper mt-5">
                                    <div class="comments-view-area">
                                        <h3 class="mb-5">3 Comments</h3>
                                        <div class="single-comment-wrap mb-4 d-flex">
                                            <figure class="author-thumb">
                                                <a href="#">
                                                    <img src="${pageContext.request.contextPath}/resources/assets/images/testimonial/Duy1.jpg" alt="Author">
                                                </a>
                                            </figure>
                                            <div class="comments-info">
                                       			<p class="mb-2">Nh???ng ch??ng trai n??y ???? ho??n to??n xu???t s???c. Ch??? ????? ho??n h???o v?? t???t nh???t l?? b???n c?? nhi???u t??y ch???n ????? ch???n! Nh??m h??? tr??? t???t nh???t t??? ??????tr?????c ?????n nay! Ph???n h???i r???t nhanh! C??m ??n r???t nhi???u! T??i khuy??n b???n n??n ch???n n??i n??y v?? nh???ng con ng?????i ??? ????y!</p>
                                                <div class="comment-footer d-flex justify-content-between">
                                                    <a href="#" class="author"><strong>Duy</strong> - July 30, 2021</a>
                                                    <a href="#" class="btn-reply"><i class="fa fa-reply"></i> Reply</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-comment-wrap mb-4 comment-reply d-flex">
                                            <figure class="author-thumb">
                                                <a href="#">
                                                    <img src="${pageContext.request.contextPath}/resources/assets/images/icon/author2.png" alt="Author">
                                                </a>
                                            </figure>
                                            <div class="comments-info">
                                                <p class="mb-2">Ch??n Th??nh c???m ??n nh???ng g??p ?? b??? ?? c???a b???n. Shop ch???c ch???n s??? ng??y c??ng ho??n thi???n h??n n???a.</p>
                                                <div class="comment-footer d-flex justify-content-between">
                                                    <a href="#" class="author"><strong>Admin</strong> - July 30, 2021</a> <a href="#" class="btn-reply"><i class="fa fa-reply"></i> Reply</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-comment-wrap mb-4 d-flex">
                                            <figure class="author-thumb">
                                                <a href="#">
                                                    <img src="${pageContext.request.contextPath}/resources/assets/images/testimonial/Minh.jpg" alt="Author">
                                                </a>
                                            </figure>
                                            <div class="comments-info">
                                        		<p class="mb-2">M??nh ???? mua hoa ??? ????y h??n 4 n??m r???i. T??? trang tr?? ?????n ????? t????i c???a hoa ch??a bao gi??? shop l??m m??nh th???t v???ng. C??m ??n c??c b???n ???? lu??n ??em ?????n d???ch v??? t???t cho kh??ch h??ng! M??nh s??? ti???p t???c ???ng h??? c??c b???n!</p>
                                                <div class="comment-footer d-flex justify-content-between">
                                                    <a href="#" class="author"><strong>Minh</strong> - July 30, 2021</a>
                                                    <a href="#" class="btn-reply"><i class="fa fa-reply"></i> Reply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <!-- Blog Details Wrapper Area End -->
                        <!-- Blog Comments Area Start Here -->
                        <form action="#">
                            <div class="comment-box">
                                <h3>Leave A Comment</h3>
                                <div class="row">
                                    <div class="col-12 col-custom">
                                        <div class="input-item mt-4 mb-4">
                                            <textarea cols="30" rows="5" name="comment" class="border rounded-0 w-100 custom-textarea input-area" placeholder="Message"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-custom">
                                        <div class="input-item mb-4">
                                            <input class="border rounded-0 w-100 input-area name" type="text" placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-custom">
                                        <div class="input-item mb-4">
                                            <input class="border rounded-0 w-100 input-area email" type="text" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="col-12 col-custom mt-40">
                                        <button type="submit" class="btn flosun-button primary-btn rounded-0 w-100">Post comment</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <!-- Blog Comments Area End Here -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog Main Area End Here -->
    </div>
    <!-- Blog Area Wrapper End Here -->
    
    
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
	      var item=lis[2];
	      item.className += " active";
	   
	</script>
</body>
</html>