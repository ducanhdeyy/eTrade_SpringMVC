<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body class="sticky-header newsletter-popup-modal">

<style>
	.axil-product .cart-action li.select-option button {
		position: relative;
		height: 40px;
		line-height: 39px;
		padding: 0 18px;
		display: block;
		border-radius: 4px;
		font-weight: 700;
		font-size: 14px;
		color: var(--color-white);
		background-color: var(--color-secondary);
		transition: .3s;
		box-shadow: 0 16px 32px 0 rgba(0,0,0,.06);
		position: relative;
		z-index: 1;
	}
</style>
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<main class="main-wrapper">
		<div class="axil-main-slider-area main-slider-style-1">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-5 col-sm-6">
						<div class="main-slider-content">
							<div class="slider-content-activation-one">
								<div class="single-slide slick-slide" data-sal="slide-up" data-sal-delay="400" data-sal-duration="800">
									<span class="subtitle"><i class="fas fa-fire"></i> Hot Deal In This Week</span>
									<h1 class="title">Roco Wireless Headphone</h1>
									<div class="slide-action">
										<div class="shop-btn">
											<a href="product" class="axil-btn btn-bg-white"><i class="fal fa-shopping-cart"></i>Shop Now</a>
										</div>
										<div class="item-rating">
											<div class="thumb">
												<ul>
													<li><img src="<c:url value="/resources/assets/images/others/author1.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author2.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author3.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author4.png"/>" alt="Author"></li>
												</ul>
											</div>
											<div class="content">
											<span class="rating-icon">
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fal fa-star"></i>
									</span>
												<span class="review-text">
										<span>100+</span> Reviews
											</span>
											</div>
										</div>
									</div>
								</div>
								<div class="single-slide slick-slide">
									<span class="subtitle"><i class="fas fa-fire"></i> Hot Deal In This Week</span>
									<h1 class="title">Smart Digital Watch</h1>
									<div class="slide-action">
										<div class="shop-btn">
											<a href="product" class="axil-btn btn-bg-white"><i class="fal fa-shopping-cart"></i>Shop Now</a>
										</div>
										<div class="item-rating">
											<div class="thumb">
												<ul>
													<li><img src="<c:url value="/resources/assets/images/others/author1.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author2.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author3.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author4.png"/>" alt="Author"></li>
												</ul>
											</div>
											<div class="content">
											<span class="rating-icon">
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fal fa-star"></i>
									</span>
												<span class="review-text">
										<span>100+</span> Reviews
											</span>
											</div>
										</div>
									</div>
								</div>
								<div class="single-slide slick-slide">
									<span class="subtitle"><i class="fas fa-fire"></i> Hot Deal In This Week</span>
									<h1 class="title">Roco Wireless Headphone</h1>
									<div class="slide-action">
										<div class="shop-btn">
											<a href="product" class="axil-btn btn-bg-white"><i class="fal fa-shopping-cart"></i>Shop Now</a>
										</div>
										<div class="item-rating">
											<div class="thumb">
												<ul>
													<li><img src="<c:url value="/resources/assets/images/others/author1.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author2.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author3.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author4.png"/>" alt="Author"></li>
												</ul>
											</div>
											<div class="content">
											<span class="rating-icon">
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fal fa-star"></i>
									</span>
												<span class="review-text">
										<span>100+</span> Reviews
											</span>
											</div>
										</div>
									</div>
								</div>
								<div class="single-slide slick-slide">
									<span class="subtitle"><i class="fas fa-fire"></i> Hot Deal In This Week</span>
									<h1 class="title">Smart Digital Watch</h1>
									<div class="slide-action">
										<div class="shop-btn">
											<a href="product" class="axil-btn btn-bg-white"><i class="fal fa-shopping-cart"></i>Shop Now</a>
										</div>
										<div class="item-rating">
											<div class="thumb">
												<ul>
													<li><img src="<c:url value="/resources/assets/images/others/author1.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author2.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author3.png"/>" alt="Author"></li>
													<li><img src="<c:url value="/resources/assets/images/others/author4.png"/>" alt="Author"></li>
												</ul>
											</div>
											<div class="content">
											<span class="rating-icon">
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fal fa-star"></i>
									</span>
												<span class="review-text">
										<span>100+</span> Reviews
											</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-7 col-sm-6">
						<div class="main-slider-large-thumb">
							<div class="slider-thumb-activation-one axil-slick-dots">
								<div class="single-slide slick-slide" data-sal="slide-up" data-sal-delay="600" data-sal-duration="1500">
									<img src="<c:url value="/resources/assets/images/product/product-38.png"/>" alt="Product">
									<div class="product-price">
										<span class="text">From</span>
										<span class="price-amount">$49.00</span>
									</div>
								</div>
								<div class="single-slide slick-slide" data-sal="slide-up" data-sal-delay="600" data-sal-duration="1500">
									<img src="<c:url value="/resources/assets/images/product/product-39.png"/>" alt="Product">
									<div class="product-price">
										<span class="text">From</span>
										<span class="price-amount">$49.00</span>
									</div>
								</div>
								<div class="single-slide slick-slide">
									<img src="<c:url value="/resources/assets/images/product/product-38.png"/>" alt="Product">
									<div class="product-price">
										<span class="text">From</span>
										<span class="price-amount">$49.00</span>
									</div>
								</div>
								<div class="single-slide slick-slide">
									<img src="<c:url value="/resources/assets/images/product/product-39.png"/>" alt="Product">
									<div class="product-price">
										<span class="text">From</span>
										<span class="price-amount">$49.00</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<ul class="shape-group">
				<li class="shape-1"><img src="<c:url value="/resources/assets/images/others/shape-1.png"/>" alt="Shape"></li>
				<li class="shape-2"><img src="<c:url value="/resources/assets/images/others/shape-2.png"/>" alt="Shape"></li>
			</ul>
		</div>

		<!-- Start Categorie Area  -->
		<div class="axil-categorie-area bg-color-white axil-section-gapcommon">
			<div class="container">
				<div class="section-title-wrapper">
					<span class="title-highlighter highlighter-secondary"> <i class="far fa-tags"></i> Categories</span>
					<h2 class="title">Browse by Category</h2>
				</div>
				<div class="categrie-product-activation slick-layout-wrapper--15 axil-slick-arrow  arrow-top-slide">
					<div class="slick-single-layout">
						<div class="categrie-product" data-sal="zoom-out" data-sal-delay="200" data-sal-duration="500">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-4.png"/>" alt="product categorie">
								<h6 class="cat-title">Phones</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product" data-sal="zoom-out" data-sal-delay="300" data-sal-duration="500">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-5.png"/>" alt="product categorie">
								<h6 class="cat-title">Computers</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product" data-sal="zoom-out" data-sal-delay="400" data-sal-duration="500">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-11.png"/>" alt="product categorie">
								<h6 class="cat-title">Accessories</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product" data-sal="zoom-out" data-sal-delay="500" data-sal-duration="500">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-6.png"/>" alt="product categorie">
								<h6 class="cat-title">Laptops</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product" data-sal="zoom-out" data-sal-delay="600" data-sal-duration="500">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-2.png"/>" alt="product categorie">
								<h6 class="cat-title">Monitors</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product" data-sal="zoom-out" data-sal-delay="700" data-sal-duration="500">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-7.png"/>" alt="product categorie">
								<h6 class="cat-title">Networking</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product" data-sal="zoom-out" data-sal-delay="800" data-sal-duration="500">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-8.png"/>" alt="product categorie">
								<h6 class="cat-title">PC Gaming</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-1.png"/>" alt="product categorie">
								<h6 class="cat-title">Smartwatches</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-9.png"/>" alt="product categorie">
								<h6 class="cat-title">Headphones</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-10.png"/>" alt="product categorie">
								<h6 class="cat-title">Camera & Photo</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-8.png"/>" alt="product categorie">
								<h6 class="cat-title">Video Games</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="categrie-product">
							<a href="#">
								<img class="img-fluid" src="<c:url value="/resources/assets/images/product/categories/elec-1.png"/>" alt="product categorie">
								<h6 class="cat-title">Sports</h6>
							</a>
						</div>
						<!-- End .categrie-product -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Categorie Area  -->

		<!-- Poster Countdown Area  -->
		<div class="axil-poster-countdown">
			<div class="container">
				<div class="poster-countdown-wrap bg-lighter">
					<div class="row">
						<div class="col-xl-5 col-lg-6">
							<div class="poster-countdown-content">
								<div class="section-title-wrapper">
									<span class="title-highlighter highlighter-secondary"> <i class="fal fa-headphones-alt"></i> Don’t Miss!!</span>
									<h2 class="title">Enhance Your Music Experience</h2>
								</div>
								<div class="poster-countdown countdown mb--40"></div>
								<a href="#" class="axil-btn btn-bg-primary">Check it Out!</a>
							</div>
						</div>
						<div class="col-xl-7 col-lg-6">
							<div class="poster-countdown-thumbnail">
								<img src="<c:url value="/resources/assets/images/product/poster/poster-03.png"/>" alt="Poster Product">
								<div class="music-singnal">
									<div class="item-circle circle-1"></div>
									<div class="item-circle circle-2"></div>
									<div class="item-circle circle-3"></div>
									<div class="item-circle circle-4"></div>
									<div class="item-circle circle-5"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Poster Countdown Area  -->

		<!-- Start Expolre Product Area  -->
		<div class="axil-product-area bg-color-white axil-section-gap">
			<div class="container">
				<div class="section-title-wrapper">
					<span class="title-highlighter highlighter-primary"> <i class="far fa-shopping-basket"></i> Our Products</span>
					<h2 class="title">Explore our Products</h2>
				</div>
				<div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
					<div class="slick-single-layout">
						<div class="row row--15">
							<c:forEach items="${products}" var="p" varStatus="loop">
								<div class="col-xl-3 col-lg-4 col-sm-6 col-12 mb--30">
								<div class="axil-product product-style-one">
									<div class="thumbnail">
										<a href="product-detail?proId=${p.proId}">
											<img data-sal="zoom-out" data-sal-delay="200" data-sal-duration="800" loading="lazy" class="main-img" src="<c:url value='/resources/images/${p.image}' />" alt="Product Images">
											<img class="hover-img" src="<c:url value='/resources/images/${p.image}' />" alt="Product Images">
										</a>
										<div class="product-hover-action">
											<ul class="cart-action">
												<li class="quickview"></li>
												<li class="select-option">
													<form:form action="addCart" modelAttribute="addCart"
															   method="POST">
													<form:input type="hidden" path="proId" value="${p.proId}" id="totalPro"/>
														<form:input type="hidden" path="totalPro" value="1" id="totalPro"/>
														<button type="submit">
															Add to Cart
														</button>
													</form:form>
												</li>
												<li class="wishlist"></li>
											</ul>
										</div>
									</div>
									<div class="product-content">
										<div class="inner">
											<div class="product-rating">
											<span class="icon">
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
									</span>
												<span class="rating-number">(64)</span>
											</div>
											<h5 class="title"><a href="product-detail?proId=${p.proId}">${p.proName}</a></h5>
											<div class="product-price-variant">
												<span class="price current-price"><fmt:formatNumber value="${p.price}" type="currency" currencyCode="USD" /></span>
											</div>
										</div>
									</div>
								</div>
							</div>
								<!-- End Single Product  -->
							</c:forEach>
						</div>
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout">
						<div class="row row--15">
							<c:forEach items="${products}" var="p" varStatus="loop">
								<div class="col-xl-3 col-lg-4 col-sm-6 col-12 mb--30">
									<div class="axil-product product-style-one">
										<div class="thumbnail">
											<a href="product-detail?proId=${p.proId}">
												<img data-sal="zoom-out" data-sal-delay="200" data-sal-duration="800" loading="lazy" class="main-img" src="<c:url value='/resources/images/${p.image}' />" alt="Product Images">
												<img class="hover-img" src="<c:url value='/resources/images/${p.image}' />" alt="Product Images">
											</a>
											<div class="product-hover-action">
												<ul class="cart-action">
													<li class="quickview"></li>
													<li class="select-option">
														<form:form action="addCart" modelAttribute="addCart"
																   method="POST">
															<form:input type="hidden" path="proId" value="${p.proId}" id="totalPro"/>
															<form:input type="hidden" path="totalPro" value="1" id="totalPro"/>
															<button type="submit">
																Add to Cart
															</button>
														</form:form>
													</li>
													<li class="wishlist"></li>
												</ul>
											</div>
										</div>
										<div class="product-content">
											<div class="inner">
												<div class="product-rating">
											<span class="icon">
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
									</span>
													<span class="rating-number">(64)</span>
												</div>
												<h5 class="title"><a href="product-detail?proId=${p.proId}">${p.proName}</a></h5>
												<div class="product-price-variant">
													<span class="price current-price"><fmt:formatNumber value="${p.price}" type="currency" currencyCode="USD" /></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- End Single Product  -->
							</c:forEach>
						</div>
					</div>
					<!-- End .slick-single-layout -->
				</div>
				<div class="row">
					<div class="col-lg-12 text-center mt--20 mt_sm--0">
						<a href="product" class="axil-btn btn-bg-lighter btn-load-more">View All Products</a>
					</div>
				</div>

			</div>
		</div>
		<!-- End Expolre Product Area  -->

		<!-- Start Testimonila Area  -->
		<div class="axil-testimoial-area axil-section-gap bg-vista-white">
			<div class="container">
				<div class="section-title-wrapper">
					<span class="title-highlighter highlighter-secondary"> <i class="fal fa-quote-left"></i>Testimonials</span>
					<h2 class="title">Users Feedback</h2>
				</div>
				<!-- End .section-title -->
				<div class="testimonial-slick-activation testimonial-style-one-wrapper slick-layout-wrapper--20 axil-slick-arrow arrow-top-slide">
					<div class="slick-single-layout testimonial-style-one">
						<div class="review-speech">
							<p>“ It’s amazing how much easier it has been to
								meet new people and create instantly non
								connections. I have the exact same personal
								the only thing that has changed is my mind
								set and a few behaviors. “</p>
						</div>
						<div class="media">
							<div class="thumbnail">
								<img src="<c:url value="/resources/assets/images/testimonial/image-1.png"/>" alt="testimonial image">
							</div>
							<div class="media-body">
								<span class="designation">Head Of Idea</span>
								<h6 class="title">James C. Anderson</h6>
							</div>
						</div>
						<!-- End .thumbnail -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout testimonial-style-one">
						<div class="review-speech">
							<p>“ It’s amazing how much easier it has been to
								meet new people and create instantly non
								connections. I have the exact same personal
								the only thing that has changed is my mind
								set and a few behaviors. “</p>
						</div>
						<div class="media">
							<div class="thumbnail">
								<img src="<c:url value="/resources/assets/images/testimonial/image-2.png"/>" alt="testimonial image">
							</div>
							<div class="media-body">
								<span class="designation">Head Of Idea</span>
								<h6 class="title">James C. Anderson</h6>
							</div>
						</div>
						<!-- End .thumbnail -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout testimonial-style-one">
						<div class="review-speech">
							<p>“ It’s amazing how much easier it has been to
								meet new people and create instantly non
								connections. I have the exact same personal
								the only thing that has changed is my mind
								set and a few behaviors. “</p>
						</div>
						<div class="media">
							<div class="thumbnail">
								<img src="<c:url value="/resources/assets/images/testimonial/image-3.png"/>" alt="testimonial image">
							</div>
							<div class="media-body">
								<span class="designation">Head Of Idea</span>
								<h6 class="title">James C. Anderson</h6>
							</div>
						</div>
						<!-- End .thumbnail -->
					</div>
					<!-- End .slick-single-layout -->
					<div class="slick-single-layout testimonial-style-one">
						<div class="review-speech">
							<p>“ It’s amazing how much easier it has been to
								meet new people and create instantly non
								connections. I have the exact same personal
								the only thing that has changed is my mind
								set and a few behaviors. “</p>
						</div>
						<div class="media">
							<div class="thumbnail">
								<img src="<c:url value="/resources/assets/images/testimonial/image-2.png"/>" alt="testimonial image">
							</div>
							<div class="media-body">
								<span class="designation">Head Of Idea</span>
								<h6 class="title">James C. Anderson</h6>
							</div>
						</div>
						<!-- End .thumbnail -->
					</div>
					<!-- End .slick-single-layout -->

				</div>
			</div>
		</div>
		<!-- End Testimonila Area  -->

		<!-- Start Why Choose Area  -->
		<div class="axil-why-choose-area pb--50 pb_sm--30">
			<div class="container">
				<div class="section-title-wrapper section-title-center">
					<span class="title-highlighter highlighter-secondary"><i class="fal fa-thumbs-up"></i>Why Us</span>
					<h2 class="title">Why People Choose Us</h2>
				</div>
				<div class="row row-cols-xl-5 row-cols-lg-4 row-cols-md-3 row-cols-sm-2 row-cols-1 row--20">
					<div class="col">
						<div class="service-box">
							<div class="icon">
								<img src="<c:url value="/resources/assets/images/icons/service6.png"/>" alt="Service">
							</div>
							<h6 class="title">Fast &amp; Secure Delivery</h6>
						</div>
					</div>
					<div class="col">
						<div class="service-box">
							<div class="icon">
								<img src="<c:url value="/resources/assets/images/icons/service7.png"/>" alt="Service">
							</div>
							<h6 class="title">100% Guarantee On Product</h6>
						</div>
					</div>
					<div class="col">
						<div class="service-box">
							<div class="icon">
								<img src="<c:url value="/resources/assets/images/icons/service8.png"/>" alt="Service">
							</div>
							<h6 class="title">24 Hour Return Policy</h6>
						</div>
					</div>
					<div class="col">
						<div class="service-box">
							<div class="icon">
								<img src="<c:url value="/resources/assets/images/icons/service9.png"/>" alt="Service">
							</div>
							<h6 class="title">24 Hour Return Policy</h6>
						</div>
					</div>
					<div class="col">
						<div class="service-box">
							<div class="icon">
								<img src="<c:url value="/resources/assets/images/icons/service10.png"/>" alt="Service">
							</div>
							<h6 class="title">Next Level Pro Quality</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Why Choose Area  -->


		<!-- Start Axil Product Poster Area  -->
		<div class="axil-poster">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 mb--30">
						<div class="single-poster">
							<a href="product">
								<img src="<c:url value="/resources/assets/images/product/poster/poster-01.png"/>" alt="eTrade promotion poster">
								<div class="poster-content">
									<div class="inner">
										<h3 class="title">Rich sound, <br> for less.</h3>
										<span class="sub-title">Collections <i class="fal fa-long-arrow-right"></i></span>
									</div>
								</div>
								<!-- End .poster-content -->
							</a>
						</div>
						<!-- End .single-poster -->
					</div>
					<div class="col-lg-6 mb--30">
						<div class="single-poster">
							<a href="product">
								<img src="<c:url value="/resources/assets/images/product/poster/poster-02.png"/>" alt="eTrade promotion poster">
								<div class="poster-content content-left">
									<div class="inner">
										<span class="sub-title">50% Offer In Winter</span>
										<h3 class="title">Get VR <br> Reality Glass</h3>
									</div>
								</div>
								<!-- End .poster-content -->
							</a>
						</div>
						<!-- End .single-poster -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Axil Product Poster Area  -->

		<!-- Start Axil Newsletter Area  -->
		<div class="axil-newsletter-area axil-section-gap pt--0">
			<div class="container">
				<div class="etrade-newsletter-wrapper bg_image bg_image--5">
					<div class="newsletter-content">
						<span class="title-highlighter highlighter-primary2"><i class="fas fa-envelope-open"></i>Newsletter</span>
						<h2 class="title mb--40 mb_sm--30">Get weekly update</h2>
						<div class="input-group newsletter-form">
							<div class="position-relative newsletter-inner mb--15">
								<input placeholder="example@gmail.com" type="text">
							</div>
							<button type="submit" class="axil-btn mb--15">Subscribe</button>
						</div>
					</div>
				</div>
			</div>
			<!-- End .container -->
		</div>
		<!-- End Axil Newsletter Area  -->

	</main>

	<jsp:include page="footer.jsp" flush="true"></jsp:include>

	<jsp:include page="scripts.jsp" flush="true"></jsp:include>
</body>
</html>