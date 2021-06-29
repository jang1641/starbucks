<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타벅스</title>

<style>
* {
	margin: 0;
	padding: 0;
	color: var(- -color-font-black);
}
article {
	width: 71%;
    margin: 0 auto;
    padding-top: 150px;
}
article h2 {
	font-size: 36px;
	font-weight: bold;
	color: #222222;
}
article .nav {
	position: absoulte;
	padding-left: 940px;
	top: 60px;
}
article .nav2 {
	list-style: none;
	float: left;
	margin: 0 2.5px;
	font-size: 14px;
	color: #666666;
}
.box {
	padding: 30px 30px 0 30px;
    border: 1px solid #ddd;
    position: relative;
    border-radius: 5px;
    margin-bottom: 20px;
    margin-top: 25px;
}
.box .sub {
	padding-bottom: 30px;
	font-weight: bold;
	font-size: 18px;
}
.box .btn {
	position: absolute;
	right: 30px;
	top: 17px;
}
.box .tab {
	display: block;
	width: 200px;
	height: 35px;
	line-height: 35px;
	text-align: center;
	font-size: 14px;
	background: #006633;
    color: white;  
}
.box .tab2 {
	display: block;
	width: 200px;
	height: 35px;
	line-height: 35px;
	text-align: center;
	font-size: 14px;
	background: #006633;
    color: white;  
	left: 260px;
	position: absolute;
	top: 106px;
	background: #f4f4f1;
}
.box .cate {
	padding: 20px 0;
	margin-bottom: 25px;
}
.box .cate input {
	border-radius: 5px;
	display: inline-block;
	margin-right: 10px;
	
}	
.container {
	display: block;
	padding: 0;
}
.container .sel {
	margin-right: 8px;
	font-size: 12px;
	width: 100px;
	height: 25px;
}
.project {
	margin-top: 20px;
	margin-bottom: 20px;
}
.project .project_sub {
	padding: 20px;
	background: #f4f4f2;
	height: 20px;
}
.project .project_sub a {
	display: block;
	float: left;
	font-size: 18px;
	font-weight: bold;
	color: black;
}
.project img {
	display: block;
	float: left;
	margin-left: 15px;
	width: 45px;
	height: 25px;
}
.project span {
	display: block;
	float: left;
	margin-left: 5px;
	font-size: 13px;
    line-height: 25px;
	letter-spacing: -1px;
}
.menu_view {
	display: inline-block;
	width: 100%;
	padding-bottom: 90px;
}
.menu_view  ul {

}
.menu_view  li {
	float: left;
	list-style: none;
	width: 24%;
    margin: 0.5%;
}
.menu_view img {
	width: 100%;
}
.menu_view dd {
	font-size: 14px;
	
	color: #444;
	line-height: 45px;
	text-align: center;
	white-space: nowrap
}	
</style>

</head>
<body>
<div>
<header>
	<div class="head-wrap">		
		<img src="img/star.png">	
	</div>
	
	<div class="top_menu">
		<ul>
			<li>Sign in</li>
			<li>My Starbucks</li>
			<li>Customer Service & ideas</li>
			<li>Find a Store</li>	
			<li><img src="img/icon.png"></li>	
		</ul>
	</div> 
	
	<div class="sub_menu">
		<ul>
			<li>COFFEE</li>
			<li>MENU</li>
			<li>STORE</li>
			<li>RESPONSIBILITY</li>
			<li>STARBUCKS REWARDS</li>
			<li>WHAT'S NEW</li>
		</ul>
	
	</div>

	
</div>
</header>

<article>
	<div>
		<h2>음료</h2>
	</div>
	<div>
		<ul class="nav">
			<li class="nav2"><img src="img/home.png"></li>
			<li class="nav2">></li> 
			<li class="nav2">menu</li>
			<li class="nav2">></li>
			<li class="nav2">음료</li>
		</ul>
	</div>
	<div class="box">
		<h2 class="sub">분류보기</h2><hr>
		<div class="btn">
			<a href="#"><img src="img/list_btn.png"></a>
		</div><br>
		<div class="tab">
			<a href="#" style="color:white;">카테고리</a>
		</div>
		<div class="tab2">
			<a href="#">테마</a>
		</div>
		<div class="cate">
			<input type="checkbox" class="menu">전체 상품보기
			<input type="checkbox" class="menu">콜드 브루 커피
			<input type="checkbox" class="menu">브루드 커피
			<input type="checkbox" class="menu">에스프레소
			<input type="checkbox" class="menu">프라푸치노
			<input type="checkbox" class="menu">블렌디드
			<input type="checkbox" class="menu">스타벅스 피지오
			<input type="checkbox" class="menu">티(티바나)<br>
			<input type="checkbox" class="menu">기타 제조 음료
			<input type="checkbox" class="menu">스타벅스 주스(병음료)
		</div>
	</div>
	
	<div class="container">
		<input type="button" value="사진으로 보기" class="sel">
		<input type="button" value="영양정보로 보기" class="sel">		
	</div>
