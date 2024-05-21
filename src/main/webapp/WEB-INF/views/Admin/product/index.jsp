<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<jsp:include page="../head.jsp" flush="true"></jsp:include>
<body class="sb-nav-fixed">
<jsp:include page="../header.jsp" flush="true"></jsp:include>
<div id="layoutSidenav">
	<jsp:include page="../sidebar.jsp"></jsp:include>
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1 class="mt-4">Products</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a href="dashboard">Dashboard</a></li>
					<li class="breadcrumb-item active">Products</li>
				</ol>
				<div class="col-lg-6">
					<c:if test="${!empty success}">
						<div class="alert alert-success" role="alert">
							<strong>${success}</strong>
						</div>
					</c:if>
				</div>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i>
						DataTable Product
					</div>
					<div class="card-body">
						<table id="datatablesSimple">
							<thead>
							<tr>
								<th>Id</th>
								<th>Image</th>
								<th>Name</th>
								<th>Price</th>
								<th>Description</th>
								<th>Category</th>
								<th>Action</th>
							</tr>
							</thead>
							<tfoot>
							<tr>
								<th>Id</th>
								<th>Image</th>
								<th>Name</th>
								<th>Price</th>
								<th>Description</th>
								<th>Category</th>
								<th>Action</th>
							</tr>
							</tfoot>
							<tbody>
							<c:forEach items="${list}" var="p" varStatus="loop">
								<tr>
									<td scope="row">${loop.count}</td>
									<td><img style="width: 100px; height: 100px" src="<c:url value='/resources/images/${p.image}' />" class="card-img-top" alt="..."></td>
									<td><a href="detail?proId=${p.proId}"><h6 class="card-title cursor-pointer">${p.proName }</h6></a></td>
									<td>
										<p class="mb-0 float-start">
											<strong><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${p.price}" /></strong>
										</p>
									</td>
									<td>${p.description}</td>
									<td>${p.cateId.cateName}</td>
									<td>
										<a href="deleteProduct?proId=${p.proId}" class="btn btn-danger" onclick="return confirm('Sure?')">Delete</a>
										<a href="editProduct?proId=${p.proId}" class="btn btn-primary">Edit</a>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</main>
		<footer class="py-4 bg-light mt-auto">
			<div class="container-fluid px-4">
				<div class="d-flex align-items-center justify-content-between small">
					<div class="text-muted">Copyright &copy; Your Website 2023</div>
					<div>
						<a href="#">Privacy Policy</a>
						&middot;
						<a href="#">Terms &amp; Conditions</a>
					</div>
				</div>
			</div>
		</footer>
	</div>
</div>
<jsp:include page="../scripts.jsp" flush="true"></jsp:include>
</body>
</html>