<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
				<h1 class="mt-4">Edit Category</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item"><a href="dashboard">Dashboard</a></li>
					<li class="breadcrumb-item active">Edit Category</li>
				</ol>
				<div class="col-lg-6">
					<c:if test="${!empty success}">
						<div class="alert alert-success" role="alert">
							<strong>${success}</strong>
						</div>
					</c:if>
				</div>
				<div class="card" style="width: 50vh;">
					<div class="card-body">
						<h5 class="card-title fw-semibold mb-4">Edit Category</h5>
						<div class="card">
							<div class="card-body">
								<form:form action="updateCategory" modelAttribute="category" method="post">
									<div class="mb-3">
										<label for="inputProductTitle" class="form-label">Category Name</label>
										<form:input cssStyle="display: none" path="cateId" readonly="true" class="form-control"/></td>
										<form:input type="text" path="cateName" class="form-control"
													id="inputProductTitle" placeholder="Enter Category Name" />
									</div>
									<div class="mb-3">
										<label for="statusSelect" class="form-label">Status</label>
										<form:select path="status" class="form-control" id="statusSelect">
											<option value="1" label="Active"></option>
											<option value="0" label="Inactive"></option>

										</form:select>
									</div>
									<button type="submit" class="btn btn-light">Update Category</button>
								</form:form>
							</div>
						</div>
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
</body>
</html>