<!--메뉴시작 (콜드 브루 커피) -->	
	<div class="project">
		<div class="project_sub">
			<a href="#">콜드 브루 커피</a>
			<img src="img/cup.png">
			<span>디카페인에 에스프레소 샷 추가 가능(일부 음료 제외)</span>	
		</div>
	</div>
	
	<div class="menu_view">	
		<div>
			<ul>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold1.jpg"></a>
						</dt>
											
						<dd>나이트로 바닐라 크림</dd>
					</dl>
				</li>					
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold2.jpg"></a>
						</dt>
											
						<dd>미드나잇 베르가못 콜드 브루</dd>
					</dl>
				</li>				
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold3.jpg"></a>
						</dt>
											
						<dd>벨벳 다크 모카 나이트로</dd>
					</dl>
				</li>					
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold4.jpg"></a>
						</dt>
											
						<dd>프렌치 애플 타르트 나이트로</dd>
					</dl>
				</li>						
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold5.jpg"></a>
						</dt>
											
						<dd>나이트로 콜드 브루</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold6.jpg"></a>
						</dt>
											
						<dd>돌체 콜드 브루</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold7.jpg"></a>
						</dt>
											
						<dd>바닐라 크림 콜드 브루</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold8.jpg"></a>
						</dt>
											
						<dd>제주 비자림 콜드 브루</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold9.jpg"></a>
						</dt>
											
						<dd>콜드 브루</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold10.jpg"></a>
						</dt>
											
						<dd>콜드 브루 몰트</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/cold/cold11.jpg"></a>
						</dt>
											
						<dd>콜드 브루 플로트</dd>
					</dl>
				</li>		
		    </ul>
		</div>				
	</div>
<!--메뉴시작 (브루드 커피) -->	
	<div class="project">
		<div class="project_sub">
			<a href="#">브루드 커피</a>
			<img src="img/cup.png">
			<span>디카페인에 에스프레소 샷 추가 가능(일부 음료 제외)</span>	
		</div>
	</div>	
	<div class="menu_view">	
		<div>
			<ul>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/brd/brd1.jpg"></a>
						</dt>
											
						<dd>아이스 커피</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/brd/brd2.jpg"></a>
						</dt>
											
						<dd>오늘의 커피</dd>
					</dl>
				</li>		
		    </ul>
		</div>			
	</div>
