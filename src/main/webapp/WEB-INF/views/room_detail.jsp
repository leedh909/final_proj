<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />

<style type="text/css">
.pt {
	margin-top: -9px;
}

.button {
	border: solid 0.5px;
	background: white;
	opacity: 1;
	border-radius: 8px;
}

.sticky {
	border: ridge 1px #000000;
	-moz-border-radius: 13px;
	-webkit-border-radius: 13px;
	border-radius: 13px;
	display: inline-block;
	position: sticky;
	top: 30px;
	width: 300px;
}

#myModalP {
	dialoWidth: 600px;
}

#kkomap {
	width: 100%;
	height: 300px;
	border-radius: 10px;
}

.mySlides {
	display: none
}
</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>

	<!--================ Header =================-->
	<div>
		<jsp:include page="header.jsp" />
	</div>
	<div class="hero-wrap"
		style="background-image: url('images/bg_5.jpg'); height: 100px;">
	</div>
	<!--================ End Header =================-->


	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<!--================ 숙소 정보 =================-->
			<!-- 숙소 사진 -->
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-6">사진1</div>
					<div class="col-md-3">사진2</div>
					<div class="col-md-3">사진3</div>
					<div class="row">
						<div class="col-md-3 col-md-offset-6">사진4</div>
						<div class="col-md-3">사진5</div>
					</div>

				</div>
			</div>
			<!-- 모달 전체사진보기 -->
			
			

			<!-- 숙소사진끝 -->
			<div class="row">
				<div class="col-lg-8">

					<!-- 숙소 이름 -->
					<section class="col-md-12 hotel-single mb-4 mt-4">
						<div>
							<h2>OO님이 호스팅하는 OO</h2>
							<div>
								<span>최대 인원 N명</span> 
								<span aria-hidden="true"> · </span> 
								<span>침실N개</span>
								<span aria-hidden="true"> · </span> 
								<span>침대 N개</span> 
								<span aria-hidden="true"> · </span> 
								<span>욕실 N개</span>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-1 mt-2 pl-3">
								<i class="fa fa-home" style="font-size: 30px;"></i>
							</div>
							<div class="col-md-11 mt-2">
								<h5>'집' 전체</h5>
								<p class="pt">'집'전체를 사용</p>
							</div>

							<div class="col-md-1 mt-2 pl-3">
								<i class="fa fa-door-open" style="font-size: 25px;"></i>
							</div>
							<div class="col-md-11 mt-2">
								<h5>체크인</h5>
								<p class="pt">' '를(을) 이용해 체크인 하세요</p>
							</div>

							<div class="col-md-1 mt-2 pl-3">
								<i class="fa fa-calendar" style="font-size: 28px;"></i>
							</div>
							<div class="col-md-11 mt-2">
								<h5>환불 정책</h5>
								<p class="pt">체크인 30일 전까지 취소하시면 전액이 환불됩니다.</p>
							</div>
						</div>
					</section>

					<hr>
					<!-- 집정보 -->
					<section class="col-md-12 hotel-single mb-4 mt-4">
						<div>숙소정보 출력</div>
					</section>
					<hr>

					<!-- 편의시설 -->
					<section class="col-md-12 hotel-single mb-4 mt-4">
						<h2>편의시설</h2>


						<button type="button" class="button" data-toggle="modal" data-target="#myModalP">편의시설 모두 보기</button>
						<!-- Modal -->
						<div class="modal fade" id="myModalP" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<h2>편의시설</h2>
										<button type="button" class="close" data-dismiss="modal">×</button>
									</div>
									<div class="modal-body">
										<p>Some text in the modal.</p>
									</div>

								</div>

							</div>
						</div>

					</section>
				</div>
				<section class="col-lg-4 sidebar mt-5">
					<div class="sticky">
						<div class="col-lg-12 mt-4 mb-4">
							<div>
								<span aria-hidden="true">&#8361;</span> <span aria-hidden="true">/박</span>

							</div>
							<form action="pay.do">
								<div>
									<input type="text" id="checkin_date" class="form-control"
										placeholder="Date from"> ~ <input type="text"
										id="checkout_date" class="form-control"
										placeholder="Date from">
								</div>
								<div class="col-lg-12 mt-2">
									<input type="submit" value="예약하기" class="btn btn-primary py-2"
										style="border-radius: 3px; width: 100%;">
								</div>

								<hr>
								<div>
									<span style="fontsize: 20px;"><b>총합계</b></span> <span><b>&#8361;</b></span>
								</div>
							</form>

						</div>
					</div>



				</section>

			</div>
			<hr>
			<div class="row">
				<section class="col-lg-12" style="position: relative;">
					<!-- 위치 -->
					<h2 class="pl-3">위치</h2>

					<div id="kkomap" style="width: 100%; height: 500px;"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=37eab138db2d17be2dbaeea4157c0d35&libraries=services"></script>
					<!-- services,cluster,drawing 라이브러리 불러오기 -->
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
					<script type="text/javascript">
					
						var mapContainer = document.getElementById('kkomap'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							level : 3// 지도의 확대 레벨
						};
					
						// 지도를 생성합니다    
						var map = new kakao.maps.Map(mapContainer, mapOption);

						var imageSrc = 'images/icons/map_house.ico', // 마커이미지의 주소입니다    
						imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
						imageOption = {
							offset : new kakao.maps.Point(27, 69)
						}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

						// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
						var markerImage = new kakao.maps.MarkerImage(imageSrc,
								imageSize, imageOption), markerPosition = new kakao.maps.LatLng(
								37.54699, 127.09598); // 마커가 표시될 위치입니다
						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();
						// 주소로 좌표를 검색합니다
						geocoder.addressSearch('서울시 강동구 고덕로 131', function(
								result, status) {
							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {
								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords,
									image : markerImage

								});
								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}

						});
					</script>
					<hr>
					<!--  -->

				</section>
			</div>
			<!--================ 숙소 정보 끝 =================-->
		</div>
	</section>

	<!--================ Footer =================-->
	<div>
		<jsp:include page="footer.jsp" />
	</div>
	<!--================ End Footer =================-->
</body>
</html>