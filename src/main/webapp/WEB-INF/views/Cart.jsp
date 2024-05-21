<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>

<main class="main-wrapper">

  <!-- Start Cart Area  -->
  <div class="axil-product-cart-area axil-section-gap">
    <div class="container">
      <div class="axil-product-cart-wrap">
        <div class="col-lg-6">
          <c:if test="${!empty success}">
            <div class="alert alert-success" role="alert">
              <strong>${success}</strong>
            </div>
          </c:if>
        </div>
        <div class="product-table-heading">
          <h4 class="title">Your Cart</h4>
          <a href="#" class="cart-clear"></a>
        </div>
        <div class="table-responsive">
          <table class="table axil-product-table axil-cart-table mb--40">
            <thead>
            <tr>
              <th scope="col" class="product-remove"></th>
              <th scope="col" class="product-thumbnail">Product</th>
              <th scope="col" class="product-title"></th>
              <th scope="col" class="product-price">Price</th>
              <th scope="col" class="product-quantity">Quantity</th>
              <th scope="col" class="product-subtotal">Subtotal</th>
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
                    <td class="product-remove"><a href="removeCart?proId=${cart.proId}" class="remove-wishlist"><i class="fal fa-times"></i></a></td>
                    <td class="product-thumbnail"><img src="<c:url value="/resources/images/${cart.image}"/> " alt="Digital Product"></td>
                    <td class="product-title">${cart.proName}</td>
                    <td class="product-price" data-title="Price"><fmt:formatNumber value="${cart.price}" type="currency" currencyCode="USD" /></td>
                    <td class="product-quantity" data-title="Qty">
                      <div class="pro-qty">
                        <input type="number" class="quantity-input" value="${cart.totalPro}">
                      </div>
                    </td>
                    <td class="product-subtotal" data-title="Subtotal"><fmt:formatNumber value="${cart.subTotalPro}" type="currency" currencyCode="USD" /></td>
                  </tr>
                </c:forEach>
              </c:otherwise>
            </c:choose>
            </tbody>
          </table>
        </div>
        <div class="cart-update-btn-area">
          <div class="input-group product-cupon">
          </div>
          <div class="update-btn">
            <a href="#" class="axil-btn btn-outline">Update Cart</a>
          </div>
        </div>
        <div class="row">
          <div class="col-xl-5 col-lg-7 offset-xl-7 offset-lg-5">
            <div class="axil-order-summery mt--80">
              <h5 class="title mb--20">Order Summary</h5>
              <div class="summery-table-wrap">
                <table class="table summery-table mb--30">
                  <tbody>
                  <tr class="order-subtotal">
                    <td>Subtotal</td>
                    <td><fmt:formatNumber value="${totalProCart}" type="currency" currencyCode="USD" /></td>
                  </tr>
                  <tr class="order-shipping">
                    <td>Shipping</td>
                    <td>
                      <div class="input-group">
                        <input type="radio" id="radio1" name="shipping" checked>
                        <label for="radio1">Free Shippping</label>
                      </div>
                    </td>
                  </tr>
                  <tr class="order-tax">
                    <td>State Tax</td>
                    <td>0 US$</td>
                  </tr>
                  <tr class="order-total">
                    <td>Total</td>
                    <td class="order-total-amount"><fmt:formatNumber value="${totalProCart}" type="currency" currencyCode="USD" /></td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <a href="checkout" class="axil-btn btn-bg-primary checkout-btn">Process to Checkout</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Cart Area  -->

</main>


<jsp:include page="footer.jsp" flush="true"></jsp:include>
<jsp:include page="scripts.jsp" flush="true"></jsp:include>
</body>
</html>