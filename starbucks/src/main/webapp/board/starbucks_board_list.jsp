<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%	
	
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8"); 
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 l Starbucks Coffee Korea</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/starbucks_board_list.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">


    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(function () {
            $("form").submit(function () {
                if ($("#search_input").val() == "") {
                    alert("검색어를 입력해 주세요.");
                    return false;
                }
            });
        });

    </script>
</head>

<body>

<!-- header -->
<div id="jb-header">
<jsp:include page="header.jsp"></jsp:include>
</div>



    <div class="wrapper">
        <div class="content">
            <!-- 헤드 공지사항 -->
            <div class="notice">
                <h1>공지사항</h1>
                <!-- 스몰맵 -->
                <div class="smap">
                    <div id="smap">
                        <ul>
                            <li><a href="#"><img src="//image.istarbucks.co.kr/common/img/common/icon_home.png"
                                        alt="홈으로"></a></li>
                            <li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png"
                                    alt="하위메뉴"></li>
                            <li class="en"><a href="#">WHAT'S NEW</a></li>
                            <li><img class="arrow" src="//image.istarbucks.co.kr/common/img/common/icon_arrow.png"
                                    alt="하위메뉴"></li>
                            <li><a href="#" class="this">공지사항</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 검색창 -->
            <div class="overflow"></div>
            <div class="search">
                <div class="searching_box">
                    <form action="#">
                        <input id="search_input" type="search" placeholder="검색어를 입력해 주세요.">
                        <input id="search_btn" type="submit" value="검색">
                    </form>
                </div>
            </div>
            <div class="top">
            <c:if test="${sessionScope.id !=null }">
            <div>
            <a href="<%=request.getContextPath() %>/BoardForm.do">[[글 작성하기]]</a>
            </div>
            </c:if>
            <c:if test="${sessionScope.id ==null }">
            </c:if>
                <table width="990px" class="notice_tb">
                    <colgroup>
                        <col width="7.45454%">
                        <col width="74.5454%">
                        <col width="10.90909%">
                        <col width="*">
                    </colgroup>

                    <tr>
                        <th scope="col">NO</th>
                        <th scope="col">제목</th>
                        <th scope="col">날짜</th>
                        <th scope="col">조회수</th>
                    </tr>

<c:set var="num" value="${listcount - (page-1) * 10 }"/>
	<c:forEach var="b" items="${boardlist }">
	<tr>
		<td>${num}
			<c:set var="num" value="${num-1}"/>
		</td>
		<td>
		
<a href="./BoardDetailAction.do?b_num=${b.b_num}&page=${page}">		
				${b.b_title}
			</a>	
		</td>
		<td>
			<fmt:formatDate value="${b.b_reg}"
			                pattern="yyyy-MM-dd"/>
		</td>
		<td>${b.b_hits}</td>
	</tr>
	</c:forEach>

</table> <br><br>
<center>
<!-- 페이지 처리 -->
<c:if test="${listcount > 0 }">

<!-- 1 페이지로 이동 -->
<a href="./BoardListAction.do?page=1"
   style="text-decoration:none"> << </a>

<!-- 이전 블럭으로 이동 -->
<c:if test="${startPage > 10}">
	<a href="./BoardListAction.do?page=${startPage - 10}">[이전]</a>
</c:if>

<!-- 각 블력에 10개의 페이지 출력 -->
<c:forEach var="i" begin="${startPage}" end="${endPage}">
	<c:if test="${i == page }">		<!-- 현재 페이지 -->
		[${i}]
	</c:if>
	<c:if test="${i != page }">		<!-- 현재 페이지가 아닌경우 -->
		<a href="./BoardListAction.do?page=${i}">[${i}]</a>
	</c:if>
</c:forEach>

<!-- 다음 블럭으로 이동 -->
<c:if test="${endPage < pageCount}">
	<a href="./BoardListAction.do?page=${startPage + 10}">[다음]</a>
</c:if>

<!-- 마지막 페이지로 이동 -->
<a href="./BoardListAction.do?page=${pageCount}"
   style="text-decoration:none"> >> </a>

</c:if>
</center>
            </div>
        </div>
    </div>
    
    
<!-- footer -->
<div id="jb-footer">
<jsp:include page="footer.jsp"></jsp:include>
</div>

    
</body>

</html>