<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/content.css">
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<body>
<main>
	<div class="visual">
		<div class="img1">
			<img src="<%= request.getContextPath() %>/img/글자.png" alt = "FIND YOUR TASTE ONE WITH THE SUN" width=253px; height=323px;>
			<a href="">자세히 보기</a>
		</div>
		<div class="img_text1"><img src="https://image.istarbucks.co.kr/upload/common/img/main/2021/2021_m_summer1_coldbrew_tit.png" width=140px; height=79px;></div>
		<div class="img2"><img src="<%= request.getContextPath() %>/img/음료.png" alt = "포레스트 콜드 브루" width=359px; height=321px;></div>
		<div class="img_text2"><img src="https://image.istarbucks.co.kr/upload/common/img/main/2021/2021_summer1_blended_tit.png" width=229px; height=79px;></div>
		<div class="img3"><img src="<%= request.getContextPath() %>/img/음료2.png" alt = "바나나 크림 다크 초코 블렌디드" width=487px; height=445px;></div>
		<div class="img_text3"><img src="https://image.istarbucks.co.kr/upload/common/img/main/2021/2021_summer1_ade_tit.png"></div>
		<div class="img4"><img src="<%= request.getContextPath() %>/img/음료3.png" alt = "샤이닝 머스캣 에이드" width=391px; height=345px;></div>
		<div class="img5"><img src="<%= request.getContextPath() %>/img/card.png" alt="card" width=140px; height=96px;></div>		
	</div>
	<div class="notice_container">
		<div class="notice_left">
			<div class="notice_left_btn" style="margin-left: 165px; margin-top: 19px; color: #f6f5ef;">
				<ul>
					<li style="margin-right: 20px;"><img src="<%= request.getContextPath() %>/img/notice_ttl.png"></li>
					<li><a href="">시스템 개선 및 점검 안내</a></li>
					<li style="float:right;"><a href=""></a>
				</ul>
			</div>
		</div>
		<div class="notice_right">
			<div class="notice_right_btn">
				<p>스타벅스 프로모션</p>
			</div>
		</div>
	</div>
</main>
</body>
</html>