<!--메뉴시작 (에스프레소) -->	
	<div class="project">
		<div class="project_sub">
			<a href="#">에스프레소</a>
			<img src="img/cup.png">
			<span>디카페인에 에스프레소 샷 추가 가능(일부 음료 제외)</span>	
		</div>
	</div>	
	<div class="menu_view">	
		<div>
			<ul>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf1.jpg"></a>
						</dt>
											
						<dd>제주 별다방 땅콩 라떼</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf2.jpg"></a>
						</dt>
											
						<dd>사케라또 아포가토</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf3.jpg"></a>
						</dt>
											
						<dd>스파클링 시트러스 에스프레소</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf4.jpg"></a>
						</dt>
											
						<dd>에스프레소 콘 파나</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf5.jpg"></a>
						</dt>
											
						<dd>에스프레소 마키아또</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf6.jpg"></a>
						</dt>
											
						<dd>아이스 카페 아메리카노</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf7.jpg"></a>
						</dt>
											
						<dd>카페 아메리카노</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf8.jpg"></a>
						</dt>
											
						<dd>아이스 카라멜 마키아또</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf9.jpg"></a>
						</dt>
											
						<dd>카라멜 마키아또</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf10.jpg"></a>
						</dt>
											
						<dd>아이스 카푸치노</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf11.jpg"></a>
						</dt>
											
						<dd>카푸치노</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf12.jpg"></a>
						</dt>
											
						<dd>라벤더 카페 브레베</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf13.jpg"></a>
						</dt>
											
						<dd>럼 샷 코르타도</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf14.jpg"></a>
						</dt>
											
						<dd>바닐라 빈 라떼</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf15.jpg"></a>
						</dt>
											
						<dd>스타벅스 돌체 라떼</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf16.jpg"></a>
						</dt>
											
						<dd>아이스 라벤더 카페 브레베</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf17.jpg"></a>
						</dt>
											
						<dd>아이스 바닐라 빈 라떼</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf18.jpg"></a>
						</dt>
											
						<dd>아이스 스타벅스 돌체 라떼</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf19.jpg"></a>
						</dt>
											
						<dd>아이스 카페 라떼</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf20.jpg"></a>
						</dt>
											
						<dd>카페 라떼</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf21.jpg"></a>
						</dt>
											
						<dd>아이스 카페 모카</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf22.jpg"></a>
						</dt>
											
						<dd>아이스 화이트 초콜릿 모카</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf23.jpg"></a>
						</dt>
											
						<dd>카페 모카</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf24.jpg"></a>
						</dt>
											
						<dd>화이트 초콜릿 모카</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf25.jpg"></a>
						</dt>
											
						<dd>바닐라 플랫 화이트</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf26.jpg"></a>
						</dt>
											
						<dd>바닐라 스타벅스 더블 샷</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf27.jpg"></a>
						</dt>
											
						<dd>블론드 바닐라 더블 샷 마키아또</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf28.jpg"></a>
						</dt>
											
						<dd>아이스 블론드 바닐라 더블 샷 마키아또</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf29.jpg"></a>
						</dt>
											
						<dd>에스프레소</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf30.jpg"></a>
						</dt>
											
						<dd>커피 스타벅스 더블 샷</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf31.jpg"></a>
						</dt>
											
						<dd>클래식 아포가토</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/sf/sf32.jpg"></a>
						</dt>
											
						<dd>헤이즐넛 스타벅스 더블 샷</dd>
					</dl>
				</li>			
					
		    </ul>
		</div>			
	</div>	
<!--메뉴시작 (프라푸치노) -->	
	<div class="project">
		<div class="project_sub">
			<a href="#">프라푸치노</a>
			<img src="img/cup.png">
			<span>디카페인에 에스프레소 샷 추가 가능(일부 음료 제외)</span>	
		</div>
	</div>		
	<div class="menu_view">	
		<div>
			<ul>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f1.jpg"></a>
						</dt>
											
						<dd>제주 별다방 땅콩 프라푸치노</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f2.jpg"></a>
						</dt>
											
						<dd>더블 에스프레소 칩 프라푸치노</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f3.jpg"></a>
						</dt>
											
						<dd>모카 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f4.jpg"></a>
						</dt>
											
						<dd>에스프레소 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f5.jpg"></a>
						</dt>
											
						<dd>자바 칩 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f6.jpg"></a>
						</dt>
											
						<dd>카라멜 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f7.jpg"></a>
						</dt>
											
						<dd>화이트 초콜릿 모카 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f8.jpg"></a>
						</dt>
											
						<dd>바닐라 크림 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f9.jpg"></a>
						</dt>
											
						<dd>제주 까망 크림 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f10.jpg"></a>
						</dt>
											
						<dd>제주 쑥떡 크림 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f11.jpg"></a>
						</dt>
											
						<dd>제주 유기농 말차로 만든 크림 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f12.jpg"></a>
						</dt>
											
						<dd>초콜릿 크림 칩 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f13.jpg"></a>
						</dt>
											
						<dd>화이트 딸기 크림 프라푸치노</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/fp/f14.jpg"></a>
						</dt>
											
						<dd>화이트 타이거 프라푸치노</dd>
					</dl>
				</li>				
		    </ul>
		</div>			
	</div>
<!--메뉴시작 (블렌디드) -->	
	<div class="project">
		<div class="project_sub">
			<a href="#">블렌디드</a>
			<img src="img/cup.png">
			<span>디카페인에 에스프레소 샷 추가 가능(일부 음료 제외)</span>	
		</div>
	</div>	
	<div class="menu_view">	
		<div>
			<ul>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/bd/bd1.jpg"></a>
						</dt>
											
						<dd>딸기 딜라이트 요거트 블렌디드</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/bd/bd2.jpg"></a>
						</dt>
											
						<dd>제주 천혜향 블랙 티 블렌디드</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/bd/bd3.jpg"></a>
						</dt>
											
						<dd>망고 패션 후르츠 블렌디드</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/bd/bd4.jpg"></a>
						</dt>
											
						<dd>망고 바나나 블렌디드</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/bd/bd5.jpg"></a>
						</dt>
											
						<dd>피치 & 레몬 블렌디드</dd>
					</dl>
				</li>			
		    </ul>
		</div>			
	</div>	
