<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
<div class="axil-signin-area">

	<!-- Start Header -->
	<div class="signin-header">
		<div class="row align-items-center">
			<div class="col-sm-4">
				<a href="index" class="site-logo"><img src="<c:url value="/resources/assets/images/logo/logo.png"/>" alt="logo"></a>
			</div>
			<div class="col-sm-8">
				<div class="singin-header-btn">
					<p>Not a member?</p>
					<a href="signup" class="axil-btn btn-bg-secondary sign-up-btn">Sign Up Now</a>
				</div>
			</div>
		</div>
	</div>
	<!-- End Header -->

	<div class="row">
		<div class="col-xl-4 col-lg-6">
			<div class="axil-signin-banner bg_image bg_image--9">
				<h3 class="title">We Offer the Best Products</h3>
			</div>
		</div>
		<div class="col-lg-6 offset-xl-2">
			<div class="axil-signin-form-wrap">
				<div class="axil-signin-form">
					<h3 class="title">Sign in to eTrade.</h3>
					<p class="b2 mb--55">Enter your detail below</p>
					<h2>${mess}</h2>
					<form class="singin-form login-form-wrapper" id="login-form"
						  name='loginForm'
						  action="<c:url value='j_spring_security_login' />"
						  method='POST'>
						<div class="form-group">
							<label>Username</label>
							<input name="username" type="text" class="form-control" id=username />
						</div>
						<div class="form-group">
							<label>Password</label>
							<input path="password" type="password" class="form-control" id="password" name='password' />
						</div>
						<input type="hidden" name="${_csrf.parameterName}"
							   value="${_csrf.token}" />
						<div class="form-group d-flex align-items-center justify-content-between">
							<button type="submit" class="axil-btn btn-bg-primary submit-btn">Sign In</button>
							<a href="" class="forgot-btn">Forget password?</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
	<jsp:include page="scripts.jsp" flush="true"></jsp:include>
</body>
</html>