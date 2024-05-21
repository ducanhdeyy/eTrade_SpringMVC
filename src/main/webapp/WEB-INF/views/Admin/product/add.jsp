<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                <h1 class="mt-4">Create Product</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="dashboard">Dashboard</a></li>
                    <li class="breadcrumb-item active">Create Product</li>
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
                        <h5 class="card-title fw-semibold mb-4">Forms</h5>
                        <div class="card">
                            <div class="card-body">
                                <form:form action="insertProduct" modelAttribute="product"
                                           method="POST" enctype="multipart/form-data">
                                    <div class="mb-3">
                                        <label for="imageInset" class="form-label">Image</label>
                                        <input type="file" name="imageInset" id="imageInset"/>
                                    </div>
                                    <div class="mb-3">
                                        <label for="inputProductTitle" class="form-label">Product Name</label>
                                        <form:input type="text" path="proName" class="form-control"
                                                    id="inputProductTitle" placeholder="Enter product title"/>
                                    </div>
                                    <div class="mb-3">
                                        <label for="inputPriceTitle" class="form-label">Product Name</label>
                                        <form:input type="number" path="price" class="form-control"
                                                    id="inputPriceTitle"/>
                                    </div>
                                    <div class="mb-3">
                                        <label for="cateId">Category</label>
                                        <form:select path="cateId.cateId" class="form-control" id="cateId">
                                            <form:options items="${listCategory}"
                                                          itemLabel="cateName" itemValue="cateId"/>
                                        </form:select>
                                    </div>
                                    <div class="mb-3">
                                        <label for="inputProductDescription" class="form-label">Description</label>
                                        <form:textarea class="form-control" path="description"
                                                       id="inputProductDescription"
                                                       rows="5"/>
                                    </div>
                                    <button type="submit" class="btn btn-light">Save Product</button>
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
</html>