<!--메뉴시작 (스타벅스 피지오) -->	
	<div class="project">
		<div class="project_sub">
			<a href="#">스타벅스 피지오</a>
			<img src="img/cup.png">
			<span>디카페인에 에스프레소 샷 추가 가능(일부 음료 제외)</span>	
		</div>
	</div>	
	<div class="menu_view">	
		<div>
			<ul>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/po/po1.jpg"></a>
						</dt>
											
						<dd>블랙 티 레모네이드 피지오</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/po/po2.jpg"></a>
						</dt>
											
						<dd>쿨 라임 피지오</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/po/po3.jpg"></a>
						</dt>
											
						<dd>패션 탱고 티 레모네이드 피지오</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/po/po4.jpg"></a>
						</dt>
											
						<dd>핑크 자몽 피지오</dd>
					</dl>
				</li>		
		    </ul>
		</div>			
	</div>				
<!--메뉴시작 (티-티바나-) -->	
	<div class="project">
		<div class="project_sub">
			<a href="#">티(티바나)</a>
			<img src="img/cup.png">
			<span>디카페인에 에스프레소 샷 추가 가능(일부 음료 제외)</span>	
		</div>
	</div>	
	<div class="menu_view">	
		<div>
			<ul>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t1.jpg"></a>
						</dt>
											
						<dd>별궁 오미자 유스베리 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t2.jpg"></a>
						</dt>
											
						<dd>아이스 별궁 오미자 유스베리 티</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t3.jpg"></a>
						</dt>
											
						<dd>아이스 푸를 청귤 민트 티</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t4.jpg"></a>
						</dt>
											
						<dd>아이스 콩고물 블랙 밀크 티</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t5.jpg"></a>
						</dt>
											
						<dd>콩고물 블랙 밀크 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t6.jpg"></a>
						</dt>
											
						<dd>라임 패션 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t7.jpg"></a>
						</dt>
											
						<dd>민트 블렌드 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t8.jpg"></a>
						</dt>
											
						<dd>아이스 라임 패션 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t9.jpg"></a>
						</dt>
											
						<dd>아이스 민트 블렌드 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t10.jpg"></a>
						</dt>
											
						<dd>아이스 얼 그레이 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t11.jpg"></a>
						</dt>
											
						<dd>아이스 유스베리 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t12.jpg"></a>
						</dt>
											
						<dd>아이스 유자 민트 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t13.jpg"></a>
						</dt>
											
						<dd>아이스 잉글리쉬 브렉퍼스트 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t14.jpg"></a>
						</dt>
											
						<dd>아이스 제주 유기 녹차</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t15.jpg"></a>
						</dt>
											
						<dd>아이스 캐모마일 블렌드 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t16.jpg"></a>
						</dt>
											
						<dd>아이스 히비스커스 블렌드 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t17.jpg"></a>
						</dt>
											
						<dd>얼 그레이 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t18.jpg"></a>
						</dt>
											
						<dd>유스베리 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t19.jpg"></a>
						</dt>
											
						<dd>유자 민트 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t20.jpg"></a>
						</dt>
											
						<dd>잉글리쉬 브렉퍼스트 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t21.jpg"></a>
						</dt>
											
						<dd>자몽 허니 블랙 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t22.jpg"></a>
						</dt>
											
						<dd>제주 유기 녹차</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t23.jpg"></a>
						</dt>
											
						<dd>캐모마일 블렌드 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t24.jpg"></a>
						</dt>
											
						<dd>피치 젤리 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t25.jpg"></a>
						</dt>
											
						<dd>히비스커스 블렌드 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t26.jpg"></a>
						</dt>
											
						<dd>아이스 자몽 허니 블랙 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t27.jpg"></a>
						</dt>
											
						<dd>피치 젤리 아이스 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t28.jpg"></a>
						</dt>
											
						<dd>돌체 블랙 밀크 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t29.jpg"></a>
						</dt>
											
						<dd>아이스 돌체 블랙 밀크 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t30.jpg"></a>
						</dt>
											
						<dd>아이스 제주 유기농 말차로 만든 라떼</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t31.jpg"></a>
						</dt>
											
						<dd>아이스 차이 티 라떼</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t32.jpg"></a>
						</dt>
											
						<dd>아이스 허니 얼 그레이 밀크 티</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t33.jpg"></a>
						</dt>
											
						<dd>제주 유기농 말차로 만든 라떼</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t34.jpg"></a>
						</dt>
											
						<dd>차이 티 라떼</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/tea/t35.jpg"></a>
						</dt>
											
						<dd>허니 얼 그레이 밀크 티</dd> 
					</dl>
				</li>		
					
		    </ul>
		</div>			
	</div>						
