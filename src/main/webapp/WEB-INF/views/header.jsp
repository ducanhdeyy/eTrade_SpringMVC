<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->
<a href="#top" class="back-to-top" id="backto-top"><i class="fal fa-arrow-up"></i></a>
<header class="header axil-header header-style-1">
	<div class="axil-header-top">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-sm-6">
					<div class="header-top-dropdown">
						<div class="dropdown">
							<button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
								English
							</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">English</a></li>
								<li><a class="dropdown-item" href="#">Arabic</a></li>
								<li><a class="dropdown-item" href="#">Spanish</a></li>
							</ul>
						</div>
						<div class="dropdown">
							<button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
								USD
							</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">USD</a></li>
								<li><a class="dropdown-item" href="#">AUD</a></li>
								<li><a class="dropdown-item" href="#">EUR</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="header-top-link">
						<ul class="quick-link">
							<li><a href="#">Help</a></li>
							<li><a href="signup">Join Us</a></li>
							<li><a href="login">Sign In</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Start Mainmenu Area  -->
	<div id="axil-sticky-placeholder"></div>
	<div class="axil-mainmenu">
		<div class="container">
			<div class="header-navbar">
				<div class="header-brand">
					<a href="index" class="logo logo-dark">
						<img src="<c:url value="/resources/assets/images/logo/logo.png"/>" alt="Site Logo">
					</a>
					<a href="index" class="logo logo-light">
						<img src="<c:url value="/resources/assets/images/logo/logo-light.png"/>" alt="Site Logo">
					</a>
				</div>
				<div class="header-main-nav">
					<!-- Start Mainmanu Nav -->
					<nav class="mainmenu-nav">
						<button class="mobile-close-btn mobile-nav-toggler"><i class="fas fa-times"></i></button>
						<div class="mobile-nav-brand">
							<a href="index" class="logo">
								<img src="<c:url value="/resources/assets/images/logo/logo.png"/>" alt="Site Logo">
							</a>
						</div>
						<ul class="mainmenu">
							<li>
								<a href="index">Home</a>
							</li>
							<li>
								<a href="product">Shop</a>
							</li>
							<li><a href="about">About</a></li>
							<li><a href="contact">Contact</a></li>
						</ul>
					</nav>
					<!-- End Mainmanu Nav -->
				</div>
				<div class="header-action">
					<ul class="action-list">
						<li class="axil-search">
							<a href="javascript:void(0)" class="header-search-icon" title="Search">
								<i class="flaticon-magnifying-glass"></i>
							</a>
						</li>
						<li class="wishlist">
						</li>
						<li class="shopping-cart">
							<a href="cart">
								<i class="flaticon-shopping-cart"></i>
							</a>
						</li>
						<li class="my-account">
							<a href="javascript:void(0)">
								<i class="flaticon-person"></i>
							</a>
							<div class="my-account-dropdown">
								<span class="title">QUICKLINKS</span>
								<ul>
									<li>
										<a href="">My Account</a>
									</li>
								</ul>
								<div class="login-btn">
									<a href="login" class="axil-btn btn-bg-primary">Login</a>
								</div>
								<div class="reg-footer text-center">No account yet? <a href="" class="btn-link">REGISTER HERE.</a></div>
							</div>
						</li>
						<li class="axil-mobile-toggle">
							<button class="menu-btn mobile-nav-toggler">
								<i class="flaticon-menu-2"></i>
							</button>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End Mainmenu Area -->
</header>
