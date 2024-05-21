<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>

<main class="main-wrapper">
	<!-- Start Shop Area  -->
	<div class="axil-single-product-area axil-section-gap pb--0 bg-color-white">
		<div class="single-product-thumb mb--40">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 mb--40">
						<div class="row">
							<div class="col-lg-10 order-lg-2">
								<div class="single-product-thumbnail-wrap zoom-gallery">
									<div class="single-product-thumbnail product-large-thumbnail-3 axil-product">
										<div class="thumbnail">
											<a href="<c:url value='/resources/images/${product.image}' />" class="popup-zoom">
												<img src="<c:url value='/resources/images/${product.image}' />" alt="Product Images">
											</a>
										</div>
									</div>
									<div class="product-quick-view position-view">
										<a href="<c:url value='/resources/images/${product.image}' /> " class="popup-zoom">
											<i class="far fa-search-plus"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="col-lg-2 order-lg-1">
								<div class="product-small-thumb-3 small-thumb-wrapper">
									<div class="small-thumb-img">
<%--										<img src="<c:url value="/resources/assets/images/product/product-thumb/thumb-08.png" /> " alt="thumb image">--%>
									</div>
									<div class="small-thumb-img">
<%--										<img src="<c:url value="/resources/assets/images/product/product-thumb/thumb-07.png" /> " alt="thumb image">--%>
									</div>
									<div class="small-thumb-img">
<%--										<img src="<c:url value="/resources/assets/images/product/product-thumb/thumb-09.png" /> " alt="thumb image">--%>
									</div>
									<div class="small-thumb-img">
