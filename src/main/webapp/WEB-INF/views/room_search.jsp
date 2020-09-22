<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Azanda.</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<style type="text/css">
#kkomap {
	width: 100%;
	clear: both;
	overflow: hidden;
	display: flex;
	flex-direction: column;
	height:100%;
	position: sticky;	
}
.mySlides {display:none;} 

p {
	margin-top: 0;
	margin-bottom: 0;
}

.map_wrap {
	overflow: hidden;
	display: flex;
}

.radius_border {
	border: 1px solid #919191;
	border-radius: 5px;
}

.custom_typecontrol {
	position: absolute;
	top: 10px;
	right: 10px;
	overflow: hidden;
	width: 130px;
	height: 30px;
	margin: 0;
	padding: 0;
	z-index: 1;
	font-size: 12px;
	font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
}

.custom_typecontrol span {
	display: block;
	width: 65px;
	height: 30px;
	float: left;
	text-align: center;
	line-height: 30px;
	cursor: pointer;
}

.custom_typecontrol .btn {
	background: #fff;
	background: linear-gradient(#fff, #e6e6e6);
}

.custom_typecontrol .btn:hover {
	background: #f5f5f5;
	background: linear-gradient(#f5f5f5, #e3e3e3);
}

.custom_typecontrol .btn:active {
	background: #e6e6e6;
	background: linear-gradient(#e6e6e6, #fff);
}

.custom_typecontrol .selected_btn {
	color: #fff;
	background: #425470;
	background: linear-gradient(#425470, #5b6d8a);
}

.custom_typecontrol .selected_btn:hover {
	color: #fff;
}

.custom_zoomcontrol {
	position: absolute;
	top: 50px;
	right: 10px;
	width: 36px;
	height: 80px;
	overflow: hidden;
	z-index: 1;
	background-color: #f5f5f5;
}

.custom_zoomcontrol span {
	display: block;
	width: 36px;
	height: 40px;
	text-align: center;
	cursor: pointer;
}

.custom_zoomcontrol span img {
	width: 15px;
	height: 15px;
	padding: 12px 0;
	border: none;
}

.custom_zoomcontrol span:first-child {
	border-bottom: 1px solid #bfbfbf;
}
</style>
<script type="text/javascript">
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  x[1].style.display = "block";
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
<body>

	<!--================ Header =================-->
	<div>
		<jsp:include page="header.jsp" />
	</div>
	<div class="hero-wrap"
		style="background-image: url('images/bg_5.jpg'); height: 100px;">
	</div>
	<!--================ End Header =================-->


	<div class="row"><!-- 본문 -->

		<!--================ 숙소 리스트 =================-->

		<div class="col-lg-6">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="col-lg-12">
							<p>여행 날짜와 게스트 인원수를 입력하면 1박당 총 요금을 확인 할 수 있습니다.</p>
							<hr>
						</div>
						
						<hr>
						<div class="row"><!-- 집 시작 -->
							<div class="col-lg-5 ">
								<div class="w3-content w3-display-container">
									<img class="mySlides" src="images/room-1.jpg" style="width: 100%; height:100%; display:block;"> 
									<img class="mySlides" src="images/room-2.jpg" style="width: 100%; height:100%;">
									<img class="mySlides" src="images/room-3.jpg" style="width: 100%; height:100%;"> 
									<img class="mySlides" src="images/room-4.jpg" style="width: 100%; height:100%;">

									<button class="w3-button w3-opacity-8 w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
									<button class="w3-button w3-opacity-8 w3-display-right" onclick="plusDivs(1)">&#10095;</button>
								</div>

							</div><!-- 사진슬라이드 끝 -->
							<div class="col-lg-7 text">
								<div>
									Yeosu의 집 전체
									<h5>Luxury Restaurant</h5>
								</div>


								<p>Far far away, behind the word mountains, far from the
									countries</p>
								<hr>
								<p class="bottom-area d-flex">
									<span><i class="icon-map-o"></i> San Franciso, CA</span> 
									<span class="ml-auto"><a href="#">Book Now</a></span>
								</p>
							</div><!-- 숙소하나 끝 -->
							
						</div><!-- 집끝 -->

						
					</div>

					<!--================ 페이지 번호  =================-->
					<div class="col text-center mt-3 mb-3">
						<div class="block-27">
							<ul>
								<li><a href="#">&lt;</a></li>
								<li class="active"><span>1</span></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&gt;</a></li>
							</ul>
						</div>
					</div>
					<!--================ end 페이지 번호 =================-->
				</div>
			</div>
		</div><!-- 숙소리스트 끝 -->

		<!--================ 지도 api =================-->
		<div class="col-lg-6 map_wrap sidebar">
			<div id="kkomap"></div>
			<!-- 지도타입 컨트롤 div 입니다 -->
			<div class="custom_typecontrol radius_border">
				<span id="btnRoadmap" class="selected_btn"
					onclick="setMapType('roadmap')">지도</span> <span id="btnSkyview"
					class="btn" onclick="setMapType('skyview')">스카이뷰</span>
			</div>
			<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
			<div class="custom_zoomcontrol radius_border">
				<span onclick="zoomIn()"><img
					src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"
					alt="확대"></span> <span onclick="zoomOut()"><img
					src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png"
					alt="축소"></span>
			</div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=37eab138db2d17be2dbaeea4157c0d35"></script>
			<!-- services,cluster,drawing 라이브러리 불러오기 -->
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
			<script type="text/javascript">
				var container = document.getElementById('kkomap');
				var options = {//지도 생성시 필요한 기본 옵션
					center : new kakao.maps.LatLng(33.450701, 126.570667),//지도 중심좌표
					level : 6
				//지도 확대,축소 정도
				};

				var kkomap = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
				
			
			</script>
		</div><!-- 지도 api 끝 -->

	</div><!-- 본문 끝 -->

	<!--================ footer =================-->
	<div>
		<jsp:include page="footer.jsp" />
	</div>
	<!--================ end footer =================-->

</body>
</html>