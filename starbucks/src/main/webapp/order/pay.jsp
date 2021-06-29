<%@page import="model.OrderBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css"> 
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css"> 
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pay.css"> 
<style>
article {
   background: url(<%=request.getContextPath() %>/img/join2.jpg) center top no-repeat fixed #0a0807; 
    -webkit-background-size: cover;
    width: 100%; 
    margin: 0 auto; 
    padding-top: 100px;
    padding-bottom: 100px;
}
</style>
</head>
<body>
	<%

	/* String o_quantity = request.getParameter("quantity");
	request.setAttribute("quantity", o_quantity);
	int quantity = Integer.parseInt(request.getParameter("quantity"));
	
	
	System.out.print("pay.jsp"+o_quantity); */
	//	int p_num = Integer.parseInt(product_num);
	
	%>


<%@ include file="header.jsp" %>
	
	
<article>
	<center>
	<form name="order" method="POST"
		action="<%=request.getContextPath()%>/OrderAction.do">
			<input type="hidden" value="${sessionScope.id}" name="id">
			<input type="hidden" value="${food.product_number}" name="product_number">
			<input type="hidden" value="${food.f_price}" name="o_price">
			<input type="hidden" value="${quantity}" name="o_quantity">
			<input type="hidden" value="o_paytype" name="o_paytype">
			<input name="o_totalprice" type="hidden" value="${food.f_price * quantity}">
			
			<div class="order_right">
		
				<table class="type05" style="text-align: center; background-color: beige;">
					<caption>결제</caption>
					<tr>
						<th scope="row">ID</th>
						<td>${sessionScope.id}</td>
					</tr>
					<tr>
						<th scope="row">상품번호</th>
						<td>${food.product_number}</td>
					</tr>
					<tr>
						<th scope="row">상품이름</th>
						<td>${food.f_name}</td>
					</tr>
					<tr>
						<th scope="row">수량</th>
						<td>${quantity}</td>
					</tr>
					<tr>
						<th scope="row">가격</th>
						<td>${food.f_price}</td>
					</tr>
					<tr>
						<th scope="row">결제 방법</th>
						<td>
							<input name="o_paytype" id="o_paytype" type="radio" value="imagine">
							<label for="가상계좌">가상계좌</label>
							<input name="o_paytype" id="o_paytype" type="radio" value="account_transfer">
							<label for="계좌이체">계좌이체</label>
							<input name="o_paytype" id="o_paytype" type="radio" value="kakao">
							<label for="카카오페이">카카오페이</label>
						</td>
					</tr>
					<tr>
						<th scope="row">요청사항</th>
						<td>
							<input name="o_req" id="o_req" type="text">
						</td>
					</tr>
					<tr>
						<th scope="row">총가격</th>
						<td>${food.f_price*quantity}</td>
					</tr>
				</table>
			</div>
			<input type="submit" value="결제" class="button"/>
	
	</form>
					</center>
</article> 					
<%@ include file="footer.jsp" %>
</body>
</html>