<%--										<img src="<c:url value="/resources/assets/images/product/product-thumb/thumb-07.png" /> " alt="thumb image">--%>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-5 mb--40">
						<form:form action="addCart" modelAttribute="addCart"
								   method="POST" enctype="multipart/form-data">
							<form:input type="hidden" path="proId" value="${product.proId}" id="totalPro"/>
							<div class="single-product-content">
								<div class="inner">
									<h2 class="product-title">${product.proName}</h2>
									<span class="price-amount"><fmt:formatNumber value="${product.price}" type="currency" currencyCode="USD" /></span>
									<div class="product-rating">
										<div class="star-rating">
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="far fa-star"></i>
										</div>
										<div class="review-link">
											<a href="#">(<span>2</span> customer reviews)</a>
										</div>
									</div>
									<p class="description">In ornare lorem ut est dapibus, ut tincidunt nisi pretium. Integer ante est, elementum eget magna. Pellentesque sagittis dictum libero, eu dignissim tellus.</p>

									<div class="product-variations-wrapper">

									</div>

									<!-- Start Product Action Wrapper  -->
									<div class="product-action-wrapper d-flex-center">
										<!-- Start Quentity Action  -->
										<div class="pro-qty">
											<form:input type="text" path="totalPro" value="1" id="totalPro"/>
										</div>
										<!-- End Quentity Action  -->

										<!-- Start Product Action  -->
										<ul class="product-action d-flex-center mb--0">
											<li class="add-to-cart"><button class="axil-btn btn-bg-primary">Add to Cart</button></li>
											<li class="wishlist"><a href="" class="axil-btn wishlist-btn"><i class="far fa-heart"></i></a></li>
										</ul>
										<!-- End Product Action  -->

									</div>
									<!-- End Product Action Wrapper  -->
								</div>
							</div>

						</form:form>
					</div>
				</div>
			</div>
		</div>
		<!-- End .single-product-thumb -->

		<div class="woocommerce-tabs wc-tabs-wrapper bg-vista-white">
			<div class="container">
				<ul class="nav tabs" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						<a class="active" id="description-tab" data-bs-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a>
					</li>
					<li class="nav-item " role="presentation">
						<a id="additional-info-tab" data-bs-toggle="tab" href="#additional-info" role="tab" aria-controls="additional-info" aria-selected="false">Additional Information</a>
					</li>
					<li class="nav-item" role="presentation">
						<a id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Reviews</a>
					</li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
						<div class="product-desc-wrapper">
							<div class="row">
								<div class="col-lg-6 mb--30">
									<div class="single-desc">
										<h5 class="title">Specifications:</h5>
										<p>We’ve created a full-stack structure for our working workflow processes, were from the funny the century initial all the made, have spare to negatives. But the structure was from the funny the century rather,
											initial all the made, have spare to negatives.</p>
									</div>
								</div>
								<!-- End .col-lg-6 -->
								<div class="col-lg-6 mb--30">
									<div class="single-desc">
										<h5 class="title">Care & Maintenance:</h5>
										<p>Use warm water to describe us as a product team that creates amazing UI/UX experiences, by crafting top-notch user experience.</p>
									</div>
								</div>
								<!-- End .col-lg-6 -->
							</div>
							<!-- End .row -->
							<div class="row">
								<div class="col-lg-12">
									<ul class="pro-des-features">
										<li class="single-features">
											<div class="icon">
												<img src="<c:url value="/resources/assets/images/product/product-thumb/icon-3.png" /> " alt="icon">
											</div>
											Easy Returns
										</li>
										<li class="single-features">
											<div class="icon">
												<img src="<c:url value="/resources/assets/images/product/product-thumb/icon-2.png" /> " alt="icon">
											</div>
											Quality Service
										</li>
										<li class="single-features">
											<div class="icon">
												<img src="<c:url value="/resources/assets/images/product/product-thumb/icon-1.png" /> " alt="icon">
											</div>
											Original Product
										</li>
									</ul>
									<!-- End .pro-des-features -->
								</div>
							</div>
							<!-- End .row -->
						</div>
						<!-- End .product-desc-wrapper -->
					</div>
					<div class="tab-pane fade" id="additional-info" role="tabpanel" aria-labelledby="additional-info-tab">
						<div class="product-additional-info">
							<div class="table-responsive">
								<table>
									<tbody>
									<tr>
										<th>Stand Up</th>
										<td>35″L x 24″W x 37-45″H(front to back wheel)</td>
									</tr>
									<tr>
										<th>Folded (w/o wheels) </th>
										<td>32.5″L x 18.5″W x 16.5″H</td>
									</tr>
									<tr>
										<th>Folded (w/ wheels) </th>
										<td>32.5″L x 24″W x 18.5″H</td>
									</tr>
									<tr>
										<th>Door Pass Through </th>
										<td>24</td>
									</tr>
									<tr>
										<th>Frame </th>
										<td>Aluminum</td>
									</tr>
									<tr>
										<th>Weight (w/o wheels) </th>
										<td>20 LBS</td>
									</tr>
									<tr>
										<th>Weight Capacity </th>
										<td>60 LBS</td>
									</tr>
									<tr>
										<th>Width</th>
										<td>24″</td>
									</tr>
									<tr>
										<th>Handle height (ground to handle) </th>
										<td>37-45″</td>
									</tr>
									<tr>
										<th>Wheels</th>
										<td>Aluminum</td>
									</tr>
									<tr>
										<th>Size</th>
										<td>S, M, X, XL</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
						<div class="reviews-wrapper">
							<div class="row">
								<div class="col-lg-6 mb--40">
									<div class="axil-comment-area pro-desc-commnet-area">
										<h5 class="title">01 Review for this product</h5>
										<ul class="comment-list">
											<!-- Start Single Comment  -->
											<li class="comment">
												<div class="comment-body">
													<div class="single-comment">
														<div class="comment-img">
															<img src="<c:url value="/resources/assets/images/blog/author-image-4.png" /> " alt="Author Images">
														</div>
														<div class="comment-inner">
															<h6 class="commenter">
																<a class="hover-flip-item-wrapper" href="#">
                                                                        <span class="hover-flip-item">
                                                                            <span data-text="Cameron Williamson">Eleanor Pena</span>
                                                                        </span>
																</a>
																<span class="commenter-rating ratiing-four-star">
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star empty-rating"></i></a>
                                                                    </span>
															</h6>
															<div class="comment-text">
																<p>“We’ve created a full-stack structure for our working workflow processes, were from the funny the century initial all the made, have spare to negatives. ” </p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<!-- End Single Comment  -->

											<!-- Start Single Comment  -->
											<li class="comment">
												<div class="comment-body">
													<div class="single-comment">
														<div class="comment-img">
															<img src="<c:url value="/resources/assets/images/blog/author-image-4.png" /> " alt="Author Images">
														</div>
														<div class="comment-inner">
															<h6 class="commenter">
																<a class="hover-flip-item-wrapper" href="#">
                                                                        <span class="hover-flip-item">
                                                                            <span data-text="Rahabi Khan">Courtney Henry</span>
                                                                        </span>
																</a>
																<span class="commenter-rating ratiing-four-star">
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                    </span>
															</h6>
															<div class="comment-text">
																<p>“We’ve created a full-stack structure for our working workflow processes, were from the funny the century initial all the made, have spare to negatives. ”</p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<!-- End Single Comment  -->

											<!-- Start Single Comment  -->
											<li class="comment">
												<div class="comment-body">
													<div class="single-comment">
														<div class="comment-img">
															<img src="<c:url value="/resources/assets/images/blog/author-image-5.png" /> " alt="Author Images">
														</div>
														<div class="comment-inner">
															<h6 class="commenter">
																<a class="hover-flip-item-wrapper" href="#">
                                                                        <span class="hover-flip-item">
                                                                            <span data-text="Rahabi Khan">Devon Lane</span>
                                                                        </span>
																</a>
																<span class="commenter-rating ratiing-four-star">
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                        <a href="#"><i class="fas fa-star"></i></a>
                                                                    </span>
															</h6>
															<div class="comment-text">
																<p>“We’ve created a full-stack structure for our working workflow processes, were from the funny the century initial all the made, have spare to negatives. ” </p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<!-- End Single Comment  -->
										</ul>
									</div>
									<!-- End .axil-commnet-area -->
								</div>
								<!-- End .col -->
								<div class="col-lg-6 mb--40">
									<!-- Start Comment Respond  -->
									<div class="comment-respond pro-des-commend-respond mt--0">
										<h5 class="title mb--30">Add a Review</h5>
										<p>Your email address will not be published. Required fields are marked *</p>
										<div class="rating-wrapper d-flex-center mb--40">
											Your Rating <span class="require">*</span>
											<div class="reating-inner ml--20">
												<a href="#"><i class="fal fa-star"></i></a>
												<a href="#"><i class="fal fa-star"></i></a>
												<a href="#"><i class="fal fa-star"></i></a>
												<a href="#"><i class="fal fa-star"></i></a>
												<a href="#"><i class="fal fa-star"></i></a>
											</div>
										</div>

										<form action="#">
											<div class="row">
												<div class="col-12">
													<div class="form-group">
														<label>Other Notes (optional)</label>
														<textarea name="message" placeholder="Your Comment"></textarea>
													</div>
												</div>
												<div class="col-lg-6 col-md-6 col-12">
													<div class="form-group">
														<label>Name <span class="require">*</span></label>
														<input id="name" type="text">
													</div>
												</div>
												<div class="col-lg-6 col-md-6 col-12">
													<div class="form-group">
														<label>Email <span class="require">*</span> </label>
														<input id="email" type="email">
													</div>
												</div>
												<div class="col-lg-12">
													<div class="form-submit">
														<button type="submit" id="submit" class="axil-btn btn-bg-primary w-auto">Submit Comment</button>
													</div>
												</div>
											</div>
										</form>
									</div>
									<!-- End Comment Respond  -->
								</div>
								<!-- End .col -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- woocommerce-tabs -->

	</div>
	<!-- End Shop Area  -->

	<!-- Start Recently Viewed Product Area  -->
	<div class="axil-product-area bg-color-white axil-section-gap pb--50 pb_sm--30">
		<div class="container">
			<div class="section-title-wrapper">
				<span class="title-highlighter highlighter-primary"><i class="far fa-shopping-basket"></i> Your Recently</span>
				<h2 class="title">Viewed Items</h2>
			</div>
			<div class="recent-product-activation slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
				<c:forEach items="${products}" var="p" varStatus="loop">
					<div class="slick-single-layout">
						<div class="axil-product">
							<div class="thumbnail">
								<a href="product-detail?proId=${p.proId}">
									<img src="<c:url value='/resources/images/${p.image}' />" alt="Product Images">
								</a>
								<div class="product-hover-action">
									<ul class="cart-action">
										<li class="wishlist"><a href=""><i class="far fa-heart"></i></a></li>
										<li class="select-option"><a href="cart.html">Add to Cart</a></li>
										<li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="product-content">
								<div class="inner">
									<h5 class="title"><a href="product-detail?proId=${p.proId}">3D™ wireless headset</a></h5>
									<div class="product-price-variant">
										<span class="price old-price">$30</span>
										<span class="price current-price">$30</span>
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


			</div>
		</div>
	</div>
	<!-- End Recently Viewed Product Area  -->
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