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
                        <h3 class="title-3">My Account</h3>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li>My Account</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->
    <!-- my account wrapper start -->
    <div class="my-account-wrapper mt-no-text">
        <div class="container container-default-2 custom-area">
            <div class="row">
                <div class="col-lg-12 col-custom">
                    <!-- My Account Page Start -->
                    <div class="myaccount-page-wrapper">
                        <!-- My Account Tab Menu Start -->
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-custom">
                                <div class="myaccount-tab-menu nav" role="tablist">
                                    <a href="#dashboad" class="active" data-toggle="tab"><i class="fa fa-dashboard"></i>
                                        Dashboard</a>
                                    <a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i> Orders</a>
                                    <a href="#download" data-toggle="tab"><i class="fa fa-cloud-download"></i> Download</a>
                                    <a href="#payment-method" data-toggle="tab"><i class="fa fa-credit-card"></i> Payment Method</a>
                                    <a href="#address-edit" data-toggle="tab"><i class="fa fa-map-marker"></i> address</a>
                                    <a href="#account-info" data-toggle="tab"><i class="fa fa-user"></i> Account Details</a>
                                    <a href="${pageContext.request.contextPath}/pages/logout.htm"><i class="fa fa-sign-out"></i> Logout</a>
                                </div>
                            </div>
                            <!-- My Account Tab Menu End -->

                            <!-- My Account Tab Content Start -->
                            <div class="col-lg-9 col-md-8 col-custom">
                                <div class="tab-content" id="myaccountContent">
                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3>Dashboard</h3>
                                            <div class="welcome">
                                                <p>Hello, <strong>${userLogin.name}</strong> (If Not <strong>${userLogin.name} !</strong><a href="${pageContext.request.contextPath}/pages/logout.htm" class="logout"> Logout</a>)</p>
                                            </div>
                                            <p class="mb-0">From your account dashboard. you can easily check & view your recent orders, manage your shipping and billing addresses and edit your password and account details.</p>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->

                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="orders" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3>Orders</h3>
                                            <div class="myaccount-table table-responsive text-center">
                                                <table class="table table-bordered">
                                                    <thead class="thead-light">
                                                        <tr>
                                                            <th>Order</th>
                                                            <th>Date</th>
                                                            <th>Status</th>
                                                            <th>Total</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>Aug 22, 2018</td>
                                                            <td>Pending</td>
                                                            <td>$3000</td>
                                                            <td><a href="cart.html" class="btn flosun-button secondary-btn theme-color  rounded-0">View</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>July 22, 2018</td>
                                                            <td>Approved</td>
                                                            <td>$200</td>
                                                            <td><a href="cart.html" class="btn flosun-button secondary-btn theme-color  rounded-0">View</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>June 12, 2019</td>
                                                            <td>On Hold</td>
                                                            <td>$990</td>
                                                            <td><a href="cart.html" class="btn flosun-button secondary-btn theme-color  rounded-0">View</a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->

                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="download" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3>Downloads</h3>
                                            <div class="myaccount-table table-responsive text-center">
                                                <table class="table table-bordered">
                                                    <thead class="thead-light">
                                                        <tr>
                                                            <th>Product</th>
                                                            <th>Date</th>
                                                            <th>Expire</th>
                                                            <th>Download</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Haven - Free Real Estate PSD Template</td>
                                                            <td>Aug 22, 2018</td>
                                                            <td>Yes</td>
                                                            <td><a href="#" class="btn flosun-button secondary-btn theme-color  rounded-0"><i class="fa fa-cloud-download mr-2"></i>Download File</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>HasTech - Profolio Business Template</td>
                                                            <td>Sep 12, 2018</td>
                                                            <td>Never</td>
                                                            <td><a href="#" class="btn flosun-button secondary-btn theme-color  rounded-0"><i class="fa fa-cloud-download mr-2"></i>Download File</a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->

                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="payment-method" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3>Payment Method</h3>
                                            <p class="saved-message">You Can't Saved Your Payment Method yet.</p>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->

                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3>Billing Address</h3>
                                            <address>
                                                <p><strong>Alex Aya</strong></p>
                                                <p>1234 Market ##, Suite 900 <br>
                                            Lorem Ipsum, ## 12345</p>
                                                <p>Mobile: (123) 123-456789</p>
                                            </address>
                                            <a href="#" class="btn flosun-button secondary-btn theme-color  rounded-0"><i class="fa fa-edit mr-2"></i>Edit Address</a>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->

                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="account-info" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3>Account Details</h3>
                                            <div class="account-details-form">
                                                <form action="#">
                                                    <div class="row">
                                                        <div class="col-lg-6 col-custom">
                                                            <div class="single-input-item mb-3">
                                                                <label for="first-name" class="required mb-1">First Name</label>
                                                                <input type="text" id="first-name" placeholder="First Name" />
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-custom">
                                                            <div class="single-input-item mb-3">
                                                                <label for="last-name" class="required mb-1">Last Name</label>
                                                                <input type="text" id="last-name" placeholder="Last Name" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="single-input-item mb-3">
                                                        <label for="display-name" class="required mb-1">Display Name</label>
                                                        <input type="text" id="display-name" placeholder="Display Name" />
                                                    </div>
                                                    <div class="single-input-item mb-3">
                                                        <label for="email" class="required mb-1">Email Addres</label>
                                                        <input type="email" id="email" placeholder="Email Address" />
                                                    </div>
                                                    <fieldset>
                                                        <legend>Password change</legend>
                                                        <div class="single-input-item mb-3">
                                                            <label for="current-pwd" class="required mb-1">Current Password</label>
                                                            <input type="password" id="current-pwd" placeholder="Current Password" />
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-6 col-custom">
                                                                <div class="single-input-item mb-3">
                                                                    <label for="new-pwd" class="required mb-1">New Password</label>
                                                                    <input type="password" id="new-pwd" placeholder="New Password" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-custom">
                                                                <div class="single-input-item mb-3">
                                                                    <label for="confirm-pwd" class="required mb-1">Confirm Password</label>
                                                                    <input type="password" id="confirm-pwd" placeholder="Confirm Password" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                    <div class="single-input-item single-item-button">
                                                        <button class="btn flosun-button secondary-btn theme-color  rounded-0">Save Changes</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div> <!-- Single Tab Content End -->
                                </div>
                            </div> <!-- My Account Tab Content End -->
                        </div>
                    </div> <!-- My Account Page End -->
                </div>
            </div>
        </div>
    </div>
    <!-- my account wrapper end -->
    
    
    
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