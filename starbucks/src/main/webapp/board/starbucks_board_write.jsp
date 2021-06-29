<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지글 작성 l Starbucks Coffee Korea</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/starbucks_board_write.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">


    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(function () {
            $("form").submit(function () {
                if ($("#b_title").val() == "") {
                    alert("제목을 입력해 주세요.");
                    return false;
                }
                if ($("#b_content").val() == "") {
                    alert("공지글을 입력해 주세요.");
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
                <h1>공지글 작성</h1>
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
                            <li><a href="#" class="this">공지글작성</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 검색창 -->
            <div class="overflow"></div>
            
            <div class="top">
                
                <form method="post" action="<%=request.getContextPath() %>/BoardAddAction.do">
                    <div id="admin_name">
                    <c:if test="${sessionScope.id!=null }">
                    작성자: ${sessionScope.id } 님
                    </c:if>
                      <c:if test="${sessionScope.id==null }">
                    
                    </c:if>
                    </div>
                    
                <table width="990px" class="notice_tb">

                    <tr>
                       <input type="text" placeholder="제목" id="b_title" name="title" autofocus><br><br>
                    </tr>
                    <tr>
                        <textarea placeholder="공지글을 작성해 주세요" id="b_content" name="content"></textarea>
                    </tr>
                    <tr>
                        <div id="btn_align">
                              <input type="submit" id="btn_submit" value="등록" >
                             <input type="reset" id="btn_reset" value="취소">
                        </div>
                      
                    </tr>

                </table>
            </form>
            </div>
        </div>
    </div>
</body>

<!-- footer -->
<div id="jb-footer">
<jsp:include page="footer.jsp"></jsp:include>
</div>



</html>