<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Azanda.</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="css/room_detail.css">
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<!-- flatpickr -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

<script type="text/javascript">

$(function(){
	//체크인,체크아웃,게스트 수  초기값 
	if("${searchOption.checkin}" != null ||"${searchOption.checkin}" != ''){
		$("#indate").val("${searchOption.checkin}");
	}else{
		$("#indate").val("날짜 선택");
	}
	
	if("${searchOption.checkout}" != null || "${searchOption.checkout}" != ''){
		$("#outdate").val("${searchOption.checkout}");
	}else{
		$("#outdate").val("날짜 선택");	
	}
	
	if("${searchOptioin.guestNum}" != null || "${searchOption.guestNum}" != ''){
		$("#guestNum").val("게스트"+"${searchOption.guestNum}"+"명")
	}else{
		$("#guestNum").val("1");	
	}
	
	//가격 합 구하기 
	
});


//체크인 달력
function inpickr(check_in){
	check_in.flatpickr({
		minDate :"today",	
		dateFormat: "Y-m-d",
	});
};
//체크아웃 달력
function outpickr(check_out){
	check_out.flatpickr({
		minDate : "today",
		dateFormat: "Y-m-d",
	});
};


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
			<div class="col-lg-12">
				<h2><b>${roomInfo.room.room_name}</b></h2>
				<c:set var="addrbefore" value="${roomInfo.room.addr}" />
				<c:set var="addrsi" value="${fn:split(addrbefore,' ')[0]}"></c:set>
				<c:set var="addrgu" value="${fn:split(addrbefore,' ')[1]}"></c:set>
				<p>
					${addrgu}, ${addrsi}
				</p>
			</div>
			<div class="col-md-12"><!-- 숙소 사진 -->
			<div class="w3-display-container">
				<div class="grid-container">
					<div class="grid-item item1">사진1</div>
					<div class="grid-item item2">사진2</div>
					<div class="grid-item item3">사진3</div>
					<div class="grid-item item4">사진4</div>
					<div class="grid-item item5">사진5</div>
				</div>
				</div>
			</div><!-- 숙소사진끝 -->
			<div class="row">
				<div class="col-lg-8">

					<!-- 숙소 이름 -->
					<section class="col-md-12 hotel-single mb-4 mt-4">
						<div>
							
							<h2><b>${hostInfo.name}님이 호스팅하는 ${roomInfo.room.r_type}전체</b></h2>
							<div>
								<span>최대 인원 ${roomInfo.room.person}명</span> 
								<span aria-hidden="true"> · </span> 
								<span>침실 ${roomInfo.room.bed_room}개</span>
								<span aria-hidden="true"> · </span> 
								<span>침대 ${roomInfo.room.bed}개</span> 
								<span aria-hidden="true"> · </span> 
								<span>욕실 ${roomInfo.room.bath_room}개</span>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-1 mt-2 pl-3">
								<i class="fa fa-home" style="font-size: 30px;"></i>
							</div>
							<div class="col-md-11 mt-2">
								<h5>${roomInfo.room.r_type} 전체</h5>
								<p class="pt">${roomInfo.room.r_type}전체를 단독으로 사용하시게 됩니다.</p>
							</div>

							<div class="col-md-1 mt-2 pl-3">
								<i class="fa fa-door-open" style="font-size: 25px;"></i>
							</div>
							<div class="col-md-11 mt-2">
								<h5>체크인</h5>
								<p class="pt">${roomInfo.room.checkin}을(를) 이용해 체크인 하세요</p>
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
						<div>
							<pre>${roomInfo.intro.title }</pre>
							<pre>${roomInfo.intro.context}</pre>
						</div>
					</section>
					<hr>

					<!-- 편의시설 -->
					<section class="col-md-12 hotel-single mb-4 mt-4">
						<h2>편의시설</h2>


						<button type="button" class="button _13e0raay" style="margin-top:24px;" data-toggle="modal" data-target="#myModalP">편의시설 모두 보기</button>
						<!-- Modal -->
						<div class="modal fade" id="myModalP" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<!-- <div class="_1lplc7">
										<button type="button" class="close" data-dismiss="modal" style="z-index:200">×</button>
									</div> -->
									<section class="_1v5ksyp">
										<div class="_1kb5zmd">
											<h2 tabindex="-1" class="_14i3z6h">편의시설</h2>
										</div>
											<div style="margin-bottom: 60px !important">
												<div class="_1crk6cd">
													<h3 tabindex="-1" class="_14i3z6h">기본시설</h3>
												</div>
												<div class="_vzrbjl">
													<c:forEach items="${detail}" var="detail">
														<c:if test="${detail != 'null'}">
															<c:out value="${detail}" />
														<hr>
														</c:if>
													</c:forEach>
												</div>
											</div>
											<div style="margin-bottom: 60px !important">
												<div class="_1crk6cd">
													<h3 tabindex="-1" class="_14i3z6h">편의시설</h3>
												</div>
												<div class="_vzrbjl">
													<c:forEach items="${facility}" var="facility">
														<c:if test="${facility != 'null'}">
															<c:out value="${facility}" />
														<hr>
														</c:if>
													</c:forEach>
												</div>
											</div>
											<div style="margin-bottom: 60px !important">
												<div class="_1crk6cd">
													<h3 tabindex="-1" class="_14i3z6h">숙소 규정</h3>
												</div>
												<div class="_vzrbjl">
													<c:forEach items="${rule}" var="facility">
														<c:if test="${rule != 'null'}">
															<c:out value="${rule}" />
														<hr>
														</c:if>
													</c:forEach>
												</div>
											</div>
											<div style="margin-bottom: 60px !important">
												<div class="_1crk6cd">
													<h3 tabindex="-1" class="_14i3z6h">안전시설</h3>
												</div>
												<div class="_vzrbjl">
													<c:choose>
														<c:when test="${!empty safety}">
															<c:forEach items="${safety}" var="safety">
																<c:if test="${safety != 'null'}">
																	<c:out value="${safety }" />
																	<hr>
																</c:if>
															</c:forEach>
														</c:when>
														<c:otherwise>
															<p style="text-decoration:line-through">
																<c:out value="화재탐지기"/>
																<c:out value="일산화 탄소 감지기" />
															</p>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
								
								</section>

								</div><!-- modal content -->

							</div>
						</div>

					</section>
				</div>
				<section class="col-lg-4 sidebar mt-5">
					<div class="sticky">
						<div class="col-lg-12 mt-4 mb-3">
							<form action="pay.do">
							<input type="hidden" value="">
								<div class="_13vog1a mb-4">
									<div class="_80f7zz">
										<div class="_ymq6as">
											<span>
												<span class="_pgfqnw" aria-hidden="true">₩ &nbsp;<fmt:formatNumber value="${roomInfo.room.price}" pattern="#,###" /></span>
												<span class="_1l0ezq0" aria-hidden="true">/박</span>
											</span>
										</div>
									</div>
								</div>
								<div class="_e296pg">
									<div>
										<div class="_poaz3m" style="border-radius: 8px;">
											<div class="_jro6t0">
												<div class="_zdxht7">
													<div class="_e296pg" style="flex: 1 1 0%;">
														<div class="_sbmagf"
															style="background: none; border-radius: 8px 8px 0px 0px; top: 0px; left: 0px; right: 0px; bottom: -1px;"></div>
														<div class="_11wiged"
															aria-label="날짜 변경하기; 체크인: undefined; 체크아웃: undefined"
															aria-invalid="false" role="button" tabindex="0">
															<div class="_1acx77b">
																<label class="_7eq2v2">체크인</label>
																<div class="_1ygdnkvm">
																	<input type="text" class="inputdate" name="check_in" id="indate"
																		onfocus="inpickr(this)" readonly="readonly">
																</div>
															</div>
															<div class="_14tl4ml5">
																<label class="_7eq2v2">체크아웃</label>
																<div class="_1ygdnkvm">
																	<input class="inputdate"type="text" name="check_out" id="outdate"
																		onfocus="outpickr(this)" readonly="readonly" >
																</div>
															</div>
														</div>
														<div class="_t26glb"
															style="top: 0px; left: 0px; right: 0px; bottom: -1px; border-radius: 8px 8px 0px 0px; border-color: rgb(176, 176, 176); border-width: 1px; z-index: 0;"></div>
													</div>
												</div>
											</div>
											<div class="_jro6t0">
												<div class="_bp34sw">
													<div class="_e296pg" style="flex: 1 1 0%;">
														<div class="_sbmagf"
															style="background: none; border-radius: 0px 0px 8px 8px; top: 0px; left: 0px; right: 0px; bottom: -1px;"></div>
														<div class="_11wiged" aria-expanded="false"
															aria-haspopup="true"
															aria-labelledby="guests-label GuestPicker-book_it-trigger"
															aria-disabled="false" role="button" tabindex="0">
															<label for="GuestPicker-book_it-trigger" class="_1x080uh">
															<div class="_7eq2v2">인원</div>
																<div class="_1wo1vgi" id="GuestPicker-book_it-trigger"
																	aria-invalid="false" aria-disabled="false">
																	<div class="_1ir6ymk">
																		<input type="text" class="inputdate" readonly="readonly" id="guestNum" name="guestNum" value="게스트  1 명" />
																	</div>
																</div>
															</label>
															<div class="_vgx32s">
																<svg viewBox="0 0 18 18" role="presentation"
																	aria-hidden="true" focusable="true"
																	style="height: 16px; width: 16px; display: block; fill: currentcolor;">
																<path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z"
																		fill-rule="evenodd"></path></svg>
															</div>
														</div>
														<div class="_t26glb"
															style="top: 0px; left: 0px; right: 0px; bottom: -1px; border-radius: 0px 0px 8px 8px; border-color: rgb(176, 176, 176); border-width: 1px; z-index: 0;"></div>
													</div>
													<div></div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="mt-3">
									<input type="submit" value="예약하기" class=" btn btn-primary py-2" style="border-radius: 3px; width: 100%;">
								</div>
								
								<div class="_1cvivhm" id="calcul">

										<div class="_ud8a1c">
											<ul class="_1hvzytt">
												<li class="_ryvszj">
													<span class="_bmsen5">
														<div class="_17y0hv9">
															<div>
																<input type="button" class="_ebe4pze" />
															</div>
														</div>
													</span>
													<span class="_ra05uc">₩130,000</span>
												</li>
											</ul>
											<ul class="_inlpfr">
												<li class="_adhikmk">
													<span class="_plc5prx">총 합계</span>
													<span class="_1d3ext9m">₩150,188</span>
												</li>
											</ul>
										</div>
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
					<c:set var="addrbefore" value="${roomInfo.room.addr}" />
					<c:set var="addrsi" value="${fn:split(addrbefore,' ')[0]}"></c:set>
					<c:set var="addrgu" value="${fn:split(addrbefore,' ')[1]}"></c:set>
					<p class="mt-4">
						<b>${addrgu}, ${addrsi}</b>
					</p>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=37eab138db2d17be2dbaeea4157c0d35&libraries=services"></script>
					<!-- services,cluster,drawing 라이브러리 불러오기 -->
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
					<script type="text/javascript">
						//숙소 주소 
						var address = "${roomInfo.room.addr}";
						
						var mapContainer = document.getElementById('kkomap'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701, 126.570667),
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
						var markerImage = new kakao.maps.MarkerImage(imageSrc,imageSize, imageOption), 
						markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();
						// 주소로 좌표를 검색합니다
						geocoder.addressSearch(address, function(
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