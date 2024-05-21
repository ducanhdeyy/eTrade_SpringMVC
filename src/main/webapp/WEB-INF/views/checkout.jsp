<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>

<main class="main-wrapper">

    <!-- Start Checkout Area  -->
    <div class="axil-checkout-area axil-section-gap">
        <div class="container">
            <form:form action="addCheckoutCart" modelAttribute="checkoutCart" method="POST">

                <div class="row">
                    <div class="col-lg-6">
                        <div class="axil-checkout-billing">
                            <h4 class="title mb--40">Billing details</h4>
                            <div class="form-group">
                                <label>Name<span>*</span></label>
                                <form:input path="name" type="text" id="last-name" placeholder="John"/>
                            </div>
                            <div class="form-group">
                                <label>Street Address <span>*</span></label>
                                <form:input path="address" type="text" id="address1" class="mb--15" placeholder="House number and street name"/>
                            </div>
                            <div class="form-group">
                                <label>Phone <span>*</span></label>
                                <form:input path="phone" type="tel" id="phone"/>
                            </div>
                            <div class="form-group">
                                <label>Email Address <span>*</span></label>
                                <form:input path="email" type="email" id="email"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="axil-order-summery order-checkout-summery">
                            <h5 class="title mb--20">Your Order</h5>
                            <div class="summery-table-wrap">
                                <table class="table summery-table">
                                    <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Subtotal</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                        <c:when test="${empty listProductCarts}">
                                            <tr>
                                                <td colspan="6">
                                                    <div class="no-data-message text-center">There are no products in the cart.</div>
                                                </td>
                                            </tr>
                                        </c:when>
                                        <c:otherwise>
                                            <c:forEach items="${listProductCarts}" var="cart" varStatus="loop">
                                                <tr>
                                                    <td class="product-title">${cart.proName} x${cart.totalPro}</td>
                                                    <td class="product-subtotal" data-title="Subtotal"><fmt:formatNumber value="${cart.subTotalPro}" type="currency" currencyCode="USD" /></td>
                                                </tr>
                                            </c:forEach>
                                        </c:otherwise>
                                    </c:choose>
                                    <tr class="order-shipping">
                                        <td colspan="2">
                                            <div class="shipping-amount">
                                                <span class="title">Shipping Method</span>
                                                <span class="amount">0 US$</span>
                                            </div>
                                            <div class="input-group">
                                                <input type="radio" id="radio1" name="shipping" checked>
                                                <label for="radio1">Free Shippping</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="order-total">
                                        <td>Total</td>
                                        <td class="order-total-amount"><fmt:formatNumber value="${totalProCart}" type="currency" currencyCode="USD" /></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <button type="submit" class="axil-btn btn-bg-primary checkout-btn">Process to Checkout</button>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
    <!-- End Checkout Area  -->

</main>


<jsp:include page="footer.jsp" flush="true"></jsp:include>
<jsp:include page="scripts.jsp" flush="true"></jsp:include>
</body>
</html>