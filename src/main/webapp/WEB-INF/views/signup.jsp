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
                    <p>Already a member?</p>
                    <a href="login" class="axil-btn btn-bg-secondary sign-up-btn">Sign In</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header -->

    <div class="row">
        <div class="col-xl-4 col-lg-6">
            <div class="axil-signin-banner bg_image bg_image--10">
                <h3 class="title">We Offer the Best Products</h3>
            </div>
        </div>
        <div class="col-lg-6 offset-xl-2">
            <div class="axil-signin-form-wrap">
                <div class="axil-signin-form">
                    <h3 class="title">I'm New Here</h3>
                    <p class="b2 mb--55">Enter your detail below</p>
                    <h2>${success}</h2>
                    <form:form class="singin-form login-form-wrapper" id="login-form"
                          name='loginForm'
                          action="signup-check" modelAttribute="user"
                               method="POST">
                        <div class="form-group">
                            <label>Username</label>
                            <form:input path="userName" type="text" class="form-control" id="userName" required="true" />
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <form:input path="email" type="text" class="form-control" id="email" required="true" />
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <form:input path="passWord" type="password" class="form-control" id="passWord" required="true"/>
                        </div>
                        <div class="form-group">
                            <label for="enableSelect" class="form-label" style="">Enabled</label>
                            <form:select path="enabled" class="form-control" id="enableSelect" style="font-size: medium">
                                <option value="1" label="Enable" class="form-group" style="font-size: medium"></option>
                                <option value="0" label="Disable" class="form-group" style="font-size: medium"></option>
                            </form:select>
                        </div>
                        <div class="form-group d-flex align-items-center justify-content-between">
                            <button type="submit" class="axil-btn btn-bg-primary submit-btn">Create Account</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="scripts.jsp" flush="true"></jsp:include>
</body>
</html>