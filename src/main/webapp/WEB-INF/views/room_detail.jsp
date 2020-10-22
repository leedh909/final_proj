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
//체크인,체크아웃 초기값 설정
	if(("${searchOption.checkin}" != null && "${searchOption.checkin}" != '')){
		$("#rangeDate").val("${searchOption.checkin}"+"to"+"${searchOption.checkout}");
	}else{
		$("#rangeDate").val("날짜 선택");
		
	}

	/* 	if("${searchOption.checkin}" != null && "${searchOption.checkin}" != ''){
		$("#indate").val("${searchOption.checkin}");
	}else{
		$("#indate").val("날짜 선택");
		
	}
	
	if("${searchOption.checkout}" != null && "${searchOption.checkout}" != ''){
		$("#outdate").val("${searchOption.checkout}");
	}else{
		$("#outdate").val("날짜 선택");
	} */
	
	//게스트 수 초기 설정
	if("${searchOption.guestNum}" != null && "${searchOption.guestNum}" != ''){
		if("${searchOption.guestNum}" == 0){
			$("#guestcount").val("1");
			
		}else{
			$("#guestcount").val("${searchOption.guestNum}");
		}
	}else{
		$("#guestcount").val("1");
	}
	
	//날짜 미선택시 submit 비활성화
	/* let indate = $("#indate").val();
	let outdate = $("#outdate").val(); */
	let rangeDate = $("#rangeDate").val();

	if(rangeDate == "날짜 선택"){
		$("#submit").attr("disabled",true);
		$("#show").show();
	}else{
		$("#submit").attr("disabled",false);
		$("#show").hide();
	}
	/* if(indate =="날짜 선택" || outdate =="날짜 선택"){
		$("#submit").attr("disabled",true);
		$("#show").show();
	}else if(indate !="날짜 선택" && outdate !="날짜 선택"){
		$("#submit").attr("disabled",false);
		$("#show").hide();
	} */
	//첫번째 숙소사진 보이게 하기 
	$(".mySlides:first").css("display","block");

});
//faltpickr from-to 만들기
console.log("${booked}");
console.log("${booked.indate}");
console.log("${booked.indate.size()}");

let arrayin = new Array();
let arrayout = new Array();

<c:forEach var='itemList' items='${booked.indate}' >
arrayin.push('${itemList}');
</c:forEach>
<c:forEach var="itemList" items="${booked.outdate}">
arrayout.push("${itemList}");
</c:forEach>
console.log(arrayout);

let disabled = new Array();
for (let i = 0; i < arrayin.length; i++) {
	let dOb = new Object();

	dOb.from = arrayin[i];
	dOb.to = flatpickr.parseDate(arrayout[i], "Y-m-d");

	disabled.push(dOb);
};

function rangepickr(){
	rangeDate.flatpickr({
	    mode: "range",
	    minDate: "today",
	    dateFormat: "Y-m-d",
	    disable: disabled,
	    onValueUpdate : function(selectDates){
			if( selectDates != "날짜 선택"){
				$("#show").hide();
				$("#submit").removeAttr('disabled');
			}
		},
	});
};

/* //체크인 달력
function inpickr() {
	indate.flatpickr({
		minDate : "today",
		dateFormat : "Y-m-d",
		disable : disabled,
		onValueUpdate : function(selectDates){
			let outd = $("#outdate").val();
			if(outd != "날짜 선택"){
				$("#show").hide();
				$("#submit").removeAttr('disabled');
			}
		},
	});

};

//체크아웃 달력
function outpickr() {
	outdate.flatpickr({
		minDate : "today",
		dateFormat : "Y-m-d",
		disable : disabled,
		onValueUpdate : function(selectDates){
			let ind = $("#indate").val();
			if(ind != "날짜 선택"){
				$("#show").hide();
				$("#submit").removeAttr('disabled');
				
		
			}
		},
	});

};  */


//숙소 사진
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}

