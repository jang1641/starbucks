	<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% System.out.print("starbucks_board_view.jsp"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 l Starbucks Coffee Korea</title>


<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/starbucks_board_view.css">
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
	            <div class="b_title">
	            ${board.b_title }
	            </div>
            <pre><div class="b_cont">
${board.b_cont }</div></pre>
            <hr>
            
            <c:if test="${sessionScope.id != null }">
            <div class="btn_list_box">
            	<ul>
            	<li>
   <input type="button" id="btn_list1" value="수정" 
onClick="location.href='./BoardModifyAction.do?b_num=${board.b_num}&page=${page}' ">
            	</li>
            	<li>
                <input type="button" id="btn_list2" value="삭제" 
onClick="location.href='./BoardModifyAction.do?b_num=${board.b_num}&page=${page}' ">
            	</li>
            	<li>
            	<input type="button" id="btn_list3" value="목록" 
onClick="location.href='./BoardListAction.do?page=${page}' ">
            	</li>
                </ul>
            </div>
            </c:if>
            <c:if test="${sessionScope.id == null }">
                <a id="btn_list3" href="./BoardListAction.do?page=${page}">목록</a>
            </c:if>
            
            <table width="990px" class="notice_tb">
                <tr>
                    <th>윗글</th>
                    <td><a href="#">해당글이 없습니다.</a></td>
                </tr>
                <tr>
                    <th>아랫글</th>
                    <td><a href="#">시스템 개선 및 점검 안내</a></td>
                </tr>
            </table>
        </div>
    </div>
</body>

<!-- footer -->
<div id="jb-footer">
<jsp:include page="footer.jsp"></jsp:include>
</div>



</html>