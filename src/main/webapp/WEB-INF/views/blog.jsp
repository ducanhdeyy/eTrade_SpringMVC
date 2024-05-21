<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
	<div class="wrapper page-blog-wrapper">

		<!--== Start Preloader Content ==-->
		<div class="preloader-wrap">
			<div class="preloader">
				<span class="dot"></span>
				<div class="dots">
					<span></span> <span></span> <span></span>
				</div>
			</div>
		</div>
		<!--== End Preloader Content ==-->

		<!--== Start Header Wrapper ==-->
		<jsp:include page="header.jsp" flush="true"></jsp:include>
		<!--== End Header Wrapper ==-->

		<main class="main-content">
			<!--== Start Page Title Area ==-->
			<section class="page-title-area bg-img"
				data-bg-img="<c:url value="/resources/assets/img/photos/bg-page1.jpg" />">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="page-title-content">
								<h2 class="title">Blog</h2>
								<div class="bread-crumbs">
									<a href="index">Home<span class="breadcrumb-sep">></span></a><span
										class="active">Blog</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Page Title Area ==-->

			<!--== Start Blog Area Wrapper ==-->
			<section class="blog-area blog-grid-area">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="blog-content-column">
								<div class="blog-content-area">
									<!--== Start Blog Post Item ==-->
									<div class="post-item">
										<div class="thumb">
											<a href="#"><img
												src="<c:url value="/resources/assets/img/blog/1.jpg"/>"
												alt="Moren-Image"></a>
										</div>
										<div class="content">
											<div class="meta">
												<a href="blog">Design Trends</a>
											</div>
											<div class="inner-content">
												<h4 class="title">
													<a href="#">Upcycling Brand Nereja Makes Vintage Furs
														New Again</a>
												</h4>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Diam risus semper varius vestibulum enim.
													Sollicitudin facilisi at tortor, lorem arcu accumsan
													suspendisse. […]</p>
											</div>
											<a href="#" class="btn-theme btn-black">Read more</a>
										</div>
									</div>
									<!--== End Blog Post Item ==-->
									<!--== Start Blog Post Item ==-->
									<div class="post-item">
										<div class="thumb">
											<a href="#"><img
												src="<c:url value="/resources/assets/img/blog/2.jpg"/> "
												alt="Moren-Image"></a>
										</div>
										<div class="content">
											<div class="meta">
												<a href="blog">Design Trends</a>
											</div>
											<div class="inner-content">
												<h4 class="title">
													<a href="#">Katie Holmes Revives the Baker Boy Cap</a>
												</h4>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Diam risus semper varius vestibulum enim.
													Sollicitudin facilisi at tortor, lorem arcu accumsan
													suspendisse. […]</p>
											</div>
											<a href="#" class="btn-theme btn-black">Read more</a>
										</div>
									</div>
									<!--== End Blog Post Item ==-->
									<!--== Start Blog Post Item ==-->
									<div class="post-item">
										<div class="thumb">
											<a href="#"><img
												src="<c:url value="/resources/assets/img/blog/3.jpg"/> "
												alt="Moren-Image"></a>
										</div>
										<div class="content">
											<div class="meta">
												<a href="blog">Design Trends</a>
											</div>
											<div class="inner-content">
												<h4 class="title">
													<a href="#">Honey, They Shrunk the Ugg Boot</a>
												</h4>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Diam risus semper varius vestibulum enim.
													Sollicitudin facilisi at tortor, lorem arcu accumsan
													suspendisse. […]</p>
											</div>
											<a href="#" class="btn-theme btn-black">Read more</a>
										</div>
									</div>
									<!--== End Blog Post Item ==-->
									<!--== Start Blog Post Item ==-->
									<div class="post-item">
										<div class="thumb">
											<a href="#"><img
												src="<c:url value ="/resources/assets/img/blog/4.jpg"/> "
												alt="Moren-Image"></a>
										</div>
										<div class="content">
											<div class="meta">
												<a href="blog">Design Trends</a>
											</div>
											<div class="inner-content">
												<h4 class="title">
													<a href="#">Consider the Backless Dress for a New
														Year’s Eve at Home</a>
												</h4>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Diam risus semper varius vestibulum enim.
													Sollicitudin facilisi at tortor, lorem arcu accumsan
													suspendisse. […]</p>
											</div>
											<a href="#" class="btn-theme btn-black">Read more</a>
										</div>
									</div>
									<!--== End Blog Post Item ==-->
									<!--== Start Blog Post Item ==-->
									<div class="post-item">
										<div class="thumb">
											<a href="#"><img
												src="<c:url value="/resources/assets/img/blog/5.jpg"/> "
												alt="Moren-Image"></a>
										</div>
										<div class="content">
											<div class="meta">
												<a href="blog">Design Trends</a>
											</div>
											<div class="inner-content">
												<h4 class="title">
													<a href="#">All the Ways We Styled Sweats This Year</a>
												</h4>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Diam risus semper varius vestibulum enim.
													Sollicitudin facilisi at tortor, lorem arcu accumsan
													suspendisse. […]</p>
											</div>
											<a href="#" class="btn-theme btn-black">Read more</a>
										</div>
									</div>
									<!--== End Blog Post Item ==-->
									<!--== Start Blog Post Item ==-->
									<div class="post-item">
										<div class="thumb">
											<a href="#"><img
												src="<c:url value="/resources/assets/img/blog/6.jpg"/> "
												alt="Moren-Image"></a>
										</div>
										<div class="content">
											<div class="meta">
												<a href="blog">Design Trends</a>
											</div>
											<div class="inner-content">
												<h4 class="title">
													<a href="#">This Week, The Best Dressed Stars
														Prioritized Glamour</a>
												</h4>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Diam risus semper varius vestibulum enim.
													Sollicitudin facilisi at tortor, lorem arcu accumsan
													suspendisse. […]</p>
											</div>
											<a href="#" class="btn-theme btn-black">Read more</a>
										</div>
									</div>
									<!--== End Blog Post Item ==-->
									<div class="pagination-area">
										<nav>
											<ul class="page-numbers">
												<li><a class="page-number active" href="blog">1</a></li>
												<li><a class="page-number" href="blog">2</a></li>
												<li><a class="page-number" href="blog">3</a></li>
												<li><a class="page-number next" href="blog"> <i
														class="lastudioicon-arrow-right"></i>
												</a></li>
											</ul>
										</nav>
									</div>
								</div>
								<div class="sidebar-area">
									<div class="widget">
										<div class="widget-search-box">
											<form action="#" method="post">
												<div class="form-input-item">
													<label for="search2" class="sr-only">Search Here</label> <input
														type="text" id="search2"
														placeholder="Search entire store…">
													<button type="submit" class="btn-src">
														<i class="icofont-search-1"></i>
													</button>
												</div>
											</form>
										</div>
									</div>
									<div class="widget">
										<h3 class="widget-title">Categories</h3>
										<div class="widget-custom-menu">
											<ul>
											<c:forEach items="${category }" var="cate"> 
											<li class="has-sub"><a class="collapsed"
													data-bs-toggle="collapse" href="#has-sub1" role="button"
													aria-expanded="false" aria-controls="has-sub1">${cate.cateName}</a></li>
											</c:forEach>
												
											</ul>
										</div>
									</div>

									<div class="widget">
										<h3 class="widget-title">Tags</h3>
										<div class="widget-tags">
											<ul>
												<li><a href="blog">Blazer,</a></li>
												<li><a href="blog">Fashion,</a></li>
												<li><a href="blog">Main 01,</a></li>
												<li><a href="blog">Main 02,</a></li>
												<li><a href="blog">Main 031,</a></li>
												<li><a href="blog">Main 032,</a></li>
												<li><a href="blog">Main 033,</a></li>
												<li><a href="blog">Main 041,</a></li>
												<li><a href="blog">Main 042,</a></li>
												<li><a href="blog">Main 043,</a></li>
												<li><a href="blog">Main 044,</a></li>
												<li><a href="blog">Main 05,</a></li>
												<li><a href="blog">Main 06,</a></li>
												<li><a href="blog">Main 07,</a></li>
												<li><a href="blog">Mango,</a></li>
												<li><a href="blog">Pull & Bear,</a></li>
												<li><a href="blog"> wordpress, </a></li>
												<li><a href="blog"> Zara </a></li>
											</ul>
										</div>
									</div>
									<div class="widget">
										<div class="widget-banner">
											<a href="blog"><img
												src="<c:url value ="/resources/assets/img/photos/banner1.jpg"/> "
												alt="Image"></a>
										</div>
									</div>
									<div class="widget">
										<h3 class="widget-title">Popular Posts</h3>
										<div class="widget-blog-post">
											<ul>
												<li>
													<div class="thumb">
														<a href="#"><img
															src="<c:url value="/resources/assets/img/blog/s1-2.jpg"/> "
															alt="Image-HasTech"></a>
													</div>
													<div class="content">
														<h4>
															<a href="#">Upcycling Brand Nereja Makes...</a>
														</h4>
														<span>December 30, 2020</span>
													</div>
												</li>
												<li>
													<div class="thumb">
														<a href="#"><img
															src="<c:url value ="/resources/assets/img/blog/s2-2.jpg"/> "
															alt="Image-HasTech"></a>
													</div>
													<div class="content">
														<h4>
															<a href="#">Katie Holmes Revives the Baker Boy Cap</a>
														</h4>
														<span>December 30, 2020</span>
													</div>
												</li>
												<li>
													<div class="thumb">
														<a href="#"><img
															src=" <c:url value="/resources/assets/img/blog/s3-2.jpg"/> "
															alt="Image-HasTech"></a>
													</div>
													<div class="content">
														<h4>
															<a href="#">Honey, They Shrunk the Ugg Boot</a>
														</h4>
														<span>December 30, 2020</span>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Blog Area Wrapper ==-->
		</main>

		<!--== Start Footer Area Wrapper ==-->
		<jsp:include page="footer.jsp" flush="true"></jsp:include>
		<!--== End Footer Area Wrapper ==-->

		<!--== Scroll Top Button ==-->

	</div>
	<jsp:include page="scripts.jsp"></jsp:include>
</body>
</html>