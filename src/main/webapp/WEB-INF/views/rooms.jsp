<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d53ad4e4b4f5dd4d2b5d63c9681b5f93&libraries=services,clusterer,drawing"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                
	                  
	                
	                } 
	                
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                document.getElementById("address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	    function goData(){
	        var form = document.userinput;
	        
	        form.submit();
	    }
	    
	    
	    
	    function eventKeyup2(str){
	    	$('#detailAddress').val(str);
	    }
</script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div>
		<jsp:include page="header.jsp" />
	</div>

	<div class="hero-wrap js-fullheight"
		style="background-image: url('images/room-1.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center"
					data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">HOST 등록
						</h1>
				</div>
			</div>
		</div>
	</div>


	<section class="ftco-section ftco-degree-bg">
		<div class="container" width="500" height="600">
			<div class="row">
				<div class="col-lg-3 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate">
						<h1 class="heading mb-4">
							<strong>숙소 등록 순서</strong>
						</h1>
						<div>
							<h3 style="color: #f85959;">1. 숙소위치</h3>
							<h3 style="margin-left: 40px;">|</h3>
							<h5>2. 숙소유형</h5>
							<h3 style="margin-left: 40px;">|</h3>
							<h5>3. 객실(세부정보)</h5>
							<h3 style="margin-left: 40px;">|</h3>
							<h5>4. 편의 시설 / 안전시설 / 체크인유형</h5>
							<h3 style="margin-left: 40px;">|</h3>
							<h5>5. 숙소 규정</h5>
							<h3 style="margin-left: 40px;">|</h3>
							<h5>6. 숙소 소개 및 등록 완료</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-9">
					<div class="row">
						<div class="col-md-4 ftco-animate"></div>

						<h1 align="left">
							<strong>숙소 위치 설정</strong>
						</h1>

						<div>
							<h4 style="float: left; margin-left: 30px;">
								<strong>위치</strong>
							</h4>
							<br>
							<br>
							<div style="float: left; margin-left: 30px;">
								<h5>지도상의 위치</h5>
							</div>
							<br> <br>
							<div id="map3"
								style="width: 850px; height: 350px; float: left; margin-left: 30px;"></div>
							<script>
                     var Container1 = document.getElementById('map3'), // 지도를 표시할 div 
                     Option1 = {
                         center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                         level: 2 // 지도의 확대 레벨
                     };  

                     // 지도를 생성합니다    
                     var map = new kakao.maps.Map(Container1, Option1);
                     
                  // 주소-좌표 변환 객체를 생성합니다
                     var geocoder2 = new kakao.maps.services.Geocoder();

                     // 주소로 좌표를 검색합니다
                     function test1(){
                           var map2 = $("#sample6_address").val()+" "+$("#sample6_detailAddress").val();
                           console.log(map2);
                           
                        
                     geocoder2.addressSearch(map2, function(result, status) {
                        
                         // 정상적으로 검색이 완료됐으면 
                          if (status === kakao.maps.services.Status.OK) {
                             var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                             // 결과값으로 받은 위치를 마커로 표시합니다
                             var marker = new kakao.maps.Marker({
                                 map: map,
                                 position: coords
                             });

                             // 인포윈도우로 장소에 대한 설명을 표시합니다
                             var infowindow = new kakao.maps.InfoWindow({
                                 content: '<div style="width:150px;text-align:center;padding:6px 0;">숙소위치</div>'
                             });
                             infowindow.open(map, marker);

                             // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                             map.setCenter(coords);
                         } 
                     })
                     };     

                     </script>
							<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
							<div style="float: left; margin-left: 30px;">
								<h5>주소</h5>
							</div>
							&nbsp;
				
							<input style="float: left; margin-left: 30px;" type="text" id="sample6_postcode" placeholder="우편번호">
							<input  type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">&nbsp;
							<input  type="text" id="sample6_address" name="sample6_address1" placeholder="주소" >
							<button onclick=test1();>검색</button>
							<input  type="text" id="sample6_detailAddress" name="sample6_detailAddress2" placeholder="상세주소" onkeyup="eventKeyup2(this.value)">&nbsp;						
							<br><br><br>
						<form name = "testForm" action="rooms2.do" method="get">
							<input type="hidden" id="address" name="sample6_address1" value="">
                                 <input type="hidden" id="detailAddress" name="sample6_detailAddress2" value="">
                 		        <div class="row mt-5">
                                 <div class="col text-center">
                                 <div class="block-27">
                                <ul>
                                    <li style="margin-left:5%"><a><span><input type="submit" onclick=test1(); value="다음" style="background: none; border:none;"></span></a></li>
                                </ul> 
                                </div>
                              </div>
                              </div> 
						</form>
						</div>
					</div>

							
				</div>
			</div>
		</div>

		<div class="row mt-5">
			<div class="col text-center">
				<div class="block-27">
					<ul>
					   <!-- <li><a href="rooms.do"><span>이전</span></a></li> -->
					<!--  <li style="align-content:space-around; "><a href="rooms2.do" onclick="goData()"><span>다음</span></a></li>-->
					</ul>
				</div>
			</div>
		</div>
		</div>
		<!-- .col-md-8 -->
		</div>
		</div>
	</section>
	<!-- .section -->

	<div>
		<jsp:include page="footer.jsp" />
	</div>

</body>
</html>