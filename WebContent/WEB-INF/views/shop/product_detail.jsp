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
                        <h3 class="title-3">Product Details</h3>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/home/index.htm">Home</a></li>
                            <li>Product Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->
    <!-- Single Product Main Area Start -->
    <div class="single-product-main-area">
        <div class="container container-default custom-area">
            <div class="row">
                <div class="col-lg-5 offset-lg-0 col-md-8 offset-md-2 col-custom">
                    <div class="product-details-img">
                        <div class="single-product-img swiper-container gallery-top popup-gallery">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <a class="w-100" href="${pageContext.request.contextPath}/resources/images/flower/${flower.image}">
                                        <img class="w-100" src="${pageContext.request.contextPath}/resources/images/flower/${flower.image}" alt="Product">
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a class="w-100" href="${pageContext.request.contextPath}/resources/images/flower/${flower.image}">
                                        <img class="w-100" src="${pageContext.request.contextPath}/resources/images/flower/${flower.image}" alt="Product">
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a class="w-100" href="${pageContext.request.contextPath}/resources/images/flower/${flower.image}">
                                        <img class="w-100" src="${pageContext.request.contextPath}/resources/images/flower/${flower.image}" alt="Product">
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a class="w-100" href="${pageContext.request.contextPath}/resources/images/flower/${flower.image}">
                                        <img class="w-100" src="${pageContext.request.contextPath}/resources/images/flower/${flower.image}" alt="Product">
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a class="w-100" href="${pageContext.request.contextPath}/resources/images/flower/${flower.image}">
                                        <img class="w-100" src="${pageContext.request.contextPath}/resources/images/flower/${flower.image}" alt="Product">
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a class="w-100" href="${pageContext.request.contextPath}/resources/images/flower/${flower.image}">
                                        <img class="w-100" src="${pageContext.request.contextPath}/resources/images/flower/${flower.image}" alt="Product">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <%-- <div class="single-product-thumb swiper-container gallery-thumbs">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/flower/2.jpg" alt="Product">
                                </div>
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/flower/2.jpg" alt="Product">
                                </div>
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/flower/2.jpg" alt="Product">
                                </div>
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/flower/2.jpg" alt="Product">
                                </div>
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/flower/2.jpg" alt="Product">
                                </div>
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/flower/2.jpg" alt="Product">
                                </div>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-button-next swiper-button-white"><i class="lnr lnr-arrow-right"></i></div>
                            <div class="swiper-button-prev swiper-button-white"><i class="lnr lnr-arrow-left"></i></div>
                        </div> --%>
                    </div>
                </div>
                <div class="col-lg-7 col-custom">
                    <div class="product-summery position-relative">
                      <form:form method="GET">
                        <div class="product-head mb-3">
                            <h2 class="product-title">${flower.name}</h2>
                        </div>
                        <div class="price-box mb-2">
                            <c:if test="${flower.discount==0 || flower.discount==null }">
		                    	<span class="regular-price "><fmt:formatNumber  pattern="###,### VND" value="${flower.price}" type="currency" /></span>
		                    </c:if>
		                    <c:if test="${flower.discount!=0 && flower.discount!=null }">
		                    	<span class="regular-price "><fmt:formatNumber pattern="###,### VND"  value="${flower.price - (flower.price*flower.discount)/100 }" type="currency" /> </span>
		                    	<del><span class="old-price"><fmt:formatNumber pattern="###,### VND"  value="${flower.price}" type="currency" /></span></del>
		                    </c:if>
                        </div>
                        <div class="product-rating mb-3">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <div class="sku mb-3">
                            <span>${flower.views} views</span>
                        </div>
                        <p class="desc-content mb-5">${flower.contents}</p>
                        <div class="quantity-with_btn mb-5">
                            <div class="quantity">
                                <div class="cart-plus-minus">
                                    <input class="cart-plus-minus-box" value="1" name="qtt" type="text">
                                    <div class="dec qtybutton">-</div>
                                    <div class="inc qtybutton">+</div>
                                </div>
                            </div>
                            <div class="add-to_cart">
                                <c:if test="${userLogin==null}">
	                                  <a class="btn product-cart button-icon flosun-button dark-btn" href="${pageContext.request.contextPath}/pages/login.htm">Add to cart</a>
				                </c:if>
	                            <c:if test="${userLogin!=null}">
				                    <input class="btn flosun-button primary-btn rounded-0 black-btn" type="submit" formaction="${pageContext.request.contextPath}/shop/cart/insert/${flower.id}.htm" value="Add to cart">
				                </c:if>
                                <a class="btn flosun-button secondary-btn secondary-border rounded-0">Add to wishlist</a>
                            </div>
                        </div>
                        <div class="social-share mb-4">
                            <span>Share :</span>
                            <a href="#"><i class="fa fa-facebook-square facebook-color"></i></a>
                            <a href="#"><i class="fa fa-twitter-square twitter-color"></i></a>
                            <a href="#"><i class="fa fa-linkedin-square linkedin-color"></i></a>
                            <a href="#"><i class="fa fa-pinterest-square pinterest-color"></i></a>
                        </div>
                        <div class="payment">
                            <a href="#"><img class="border" src="${pageContext.request.contextPath}/resources/assets/images/payment/payment-icon.jpg" alt="Payment"></a>
                        </div>
                      </form:form>
                    </div>
                </div>
            </div>
            <div class="row mt-no-text">
                <div class="col-lg-12 col-custom">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active text-uppercase" id="home-tab" data-toggle="tab" href="#connect-1" role="tab" aria-selected="true">Description</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" id="profile-tab" data-toggle="tab" href="#connect-2" role="tab" aria-selected="false">Reviews</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" id="contact-tab" data-toggle="tab" href="#connect-3" role="tab" aria-selected="false">Shipping Policy</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" id="review-tab" data-toggle="tab" href="#connect-4" role="tab" aria-selected="false">Size Chart</a>
                        </li>
                    </ul>
                    <div class="tab-content mb-text" id="myTabContent">
                        <div class="tab-pane fade show active" id="connect-1" role="tabpanel" aria-labelledby="home-tab">
                            <div class="desc-content">
                                <p class="mb-3">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>
                                <p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="connect-2" role="tabpanel" aria-labelledby="profile-tab">
                            <!-- Start Single Content -->
                            <div class="product_tab_content  border p-3">
                                <div class="review_address_inner">
                                    <!-- Start Single Review -->
                                    <div class="pro_review mb-5">
                                        <div class="review_thumb">
                                            <img alt="review images" src="assets/images/review/1.jpg">
                                        </div>
                                        <div class="review_details">
                                            <div class="review_info mb-2">
                                                <div class="product-rating mb-2">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <h5>Admin - <span> December 19, 2020</span></h5>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in viverra ex, vitae vestibulum arcu. Duis sollicitudin metus sed lorem commodo, eu dapibus libero interdum. Morbi convallis viverra erat, et aliquet orci congue vel. Integer in odio enim. Pellentesque in dignissim leo. Vivamus varius ex sit amet quam tincidunt iaculis.</p>
                                        </div>
                                    </div>
                                    <!-- End Single Review -->
                                </div>
                                <!-- Start RAting Area -->
                                <div class="rating_wrap">
                                    <h5 class="rating-title-1 font-weight-bold mb-2">Add a review </h5>
                                    <p class="mb-2">Your email address will not be published. Required fields are marked *</p>
                                    <h6 class="rating-title-2 mb-2">Your Rating</h6>
                                    <div class="rating_list mb-4">
                                        <div class="review_info">
                                            <div class="product-rating mb-3">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End RAting Area -->
                                <div class="comments-area comments-reply-area">
                                    <div class="row">
                                        <div class="col-lg-12 col-custom">
                                            <form action="#" class="comment-form-area">
                                                <div class="row comment-input">
                                                    <div class="col-md-6 col-custom comment-form-author mb-3">
                                                        <label>Name <span class="required">*</span></label>
                                                        <input type="text" required="required" name="Name">
                                                    </div>
                                                    <div class="col-md-6 col-custom comment-form-emai mb-3">
                                                        <label>Email <span class="required">*</span></label>
                                                        <input type="text" required="required" name="email">
                                                    </div>
                                                </div>
                                                <div class="comment-form-comment mb-3">
                                                    <label>Comment</label>
                                                    <textarea class="comment-notes" required="required"></textarea>
                                                </div>
                                                <div class="comment-form-submit">
                                                    <button class="btn flosun-button secondary-btn rounded-0">Submit</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Content -->
                        </div>
                        <div class="tab-pane fade" id="connect-3" role="tabpanel" aria-labelledby="contact-tab">
                            <div class="shipping-policy">
                                <h4 class="title-3 mb-4">Shipping policy for our store</h4>
                                <p class="desc-content mb-2">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate</p>
                                <ul class="policy-list mb-2">
                                    <li>1-2 business days (Typically by end of day)</li>
                                    <li><a href="#">30 days money back guaranty</a></li>
                                    <li>24/7 live support</li>
                                    <li>odio dignissim qui blandit praesent</li>
                                    <li>luptatum zzril delenit augue duis dolore</li>
                                    <li>te feugait nulla facilisi.</li>
                                </ul>
                                <p class="desc-content mb-2">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum</p>
                                <p class="desc-content mb-2">claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per</p>
                                <p class="desc-content mb-2">seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="connect-4" role="tabpanel" aria-labelledby="review-tab">
                            <div class="size-tab table-responsive-lg">
                                <h4 class="title-3 mb-4">Size Chart</h4>
                                <table class="table border">
                                    <tbody>
                                        <tr>
                                            <td class="cun-name"><span>UK</span></td>
                                            <td>18</td>
                                            <td>20</td>
                                            <td>22</td>
                                            <td>24</td>
                                            <td>26</td>
                                        </tr>
                                        <tr>
                                            <td class="cun-name"><span>European</span></td>
                                            <td>46</td>
                                            <td>48</td>
                                            <td>50</td>
                                            <td>52</td>
                                            <td>54</td>
                                        </tr>
                                        <tr>
                                            <td class="cun-name"><span>usa</span></td>
                                            <td>14</td>
                                            <td>16</td>
                                            <td>18</td>
                                            <td>20</td>
                                            <td>22</td>
                                        </tr>
                                        <tr>
                                            <td class="cun-name"><span>Australia</span></td>
                                            <td>28</td>
                                            <td>10</td>
                                            <td>12</td>
                                            <td>14</td>
                                            <td>16</td>
                                        </tr>
                                        <tr>
                                            <td class="cun-name"><span>Canada</span></td>
                                            <td>24</td>
                                            <td>18</td>
                                            <td>14</td>
                                            <td>42</td>
                                            <td>36</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Single Product Main Area End -->
    <!--Product Area Start-->
    <div class="product-area mt-text-3">
        <div class="container custom-area-2 overflow-hidden">
            <div class="row">
                <!--Section Title Start-->
                <div class="col-12 col-custom">
                    <div class="section-title text-center mb-30">
                        <span class="section-title-1">The Most Trendy</span>
                        <h3 class="section-title-3">Featured Products</h3>
                    </div>
                </div>
                <!--Section Title End-->
            </div>
            <div class="row product-row">
                <div class="col-12 col-custom">
                    <div class="product-slider swiper-container anime-element-multi">
                        <div class="swiper-wrapper">
                            <div class="single-item swiper-slide">
                                <!--Single Product Start-->
                                <div class="single-product position-relative mb-30">
                                    <div class="product-image">
                                        <a class="d-block" href="product-details.html">
                                            <img src="assets/images/product/1.jpg" alt="" class="product-image-1 w-100">
                                            <img src="assets/images/product/2.jpg" alt="" class="product-image-2 position-absolute w-100">
                                        </a>
                                        <span class="onsale">Sale!</span>
                                        <div class="add-action d-flex flex-column position-absolute">
                                            <a href="compare.html" title="Compare">
                                                <i class="lnr lnr-sync" data-toggle="tooltip" data-placement="left" title="Compare"></i>
                                            </a>
                                            <a href="wishlist.html" title="Add To Wishlist">
                                                <i class="lnr lnr-heart" data-toggle="tooltip" data-placement="left" title="Wishlist"></i>
                                            </a>
                                            <a href="#exampleModalCenter" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter">
                                                <i class="lnr lnr-eye" data-toggle="tooltip" data-placement="left" title="Quick View"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <div class="product-title">
                                            <h4 class="title-2"> <a href="product-details.html">Hyacinth white stick</a></h4>
                                        </div>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price ">$80.00</span>
                                            <span class="old-price"><del>$90.00</del></span>
                                        </div>
                                        <a href="cart.html" class="btn product-cart">Add to Cart</a>
                                    </div>
                                </div>
                                <!--Single Product End-->
                            </div>
                            <div class="single-item swiper-slide">
                                <!--Single Product Start-->
                                <div class="single-product position-relative mb-30">
                                    <div class="product-image">
                                        <a class="d-block" href="product-details.html">
                                            <img src="assets/images/product/5.jpg" alt="" class="product-image-1 w-100">
                                            <img src="assets/images/product/6.jpg" alt="" class="product-image-2 position-absolute w-100">
                                        </a>
                                        <div class="add-action d-flex flex-column position-absolute">
                                            <a href="compare.html" title="Compare">
                                                <i class="lnr lnr-sync" data-toggle="tooltip" data-placement="left" title="Compare"></i>
                                            </a>
                                            <a href="wishlist.html" title="Add To Wishlist">
                                                <i class="lnr lnr-heart" data-toggle="tooltip" data-placement="left" title="Wishlist"></i>
                                            </a>
                                            <a href="#exampleModalCenter" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter">
                                                <i class="lnr lnr-eye" data-toggle="tooltip" data-placement="left" title="Quick View"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <div class="product-title">
                                            <h4 class="title-2"> <a href="product-details.html">Rose bouquet white</a></h4>
                                        </div>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price ">$80.00</span>
                                            <span class="old-price"><del>$90.00</del></span>
                                        </div>
                                        <a href="cart.html" class="btn product-cart">Add to Cart</a>
                                    </div>
                                </div>
                                <!--Single Product End-->
                            </div>
                            <div class="single-item swiper-slide">
                                <!--Single Product Start-->
                                <div class="single-product position-relative mb-30">
                                    <div class="product-image">
                                        <a class="d-block" href="product-details.html">
                                            <img src="assets/images/product/7.jpg" alt="" class="product-image-1 w-100">
                                            <img src="assets/images/product/8.jpg" alt="" class="product-image-2 position-absolute w-100">
                                        </a>
                                        <div class="add-action d-flex flex-column position-absolute">
                                            <a href="compare.html" title="Compare">
                                                <i class="lnr lnr-sync" data-toggle="tooltip" data-placement="left" title="Compare"></i>
                                            </a>
                                            <a href="wishlist.html" title="Add To Wishlist">
                                                <i class="lnr lnr-heart" data-toggle="tooltip" data-placement="left" title="Wishlist"></i>
                                            </a>
                                            <a href="#exampleModalCenter" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter">
                                                <i class="lnr lnr-eye" data-toggle="tooltip" data-placement="left" title="Quick View"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <div class="product-title">
                                            <h4 class="title-2"> <a href="product-details.html">Orchid flower red stick</a></h4>
                                        </div>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price ">$80.00</span>
                                            <span class="old-price"><del>$90.00</del></span>
                                        </div>
                                        <a href="cart.html" class="btn product-cart">Add to Cart</a>
                                    </div>
                                </div>
                                <!--Single Product End-->
                            </div>
                            <div class="single-item swiper-slide">
                                <!--Single Product Start-->
                                <div class="single-product position-relative mb-30">
                                    <div class="product-image">
                                        <a class="d-block" href="product-details.html">
                                            <img src="assets/images/product/3.jpg" alt="" class="product-image-1 w-100">
                                            <img src="assets/images/product/4.jpg" alt="" class="product-image-2 position-absolute w-100">
                                        </a>
                                        <div class="add-action d-flex flex-column position-absolute">
                                            <a href="compare.html" title="Compare">
                                                <i class="lnr lnr-sync" data-toggle="tooltip" data-placement="left" title="Compare"></i>
                                            </a>
                                            <a href="wishlist.html" title="Add To Wishlist">
                                                <i class="lnr lnr-heart" data-toggle="tooltip" data-placement="left" title="Wishlist"></i>
                                            </a>
                                            <a href="#exampleModalCenter" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter">
                                                <i class="lnr lnr-eye" data-toggle="tooltip" data-placement="left" title="Quick View"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <div class="product-title">
                                            <h4 class="title-2"> <a href="product-details.html">Blossom bouquet flower</a></h4>
                                        </div>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price ">$80.00</span>
                                            <span class="old-price"><del>$90.00</del></span>
                                        </div>
                                        <a href="cart.html" class="btn product-cart">Add to Cart</a>
                                    </div>
                                </div>
                                <!--Single Product End-->
                            </div>
                            <div class="single-item swiper-slide">
                                <!--Single Product Start-->
                                <div class="single-product position-relative mb-30">
                                    <div class="product-image">
                                        <a class="d-block" href="product-details.html">
                                            <img src="assets/images/product/8.jpg" alt="" class="product-image-1 w-100">
                                            <img src="assets/images/product/7.jpg" alt="" class="product-image-2 position-absolute w-100">
                                        </a>
                                        <div class="add-action d-flex flex-column position-absolute">
                                            <a href="compare.html" title="Compare">
                                                <i class="lnr lnr-sync" data-toggle="tooltip" data-placement="left" title="Compare"></i>
                                            </a>
                                            <a href="wishlist.html" title="Add To Wishlist">
                                                <i class="lnr lnr-heart" data-toggle="tooltip" data-placement="left" title="Wishlist"></i>
                                            </a>
                                            <a href="#exampleModalCenter" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter">
                                                <i class="lnr lnr-eye" data-toggle="tooltip" data-placement="left" title="Quick View"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <div class="product-title">
                                            <h4 class="title-2"> <a href="product-details.html">Jasmine flowers white</a></h4>
                                        </div>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price ">$80.00</span>
                                            <span class="old-price"><del>$90.00</del></span>
                                        </div>
                                        <a href="cart.html" class="btn product-cart">Add to Cart</a>
                                    </div>
                                </div>
                                <!--Single Product End-->
                            </div>
                            <div class="single-item swiper-slide">
                                <!--Single Product Start-->
                                <div class="single-product position-relative mb-30">
                                    <div class="product-image">
                                        <a class="d-block" href="product-details.html">
                                            <img src="assets/images/product/2.jpg" alt="" class="product-image-1 w-100">
                                            <img src="assets/images/product/1.jpg" alt="" class="product-image-2 position-absolute w-100">
                                        </a>
                                        <div class="add-action d-flex flex-column position-absolute">
                                            <a href="compare.html" title="Compare">
                                                <i class="lnr lnr-sync" data-toggle="tooltip" data-placement="left" title="Compare"></i>
                                            </a>
                                            <a href="wishlist.html" title="Add To Wishlist">
                                                <i class="lnr lnr-heart" data-toggle="tooltip" data-placement="left" title="Wishlist"></i>
                                            </a>
                                            <a href="#exampleModalCenter" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter">
                                                <i class="lnr lnr-eye" data-toggle="tooltip" data-placement="left" title="Quick View"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <div class="product-title">
                                            <h4 class="title-2"> <a href="product-details.html">Flowers daisy pink stick</a></h4>
                                        </div>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price ">$80.00</span>
                                            <span class="old-price"><del>$90.00</del></span>
                                        </div>
                                        <a href="cart.html" class="btn product-cart">Add to Cart</a>
                                    </div>
                                </div>
                                <!--Single Product End-->
                            </div>
                        </div>
                        <!-- Slider pagination -->
                        <div class="swiper-pagination default-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Product Area End-->
    
    
    <%@include file="/WEB-INF/views/include/footer.jsp"%>
    
    <!-- Modal -->
    <div class="modal flosun-modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <button type="button" class="close close-button" data-dismiss="modal" aria-label="Close">
                    <span class="close-icon" aria-hidden="true">x</span>
                </button>
                <div class="modal-body">
                    <div class="container-fluid custom-area">
                        <div class="row">
                            <div class="col-md-6 col-custom">
                                <div class="modal-product-img">
                                    <a class="w-100" href="#">
                                        <img class="w-100" src="assets/images/product/large-size/1.jpg" alt="Product">
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 col-custom">
                                <div class="modal-product">
                                    <div class="product-content">
                                        <div class="product-title">
                                            <h4 class="title">Product dummy name</h4>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price ">$80.00</span>
                                            <span class="old-price"><del>$90.00</del></span>
                                        </div>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <span>1 Review</span>
                                        </div>
                                        <p class="desc-content">we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame bel...</p>
                                        <form class="d-flex flex-column w-100" action="#">
                                            <div class="form-group">
                                                <select class="form-control nice-select w-100">
                                                    <option>S</option>
                                                    <option>M</option>
                                                    <option>L</option>
                                                    <option>XL</option>
                                                    <option>XXL</option>
                                                </select>
                                            </div>
                                        </form>
                                        <div class="quantity-with-btn">
                                            <div class="quantity">
                                                <div class="cart-plus-minus">
                                                    <input class="cart-plus-minus-box" value="0" type="text">
                                                    <div class="dec qtybutton">-</div>
                                                    <div class="inc qtybutton">+</div>
                                                    <div class="dec qtybutton"><i class="fa fa-minus"></i></div>
                                                    <div class="inc qtybutton"><i class="fa fa-plus"></i></div>
                                                </div>
                                            </div>
                                            <div class="add-to_btn">
                                                <a class="btn product-cart button-icon flosun-button dark-btn" href="cart.html">Add to cart</a>
                                                <a class="btn flosun-button secondary-btn rounded-0" href="wishlist.html">Add to wishlist</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
	      var item=lis[1];
	      item.className += " active";
	   
	</script>
</body>
</html>