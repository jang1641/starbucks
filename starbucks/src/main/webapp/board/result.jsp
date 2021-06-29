<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${result == 1}">
	<script>
		alert('결제해주셔서 감사합니다. 다음에 또 이용해주세요.');
		location.href="./index.jsp";
	</script>
</c:if>

</body>
</html>