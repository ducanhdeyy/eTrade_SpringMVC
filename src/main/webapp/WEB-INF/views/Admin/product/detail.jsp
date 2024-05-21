<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="../head.jsp"></jsp:include>
<body class="bg-theme bg-theme1">
	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">

				<!--breadcrumb-->
				<div
					class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
					<div class="breadcrumb-title pe-3">eCommerce</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="javascript:;"><i
										class="bx bx-home-alt"></i></a></li>
								<li class="breadcrumb-item active" aria-current="page">Products
									Details</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
							<button type="button" class="btn btn-light">Settings</button>
							<button type="button"
								class="btn btn-light dropdown-toggle dropdown-toggle-split"
								data-bs-toggle="dropdown">
								<span class="visually-hidden">Toggle Dropdown</span>
							</button>
							<div
								class="dropdown-menu dropdown-menu-right dropdown-menu-lg-end">
								<a class="dropdown-item" href="javascript:;">Action</a> <a
									class="dropdown-item" href="javascript:;">Another action</a> <a
									class="dropdown-item" href="javascript:;">Something else
									here</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:;">Separated link</a>
							</div>
						</div>
					</div>
				</div>
				<!--end breadcrumb-->

				<div class="card">
					<div class="row g-0">
						<div class="col-md-4 border-end">
							<img src="<c:url value='/resources/${product.image}'/>" class="img-fluid"
								alt="...">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h4 class="card-title">${product.proName}</h4>
								<div class="d-flex gap-3 py-3">
									<div class="cursor-pointer">
										<i class='bx bxs-star text-warning'></i> <i
											class='bx bxs-star text-warning'></i> <i
											class='bx bxs-star text-warning'></i> <i
											class='bx bxs-star text-warning'></i> <i class='bx bxs-star'></i>
									</div>
									<div>142 reviews</div>
									<div class="text-white">
										<i class='bx bxs-cart-alt align-middle'></i> 134 orders
									</div>
								</div>
								<div class="mb-3">
									<span class="price h4">${product.price}</span>
								</div>
								
							</div>
						</div>
					</div>
					<hr />
				</div>
			</div>
		</div>

	</div>
	<jsp:include page="../scripts.jsp"></jsp:include>
</body>
</html>