<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Azanda.</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" href="css/room_detail.css">
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

</script>
<body>

	<!--================ Header =================-->
	<div>
		<jsp:include page="header.jsp" />
	</div>
	<div class="hero-wrap"
		style="background-image: url('images/white.png'); height: 100px;">
	</div>
	<!--================ End Header =================-->

	<section class="ftco-section ftco-degree-bg">
	<!--================ 검색창 =====================-->
		
		<!--================ 검색창 =====================-->
	<div class="row"><!-- 본문 -->
		<!--================ 숙소 리스트 =================-->

		<div class="col-lg-6">
			<div class="container">
				<div class="row">
				
					<div class="col-lg-12">
						<div class="col-lg-12">
							<p>Azanda.에서 새로운 여행을 시작해 보세요.</p>
							<hr>
						</div>
						<div class="container">
						<c:forEach var="searchList" items="${searchList}" varStatus="status">
						<!-- 집 시작 -->
						<div class="row mb-4">
							<hr>
							<div class="col-lg-5 ">
								<a href="room_detail.do?seq_rm=${searchList.room.seq_rm }&guestNum=${searchOption.guestNum}&checkin=${searchOption.checkin}&checkout=${searchOption.checkout}">
									<img class="mySlides" src="images/room-1.jpg" style="width: 100%; height:100%; display:block;"> 
								</a>
							</div><!-- 사진슬라이드 끝 -->
							<div class="col-lg-7 text">
								<div>
									<c:set var="addrbefore" value="${searchList.room.addr}" />
									<c:set var="addrsplit" value="${fn:split(addrbefore,' ')[1]}"></c:set>
									Yeosu의 ${searchList.room.r_type} 전체
									<h5>${searchList.room.room_name}</h5>
								</div>

								<hr width="100px">

								<p>
									<span>최대 인원  ${searchList.room.person}명</span>
									<span aria-hidden="true"> · </span> 
									<span>침실 ${searchList.room.bed_room}개</span>
									<span aria-hidden="true"> · </span> 
									<span>침대 ${searchList.room.bed}개</span>
									<span aria-hidden="true"> · </span> 
									<span>욕실 ${searchList.room.bath_room}개</span>
								</p>
								<p>
									<span></span>
								</p>
								<p class="bottom-area d-flex">
									<span class="ml-auto">Book Now</span>
								</p>
								
							</div><!-- 숙소하나 끝 -->
					
						</div><!-- 집끝 -->
						</c:forEach>
						</div>
						
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
		
				//지도 중심좌표 
				var mapContainer = document.getElementById('kkomap'), // 지도를 표시할 div  
				mapOption = {
					center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					level : 5
				// 지도의 확대 레벨
				};

				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

				// 마커를 표시할 위치와 title 객체 배열입니다 
				var positions = [ {
					title : '카카오',
					latlng : new kakao.maps.LatLng(33.450705, 126.570677)
				}, {
					title : '생태연못',
					latlng : new kakao.maps.LatLng(33.450936, 126.569477)
				}, {
					title : '텃밭',
					latlng : new kakao.maps.LatLng(33.450879, 126.569940)
				}, {
					title : '근린공원',
					latlng : new kakao.maps.LatLng(33.451393, 126.570738)
				} ];

				// 마커 이미지의 이미지 주소입니다
				var imageSrc = 'images/icons/map_house.ico';

				for (var i = 0; i < positions.length; i++) {

					// 마커 이미지의 이미지 크기 입니다
					var imageSize = new kakao.maps.Size(64, 69);

					// 마커 이미지를 생성합니다    
					var markerImage = new kakao.maps.MarkerImage(imageSrc,
							imageSize);

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						map : map, // 마커를 표시할 지도
						position : positions[i].latlng, // 마커를 표시할 위치
						title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
						image : markerImage
					// 마커 이미지 
					});
				}
			</script>
		</div><!-- 지도 api 끝 -->

	</div><!-- 본문 끝 -->
	</section>
	<!--================ footer =================-->
	<div>
		<jsp:include page="footer.jsp" />
	</div>
	<!--================ end footer =================-->

</body>
</html>