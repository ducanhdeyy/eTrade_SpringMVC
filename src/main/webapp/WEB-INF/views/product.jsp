<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
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
	<!-- Start Breadcrumb Area  -->
	<div class="axil-breadcrumb-area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-8">
					<div class="inner">
						<ul class="axil-breadcrumb">
							<li class="axil-breadcrumb-item"><a href="index">Home</a></li>
							<li class="separator"></li>
							<li class="axil-breadcrumb-item active" aria-current="page">My Account</li>
						</ul>
						<h1 class="title">Explore All Products</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-4">
					<div class="inner">
						<div class="bradcrumb-thumb">
							<img src="<c:url value="/resources/assets/images/product/product-45.png"/>" alt="Image">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumb Area  -->
	<!-- Start Shop Area  -->
	<div class="axil-shop-area axil-section-gap bg-color-white">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="axil-shop-top">
						<div class="row">
							<div class="col-lg-9">
								<div class="category-select">

									<!-- Start Single Select  -->
									<select class="single-select">
										<option>Categories</option>
										<option>Fashion</option>
										<option>Electronics</option>
										<option>Furniture</option>
										<option>Beauty</option>
									</select>
									<!-- End Single Select  -->

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row row--15">
				<c:forEach items="${products}" var="p" varStatus="loop">
					<div class="col-xl-3 col-lg-4 col-sm-6">
					<div class="axil-product product-style-one has-color-pick mt--40">
						<div class="thumbnail">
							<a href="product-detail?proId=${p.proId}">
								<img src="<c:url value='/resources/images/${p.image}' />" alt="Product Images">
							</a>
							<div class="label-block label-right">
							</div>
							<div class="product-hover-action">
								<ul class="cart-action">
									<li class="wishlist"></li>
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
									<li class="quickview"></li>
								</ul>
							</div>
						</div>
						<div class="product-content">
							<div class="inner">
								<h5 class="title"><a href="product-detail?proId=${p.proId}">${p.proName}</a></h5>
								<div class="product-price-variant">
									<span class="price current-price"><fmt:formatNumber value="${p.price}" type="currency" currencyCode="USD" /></span>
								</div>
								<div class="color-variant-wrapper">
									<ul class="color-variant">
										<li class="color-extra-01 active"><span><span class="color"></span></span>
										</li>
										<li class="color-extra-02"><span><span class="color"></span></span>
										</li>
										<li class="color-extra-03"><span><span class="color"></span></span>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
				<!-- End Single Product  -->
			</div>
			<div class="text-center pt--30">
				<a href="#" class="axil-btn btn-bg-lighter btn-load-more">Load more</a>
			</div>
		</div>
		<!-- End .container -->
	</div>
	<!-- End Shop Area  -->
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