//게스트 수 변화
	function upCount() {
		var guestAmount = $("#guestcount");

		if (guestAmount.val() < "${roomInfo.room.person}") {
			$("#bnt-up").attr("disabled",false);
			guestAmount.val(parseInt($("#guestcount").val()) + 1);
			
		} else {
			$("#bnt-up").attr("disabled", true);
		}
	};

	function downCount() {
		var guestAmount = $("#guestcount");

		if (guestAmount.val() > 1) {
			guestAmount.val(parseInt($("#guestcount").val()) - 1);
		} else {
			guestAmount.val(parseInt($("#gusetcount").val()) = 1);
		}
	};
	
</script>
</head>
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
		<div class="container">
			<!--================ 숙소 정보 =================-->
			<div class="col-lg-12">
				<h1><b>${roomInfo.room.room_name}</b></h1>
				<c:set var="addrbefore" value="${roomInfo.room.addr}" />
				<c:set var="addrsi" value="${fn:split(addrbefore,' ')[0]}"></c:set>
				<c:set var="addrgu" value="${fn:split(addrbefore,' ')[1]}"></c:set>
				<p>
					${addrgu}, ${addrsi}
				</p>
			</div>
			<div class="col-lg-12"><!-- 숙소 사진 -->
				<div class="w3-contentw3-display-container" style="margin:0px; wdith:100%;">
  					<img class="mySlides" src="images/hotel-1.jpg" style="width:100%">
  					<img class="mySlides" src="images/hotel-2.jpg" style="width:100%">
  					<img class="mySlides" src="images/hotel-3.jpg" style="width:100%">
  					<img class="mySlides" src="images/hotel-4.jpg" style="width:100%">

  					<button class="w3-button w3-white w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
  					<button class="w3-button w3-white w3-display-right" onclick="plusDivs(1)">&#10095;</button>
			</div>
			</div><!-- 숙소사진끝 -->
			<div class="row">
				<div class="col-lg-8">

					<!-- 숙소 이름 -->
					<section class="col-md-12 hotel-single mb-4 mt-4">
						
						<div class="row">
							<div class="col-lg-9">
							
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
						<!-- 호스트 프로필 -->
						<div class="col-lg-3">
							<div class="profile">
								<img style="object-fit:cover; width:100%; height:100%;" src="storage/profile/baseprofile.jpg">
							</div>
						</div>
						</div><!-- 숙소 이름 row -->
						
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
								<p class="pt">체크인 5일 전까지 취소하시면 전액이 환불됩니다.</p>
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
					<section class="col-lg-12 hotel-single mb-4 mt-4">
						<h2><b>편의시설</b></h2>
						<div class="_1byskwn my-4">
							<div class="_19xnuo97">
								<div class="row"><!-- detail 4개 -->
								<c:set var="loop_stop" value="false"/>
								<c:set var="i" value="1" />
									<c:forEach var="detail" items="${detail}" >
									<c:if test="${loop_stop ne true }">
										<c:if test="${detail!='null' && detail!='NULL'}">
											<c:set var="i" value="${i+1 }" />
											<c:if test="${i%2 == 0 }">
										</div><div class="row">
											</c:if>
									<div class="col-lg-1 mt-1">
										<i class="fa fa-calendar" style="font-size: 25px;"></i>
									</div>
									<div class="col-lg-5" style="font-size: 25px;">
										<c:out value="${detail }"></c:out>
									</div>
										</c:if>
										<c:if test="${i eq 5 }">
											<c:set var="loop_stop" value="true" />
										</c:if>
									</c:if>	
									</c:forEach>
								</div><!-- detail 4개 -->
								<div class="row"><!-- facility 2개 -->
								<c:set var="facility_stop" value="false"/>
								<c:set var="j" value="1" />
									<c:forEach var="facility" items="${facility}" >
									<c:if test="${facility_stop ne true }">
										<c:if test="${facility!='null' && facility!='NULL'}">
											<c:set var="j" value="${j+1 }" />
											<c:if test="${j%2 == 0 }">
										</div><div class="row">
											</c:if>
									<div class="col-lg-1 mt-1">
										<i class="fa fa-calendar" style="font-size: 25px;"></i>
									</div>
									<div class="col-lg-5" style="font-size: 25px;">
										<c:out value="${facility }"></c:out>
									</div>
										</c:if>
										<c:if test="${j eq 3 }">
											<c:set var="facility_stop" value="true" />
										</c:if>
									</c:if>	
									</c:forEach>
								</div><!-- facility 2개 -->
								<div class="row"><!-- rule 2개 -->
								<c:set var="rule_stop" value="false"/>
								<c:set var="z" value="1" />
									<c:forEach var="rule" items="${rule}" >
									<c:if test="${rule_stop ne true }">
										<c:if test="${rule!='null' && rule!='NULL'}">
											<c:set var="z" value="${z+1 }" />
											<c:if test="${z%2 == 0 }">
										</div><div class="row">
											</c:if>
									<div class="col-lg-1 mt-1">
										<i class="fa fa-calendar" style="font-size: 25px;"></i>
									</div>
									<div class="col-lg-5" style="font-size: 25px;">
										<c:out value="${rule }"></c:out>
									</div>
										</c:if>
										<c:if test="${z eq 3 }">
											<c:set var="rule_stop" value="true" />
										</c:if>
									</c:if>	
									</c:forEach>
								</div><!-- safety 2개 -->
								<div class="row">
									
								</div><!-- safety 2개  -->
								
							</div><!-- _19xnuo97 -->
						</div>
						

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
													<h3 tabindex="-1" class="_14i3z6h">기본 편의시설</h3>
												</div>
												<div class="_vzrbjl">
													<c:forEach items="${detail}" var="detail">
														<c:if test="${detail != 'null' && detail != 'NULL'}">
															<c:out value="${detail}" />
														<hr>
														</c:if>
													</c:forEach>
												</div>
											</div>
											<div style="margin-bottom: 60px !important">
												<div class="_1crk6cd">
													<h3 tabindex="-1" class="_14i3z6h">사용가능 공간/시설</h3>
												</div>
												<div class="_vzrbjl">
													<c:forEach items="${facility}" var="facility">
														<c:if test="${facility != 'null' && facility != 'NULL'}">
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
													<c:forEach items="${rule}" var="rule">
														<c:if test="${rule != 'null' && rule != 'NULL'}">
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
													<c:forEach items="${safety}" var="safety">
														<c:if test="${safety != 'null' && safety != 'NULL'}">
														<c:out value="${safety}" />
														<hr>
														</c:if>
													</c:forEach>
													<c:if test="${safety[1] =='null' ||safety[1] == 'NULL'}">
														<p style="text-decoration:line-through; color:lightgrey;"><c:out value="이산화탄소 감지기" /></p>
													</c:if>
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
							<input type="hidden" name="seq_rm" value="${roomInfo.room.seq_rm}" />
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
																<label class="_7eq2v2">여행 날짜</label>
																<div class="_1ygdnkvm">
																	<input type="text" class="ibbl" name="rangeDate" id="rangeDate"
																		onfocus="rangepickr(this)" readonly="readonly" />
																</div>
															</div>
															<!-- <div class="_1acx77b">
																<label class="_7eq2v2">체크인</label>
																<div class="_1ygdnkvm">
																	<input type="text" class="ibbl" name="check_in" id="indate"
																		onfocus="inpickr(this)" readonly="readonly" />
																</div>
															</div>
															<div class="_14tl4ml5">
																<label class="_7eq2v2">체크아웃</label>
																<div class="_1ygdnkvm">
																	<input class="ibbl" type="text" name="check_out" id="outdate"
																		onfocus="outpickr(this)" readonly="readonly" value="" />
																</div>
															</div> -->
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
														<div class="_11wiged" aria-expanded="false" style="height:100%;"
															aria-haspopup="true"
															aria-labelledby="guests-label GuestPicker-book_it-trigger"
															aria-disabled="false" role="button" tabindex="0">
															<label for="GuestPicker-book_it-trigger" class="_1x080uh">
																<div class="_7eq2v2">인원</div>
																<div class="_1wo1vgi" id="GuestPicker-book_it-trigger"
																	aria-invalid="false" aria-disabled="false">
																	<div class="_1y5b6gl pt" align="center">
																		<div class="_3zlfom" id="GuestPicker-book_it-form-adults-stepper">
																	<button class="_7hhhl3" type="button" aria-label="차감" id="bnt-down" onclick="downCount();"
																		data-testid="GuestPicker-book_it-form-adults-stepper-stepper-decrease-button">
																		<span class="_8ovatg">
																			<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"
																				aria-hidden="true" role="presentation"
																				focusable="false"
																				style="display: block; fill: none; height: 12px; width: 12px; stroke: currentcolor; stroke-width: 5.33333; overflow: visible;">
																				<path d="m2 16h28"></path></svg>
																		</span>
																	</button>
																	<div class="_1665lvv">
																		<input type="text" name="people" readonly id="guestcount" class="ibbl" style="width:100px; text-align:center;" aria-hidden="true"
																			data-testid="GuestPicker-book_it-form-adults-stepper-stepper-value" />
																	</div>
																	<button class="_7hhhl3" type="button" aria-label="추가" id="bnt-up" onclick="upCount();"
																		data-testid="GuestPicker-book_it-form-adults-stepper-stepper-increase-button">
																		<span class="_8ovatg"><svg viewBox="0 0 32 32"
																				xmlns="http://www.w3.org/2000/svg"
																				aria-hidden="true" role="presentation"
																				focusable="false"
																				style="display: block; fill: none; height: 12px; width: 12px; stroke: currentcolor; stroke-width: 5.33333; overflow: visible;">
																				<path d="m2 16h28m-14-14v28"></path></svg></span>
																	</button>
																</div>
																		
																		
																	</div>
																</div>

															</label>	
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
									<p class="" id="show" style="text-align:center;color:red;">예약 날짜를 입력해 주세요.</p>
									<input type="submit" value="예약하기" id="submit" class=" btn btn-primary py-2" style="border-radius: 3px; width: 100%;">
								</div>
								
								<!-- <div class="_1cvivhm" id="calculdiv">

										<div class="_ud8a1c">
											<ul class="_1hvzytt">
												<li class="_ryvszj">
													<span class="_bmsen5">
														<div class="_17y0hv9">
															<div>
																<span class="_ebe4pze" id="calResult">
																	1박당 가격 * 박수 
																</span>
															</div>
														</div>
													</span>
													<span class="_ra05uc" id="resultPrice">최종가</span>
												</li>
											</ul>
											<ul class="_inlpfr">
												<li class="_adhikmk">
													<span class="_plc5prx">총 합계</span>
													<span class="_1d3ext9m"><input name="totalPrice" id="totalPrice" style="width:210px; text-align:right;" type="text" class="_1d3ext9m ibbl" value="₩150,188"></span>
												</li>
											</ul>
										</div>
								</div> -->
							</form>

						</div>
					</div>

				</section>

			</div>
			<hr>
			<div class="row">
				<section class="col-lg-12" style="position: relative;">
					<!-- 위치 -->
					<h2 class="pl-3"><b>위치</b></h2>

					<div id="kkomap" style="width: 100%; height: 500px;"></div>
					<c:set var="addrbefore" value="${roomInfo.room.addr}" />
					<c:set var="addrsi" value="${fn:split(addrbefore,' ')[0]}"></c:set>
					<c:set var="addrgu" value="${fn:split(addrbefore,' ')[1]}"></c:set>
					<p class="mt-4">
						<b>${addrgu}, ${addrsi}</b>
					</p>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=37eab138db2d17be2dbaeea4157c0d35&&libraries=services,clusterer,drawing"></script>
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
						console.log(address);
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
			</div><!-- 지도 끝 -->
			<section>
				<div class="col-lg-12">
					<h2 style="padding-bottom:20px;"><b>알아두어야 할 사항</b></h2>
					<div class="row">
						<!-- 숙소 이용 규칙 -->
						<div class="col-lg-4">
							<div class="_ud8a1c">
								<h5><b>숙소 이용규칙</b></h5>
								<div class="_u827kd">
									<div class="_17527l7">
										<span class="_8tbpu3 mr-2" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-clock" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  										<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm8-7A8 8 0 1 1 0 8a8 8 0 0 1 16 0z"/>
  										<path fill-rule="evenodd" d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5z"/>
										</svg></span>
									</div>
									<span>체크인 시간: 오후 ${roomInfo.room.checkin_time }이후</span>
								</div>
								<div class="_u827kd">
									<div class="_17527l7">
										<span class="_8tbpu3 mr-2" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-clock" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
 										<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm8-7A8 8 0 1 1 0 8a8 8 0 0 1 16 0z"/>
  										<path fill-rule="evenodd" d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5z"/>
										</svg></span>
									</div>
									<span>체크아웃 시간: 오전 ${roomInfo.room.checkout_time }</span>
								</div>
								<div class="_u827kd">
									<div class="_17527l7">
										<span class="_8tbpu3 mr-2" aria-hidden="true"><i class="fa fa-door-open"></i></span>
									</div>
									<span>${roomInfo.room.checkin}을(를) 이용해 체크인 </span>
								</div>
								<c:if test="${roomInfo.rule.baby =='null' || roomInfo.rule.baby == 'NULL'}">
								<div class="_u827kd">
									<div class="_17527l7">
										<span class="_8tbpu3 mr-2" aria-hidden="true"></span>
									</div>
									<span>유아(만 2세 미만)에게 적합하지 않음</span>
								</div>
								</c:if>
								<c:if test="${roomInfo.rule.smoke =='null' || roomInfo.rule.smoke =='NULL'}">
								<div class="_u827kd">
									<div class="_17527l7">
										<span class="_8tbpu3 mr-2" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-x-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
										 <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
										 <path fill-rule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
										</svg></span>
									</div>
									<span>흡연 금지</span>
									</div>
								</c:if>
								<c:if test="${roomInfo.rule.pet =='null' || roomInfo.rule.pet=='NULL'}">
								<div class="_u827kd">
									<div class="_17527l7">
										<span class="_8tbpu3 mr-2" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-x-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
										<path fill-rule="evenodd" d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
										</svg></span>
									</div>
									<span>반려동물 동반 금지</span>
									</div>
								</c:if>
							</div>

						</div>
						<!-- 건강과 안전 -->
						<div class="col-lg-4">
								<div class="row">
							<div class="_ud8a1c">
								<h5><b>건강과 안전</b></h5>
									<div class="_u827kd">
												<div class="_17527l7">
													<span class="_8tbpu3 mr-2" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-shield-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" d="M5.443 1.991a60.17 60.17 0 0 0-2.725.802.454.454 0 0 0-.315.366C1.87 7.056 3.1 9.9 4.567 11.773c.736.94 1.533 1.636 2.197 2.093.333.228.626.394.857.5.116.053.21.089.282.11A.73.73 0 0 0 8 14.5c.007-.001.038-.005.097-.023.072-.022.166-.058.282-.111.23-.106.525-.272.857-.5a10.197 10.197 0 0 0 2.197-2.093C12.9 9.9 14.13 7.056 13.597 3.159a.454.454 0 0 0-.315-.366c-.626-.2-1.682-.526-2.725-.802C9.491 1.71 8.51 1.5 8 1.5c-.51 0-1.49.21-2.557.491zm-.256-.966C6.23.749 7.337.5 8 .5c.662 0 1.77.249 2.813.525a61.09 61.09 0 0 1 2.772.815c.528.168.926.623 1.003 1.184.573 4.197-.756 7.307-2.367 9.365a11.191 11.191 0 0 1-2.418 2.3 6.942 6.942 0 0 1-1.007.586c-.27.124-.558.225-.796.225s-.526-.101-.796-.225a6.908 6.908 0 0 1-1.007-.586 11.192 11.192 0 0 1-2.417-2.3C2.167 10.331.839 7.221 1.412 3.024A1.454 1.454 0 0 1 2.415 1.84a61.11 61.11 0 0 1 2.772-.815z"/>
													<path fill-rule="evenodd" d="M8 5.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V10a.5.5 0 0 1-1 0V8.5H6a.5.5 0 0 1 0-1h1.5V6a.5.5 0 0 1 .5-.5z"/>
													</svg></span>
												</div>
												<span>Azanda.의 사회적 거리 두기 및 관련 가이드라인이 적용됩니다.</span>
											</div>
									<c:choose>
										<c:when test="${roomInfo.safety.co_sensor !='null' && roomInfo.safety.co_sensor!='NULL'}">
											<div class="_u827kd">
												<div class="_17527l7">
													<span class="_8tbpu3 mr-2" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
													</svg></span>
												</div>
												<span>일산화 탄소 경보기</span>
											</div>
										</c:when>
										<c:otherwise>
											<div class="_u827kd">
												<div class="_17527l7">
													<span class="_8tbpu3 mr-2" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-question-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.496 6.033a.237.237 0 0 1-.24-.247C5.35 4.091 6.737 3.5 8.005 3.5c1.396 0 2.672.73 2.672 2.24 0 1.08-.635 1.594-1.244 2.057-.737.559-1.01.768-1.01 1.486v.105a.25.25 0 0 1-.25.25h-.81a.25.25 0 0 1-.25-.246l-.004-.217c-.038-.927.495-1.498 1.168-1.987.59-.444.965-.736.965-1.371 0-.825-.628-1.168-1.314-1.168-.803 0-1.253.478-1.342 1.134-.018.137-.128.25-.266.25h-.825zm2.325 6.443c-.584 0-1.009-.394-1.009-.927 0-.552.425-.94 1.01-.94.609 0 1.028.388 1.028.94 0 .533-.42.927-1.029.927z"/>
													</svg></span>
												</div>
												<span>일산화탄소 경보기 설치 여부 정보 없음</span>
											</div>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${roomInfo.safety.fire_sensor !='null' && roomInfo.safety.fire_sensor!='NULL'}">
											<div class="_u827kd">
												<div class="_17527l7">
													<span class="_8tbpu3 mr-2" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
													</svg></span>
												</div>
												<span>화재경보기</span>
											</div>
										</c:when>
										<c:otherwise>
											<div class="_u827kd">
												<div class="_17527l7">
													<span class="_8tbpu3 mr-2" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-question-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.496 6.033a.237.237 0 0 1-.24-.247C5.35 4.091 6.737 3.5 8.005 3.5c1.396 0 2.672.73 2.672 2.24 0 1.08-.635 1.594-1.244 2.057-.737.559-1.01.768-1.01 1.486v.105a.25.25 0 0 1-.25.25h-.81a.25.25 0 0 1-.25-.246l-.004-.217c-.038-.927.495-1.498 1.168-1.987.59-.444.965-.736.965-1.371 0-.825-.628-1.168-1.314-1.168-.803 0-1.253.478-1.342 1.134-.018.137-.128.25-.266.25h-.825zm2.325 6.443c-.584 0-1.009-.394-1.009-.927 0-.552.425-.94 1.01-.94.609 0 1.028.388 1.028.94 0 .533-.42.927-1.029.927z"/>
													</svg></span>
												</div>
												<span>화재경보기 설치 여부 정보 없음</span>
											</div>
										</c:otherwise>
									</c:choose>
									
								</div>
							</div>
						</div>

						<!-- 환불 정책 -->
						<div class="col-lg-4">
								<div class="row">
							<div class="_ud8a1c">
								<h5><b>환불 정책</b></h5>
									<div class="_u827kd">
										<div class="_17527l7"><span class="_8tbpu3 mr-2" aria-hidden="true"></span></div>
										<span>체크인 5일 전까지 수수료 없이 취소 가능</span>
									</div>
								</div>
							</div>
						</div>
					</div><!-- section 첫번째 row -->
				</div>
			</section><!--  -->
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