<!--메뉴시작 (기타 제조 음료) -->	
	<div class="project">
		<div class="project_sub">
			<a href="#">기타 제조 음료</a>
			<img src="img/cup.png">
			<span>디카페인에 에스프레소 샷 추가 가능(일부 음료 제외)</span>	
		</div>
	</div>	
	<div class="menu_view">	
		<div>
			<ul>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr1.jpg"></a>
						</dt>
											
						<dd>아이스 체리블라썸 화이트 초콜릿</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr2.jpg"></a>
						</dt>
											
						<dd>체리블라썸 화이트 초콜릿</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr3.jpg"></a>
						</dt>
											
						<dd>제주 청귤 레모네이드</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr4.jpg"></a>
						</dt>
											
						<dd>시그니처 핫 초콜릿</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr5.jpg"></a>
						</dt>
											
						<dd>아이스 시그니처 초콜릿</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr6.jpg"></a>
						</dt>
											
						<dd>라임 플로터 위드 리저브 CB 샷</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr7.jpg"></a>
						</dt>
											
						<dd>스팀 우유</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr8.jpg"></a>
						</dt>
											
						<dd>아이스 제주 까망 라떼</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr9.jpg"></a>
						</dt>
											
						<dd>오렌지 플로터 위드 리저브 CB 샷</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr10.jpg"></a>
						</dt>
											
						<dd>우유</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr11.jpg"></a>
						</dt>
											
						<dd>제주 까망 라떼</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/gr/gr12.jpg"></a>
						</dt>
											
						<dd>제주 쑥쑥 라떼</dd>
					</dl>
				</li>		
						
		    </ul>
		</div>			
	</div>						
<!--메뉴시작 (스타벅스 주스) -->	
	<div class="project">
		<div class="project_sub">
			<a href="#">스타벅스 주스(병음료)</a>
			<img src="img/cup.png">
			<span>디카페인에 에스프레소 샷 추가 가능(일부 음료 제외)</span>	
		</div>
	</div>	
	<div class="menu_view">	
		<div>
			<ul>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc1.jpg"></a>
						</dt>
											
						<dd>기운내라임 190ML</dd> 
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc2.jpg"></a>
						</dt>
											
						<dd>파이팅 청귤 190ML</dd>
					</dl>
				</li>	
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc3.jpg"></a>
						</dt>
											
						<dd>한방에 쭉 감당 190ML</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc4.jpg"></a>
						</dt>
											
						<dd>도와줘 흑흑 190ML</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc5.jpg"></a>
						</dt>
											
						<dd>딸기주스 190ML</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc6.jpg"></a>
						</dt>
											
						<dd>망고주스 190ML</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc7.jpg"></a>
						</dt>
											
						<dd>수박주스 190ML</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc8.jpg"></a>
						</dt>
											
						<dd>케일&사과주스 190ML</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc9.jpg"></a>
						</dt>
											
						<dd>토마토주스 190ML</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc10.jpg"></a>
						</dt>
											
						<dd>퍼플베리 굿 190ML</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc11.jpg"></a>
						</dt>
											
						<dd>한라봉주스 190ML</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc12.jpg"></a>
						</dt>
											
						<dd>햇사과 주스 190ML</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc13.jpg"></a>
						</dt>
											
						<dd>블루베리 요거트 190ML</dd>
					</dl>
				</li>		
				<li>
					<dl>
						<dt>
							<a href="#"><img src="img/jc/jc14.jpg"></a>
						</dt>
											
						<dd>치아씨드 요거트 190ML</dd>
					</dl>
				</li>				
						
		    </ul>
		</div>			
	</div>							
			
</article>

<%@ include file="footer.jsp" %>
    

</body>
</html>