<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

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
    
    <!-- 모달 스타일시트 -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
   	<style type="text/css">
  		.mapdiv{
  			width:1000px;
  			height:800px;
  			border: 1px solid #F2F2F2;
  			background-color:white;
  			position: relative;
 			left: 50px;
 			box-shadow: 2px 2px 2px 2px gray;
  		}
  		div#s_left{
  			width:500px;
  			height:1550px;
  			float:left;
  		}
  		div#s_right{
  			width:1000px;
  			height:1200px;
  			float:left;
  			z-index:1;
  		}
  		div#s_footer{
  			width:;
  			height:900px;
  			clear:left;
  			background-color: #FAFAFA;
  		}
  		.roomdiv1{
  			position: relative;
  			left: -10px;
  			top: 25px;
  			border-radius: 10px 10px 10px 10px;
  			box-shadow: 2px 2px 2px 2px gray;
  		}
  		.roomdiv2{
  			position: relative;
  			left: 500px;
  			top: -475px;
  			border-radius: 10px 10px 10px 10px;
  			box-shadow: 2px 2px 2px 2px gray;
  		}
  		.roomdiv3{
  			position: relative;
  			left: 850px;
  			top: -715px;
  			border-radius: 10px 10px 10px 10px;
  			box-shadow: 2px 2px 2px 2px gray;
  		}
  		.roomdiv4{
  			position: relative;
  			left: 500px;
  			top: -695px;
  			border-radius: 10px 10px 10px 10px;
  			box-shadow: 2px 2px 2px 2px gray;
  		}
  		.roomdiv5{
  			position: relative;
  			left: 850px;
  			top: -935px;
  			border-radius: 10px 10px 10px 10px;
  			box-shadow: 2px 2px 2px 2px gray;
  		}
  		#room1{
  			width:500px;
  			height:500px;
  			border-radius: 10px 10px 10px 10px;
  			padding-top:0px;
  			padding-bottom:0px;
  			padding-left:0px;
  			padding-right:0px;
  		}
  		#room2{
  			width:340px;
  			height:240px;
  			border-radius: 10px 10px 10px 10px;
  			padding-top:0px;
  			padding-bottom:0px;
  			padding-left:0px;
  			padding-right:0px;
  		}
  		#btn1{
  			width:150px;
  			height:70px;
  			position: relative;
  			left: 850px;
  			top: 100px;
  			border-radius: 10px 10px 10px 10px;
  			box-shadow: 2px 2px 2px 2px gray;
  		}
  		#btn2{
  			width:150px;
  			height:70px;
  			position: relative;
  			left: 1050px;
  			top: 10px;
  			border-radius: 10px 10px 10px 10px;
  			box-shadow: 2px 2px 2px 2px gray;
  		}
        .btn {
			background-color: orange;
			height: 70px;
			width: 150px;
			padding: 15px 30px;
			margin: 10px;
			border: none;
			outline: none;
			border-radius: 20px;
			text-align: center;
			text-decoration: none;
			font-size: 22px;
			cursor: pointer;
			box-shadow: 0 9px #B0B0B0;
			
		}
		.btn:hover { background-color: #FF8C00; }
		.btn:active {
			background-color: #FF8C00;
			box-shadow: 0 5px #808080;
			transform: translateY(4px);
		}
		input[id*="answer"]{
			display:none;
		}
		input[id*="answer"] + label{
			display:block;
			padding:20px;
			border: 2px solid #FFFFFF;
			border-bottom:0; 
			color:#black;
			font-weight:900;
			background:#FAFAFA;
			cursor:pointer;
			position:relative;
			font-size:25px;
			box-shadow: 2px 2px 2px 2px gray;
		}
		input[id*="answer"] + label em{
			position:absolute;
			top:50%;
			right:10px;
			width:30px;
			height:30px;
			margin-top:-15px;
			display:inline-block;
			background:url('./images/arrow.jpg') 0 0 no-repeat;
			background-size:100%;
		}
		input[id*="answer"] + label + div {
			max-height:0;
			transition:all 0.3s;
			overflow:hidden;
			background:#FFFFFF;
			font-size:15px;
		}
		input[id*="answer"] + label + div p {
			display:inline-block;
			padding:20px;
		} 
		input[id*="answer"]:checked + label + div {
			max-height:1500px;
			
		}
		input[id*="answer"]:checked + label em {
			background-position:0 -180px;
		}
		table.type09 {
		    border-collapse: collapse;
		    text-align: left;
		    line-height: 1.5;
			position:relative;
			left:800px;
			box-shadow: 2px 2px 2px 2px gray;
			border-radius: 10px 10px 10px 10px;
			font-weight: bold;
			font-size:20px;
		}
		table.type09 thead th {
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    color: #369;
		    border-bottom: 3px solid #036;
		    text-align:center;
		}
		table.type09 tbody th {
		    width: 150px;
		    padding: 10px;
		    font-weight: bold;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		    background: #F5ECCE;
		    text-align:center;
		}
		table.type09 td {
		    width: 350px;
		    padding: 10px;
		    vertical-align: top;
		    border-bottom: 1px solid #ccc;
		    text-align:center;
		}
		
  	</style>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript">
		function onClick(element) {
		  document.getElementById("img01").src = element.src;
		  document.getElementById("modal01").style.display = "block";
		}
		/* function imgbigview(a, b){
			document.getElementById(b).getElementsByTgName("img").src=a.href;
			if(document.getElementById(b).style.display=='block'){
				document.getElementById(b).style.display='none';
			}else
			document.getElementById(b).style.display='block';
		}
		function hide(c){
			document.getElementById(c).style.display='none';
		} */
		
		
		
	</script>     
  </head>
  <body>
<!-- header -->    
	 <div>
		<jsp:include page="header.jsp" />
	</div>
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_4.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">TravelMate</h1>
          </div>
        </div>
      </div>
    </div>
<!--  --> 
<section class="ftco-section ftco-degree-bg">
	<div class="container">
	<div class="row">
		<div class="col-lg-12" style="height: 650px;">
			<div style="text-align: center;">
				<h1><em>Inner View</em></h1>
			</div>
			 		  <div class="roomdiv1" style="background-color: black; height:500px; width:500px; ">
						  <div class="w3-container w3-third" id="room1">
						    <img src="storage/rooms/${roomphoto[0] }" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room1">
						  </div>
					  </div>
					  <div class="roomdiv2" style="background-color: black; height:240px; width:340px; ">
						  <div class="w3-container w3-third" id="room2">
						    <img src="storage/rooms/${roomphoto[1] }" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room2">
						  </div>
					  </div>
					  <div class="roomdiv3" style="background-color: black; height:240px; width:340px; ">
						  <div class="w3-container w3-third" id="room2">
						    <img src="storage/rooms/${roomphoto[2] }" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room2">
						  </div>
					  </div>
					  <div class="roomdiv4" style="background-color: black; height:240px; width:340px; ">
						  <div class="w3-container w3-third" id="room2">
						    <img src="storage/rooms/${roomphoto[3] }" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room2">
						  </div>
					  </div>
					  <div class="roomdiv5" style="background-color: black; height:240px; width:340px; ">
						  <div class="w3-container w3-third" id="room2">
						    <img src="storage/rooms/${roomphoto[4] }" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room2">
						  </div>
					  </div> 
					<div id="modal01" class="w3-modal" onclick="this.style.display='none'">
					  <span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
					  <div class="w3-modal-content w3-animate-zoom">
					    <img id="img01" style="width:100%; border-radius: 10px 10px 10px 10px; ">
					  </div>
					</div>
			</div>
		</div>
	
		<div class="row">
			<div class="col-lg-3 sidebar">
				<div class="sidebar-wrap bg-light ftco-animate fadeInUp ftco-animated">
						<div>
							<br><br>
							<div class="accordion">
							<!-- 숙소정보 -->
							<input type="radio" name="accordion" id="answer01">
							<label for="answer01">숙소 정보<em></em></label>
								<div style="box-shadow: 2px 2px 2px 2px gray; text-align:center;"><p>
								<label style="font-weight: bold; ">주소: &nbsp; ${tmddto.room.addr }</label>
								<label style="font-weight: bold; ">숙소이름: &nbsp; ${tmddto.room.room_name }</label>
								<label style="font-weight: bold; ">숙소 유형: &nbsp; ${tmddto.room.r_type }</label>
								<label style="font-weight: bold; ">제한 인원: &nbsp; ${tmddto.room.person }명</label>
								<label style="font-weight: bold; ">방 갯수: &nbsp; ${tmddto.room.bed_room }개</label>
								<label style="font-weight: bold; ">침대 갯수: &nbsp; ${tmddto.room.bed }개</label>
								<label style="font-weight: bold; ">욕실 갯수: &nbsp; ${tmddto.room.bath_room }개</label>
								<label style="font-weight: bold; ">가격: &nbsp; ${re.totalPrice }원 </label>
								</p></div>
							<!-- 아이템 -->	
							<input type="radio" name="accordion" id="answer02">
							<label for="answer02">Item<em></em></label>
							<div style="box-shadow: 2px 2px 2px 2px gray;"><p>
							<c:forEach items="${detail}" var="detail">
								<c:if test="${detail !='null' && detail != 'NULL'}">
								<div class="row" style="text-align:center; text-align:center;">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<p class="pt" style="font-weight:bold; text-align:center;">${detail }
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
										<path fill-rule="evenodd" d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z"/>
										</svg>
										</p>
								</div>
								</c:if>
							</c:forEach>
							</p></div>
							<!-- 편의시설 -->
							<input type="radio" name="accordion" id="answer03">
							<label for="answer03">편의 시설<em></em></label>
							<div  style="box-shadow: 2px 2px 2px 2px gray; text-align:center;"><p>
							<c:forEach items="${facility}" var="facility">
								<c:if test="${facility !='null' && facility != 'NULL'}">
								<div class="row" style="text-align:center;">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<p class="pt" style="font-weight:bold; text-align:center;">${facility }
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
										<path fill-rule="evenodd" d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z"/>
										</svg>
										</p>
								</div>
								</c:if>
							</c:forEach>
							</p></div>
								<!-- 안전시설 -->
								<input type="radio" name="accordion" id="answer04">
								<label for="answer04">안전 시설<em></em></label>
								<div style="box-shadow: 2px 2px 2px 2px gray; text-align:center;"><p>
								<c:forEach items="${safety}" var="safety">
									<c:if test="${safety !='null' && safety != 'NULL'}">
									<div class="row" style="text-align:center;">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<p class="pt" style="font-weight:bold; text-align:center;">${safety }
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
										<path fill-rule="evenodd" d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z"/>
										</svg>
										</p>
									</div>
									</c:if>
								</c:forEach>
								</p></div>
								<!-- 숙소 규정 -->
								<input type="radio" name="accordion" id="answer05">
								<label for="answer05">숙소 규정<em></em></label>
								<div style="box-shadow: 2px 2px 2px 2px gray;"><p>
								<c:forEach items="${rule}" var="rule">
									<c:if test="${rule !='null' && rule != 'NULL'}">
									<div class="row" style="text-align:center; text-align:center;">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<p class="pt" style="font-weight:bold; text-align:center;">${rule }
										<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
										<path fill-rule="evenodd" d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z"/>
										</svg>
										</p>
									</div>
									</c:if>
								</c:forEach>
								</p></div>
								<%-- 
								<input type="radio" name="accordion" id="answer05">
								<label for="answer05">숙소규정<em></em></label>
								<div><p>
								<c:forEach items="${rule}" var="rule">
									<c:if test="${rule !='null' && rule != 'NULL'}">
									<div class="row">
										<div class="col-md-1 mt-2 pl-3">
											<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-check-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
											<path fill-rule="evenodd" d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z"/>
											</svg>
										</div>
										<div class="col-md-11 mt-2">
											<p class="pt" style="font-weight:bold;">${rule }</p>
										</div>
									</div>
									</c:if>
								</c:forEach>
								</p></div>	 --%>
						</div>
					</div>
				</div>
			</div><!-- col-lg-3 sidebar -->
		
			<div class="col-lg-9">
				<div class="row"><!-- 지도 row -->
						<div class="mapdiv">
						<p style="margin-top: -12px">
					    </p>
					    <div id="map1" style="width: 100%; height: 800px; box-shadow: 2px 2px 2px 2px gray;"></div>
					    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7ac84c3461b348c5dd97a194bd252731&amp;libraries=services"></script>
						<script>
						var mapContainer = document.getElementById('map1'), // 지도를 표시할 div 
						    mapOption = {
						        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
						        level: 3 // 지도의 확대 레벨
						    };  
						
						// 지도를 생성합니다    
						var map1 = new kakao.maps.Map(mapContainer, mapOption); 
						
						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();
						
						// 주소로 좌표를 검색합니다
						geocoder.addressSearch('${tmddto.room.addr }', function(result, status) {
						
						    // 정상적으로 검색이 완료됐으면 
						     if (status === kakao.maps.services.Status.OK) {
						
						        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
						
						        // 결과값으로 받은 위치를 마커로 표시합니다
						        var marker = new kakao.maps.Marker({
						            map1: map1,
						            position: coords
						        });
						
						        // 인포윈도우로 장소에 대한 설명을 표시합니다
						        var infowindow = new kakao.maps.InfoWindow({
						            content: '<div style="width:150px;text-align:center;padding:6px 0;">고려</div>'
						        });
						        infowindow.open(map1, marker);
						
						        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
						        map1.setCenter(coords);
						    } 
						});    
						</script>
					 
					    <!-- <script type="text/javascript"
					        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7ac84c3461b348c5dd97a194bd252731&libraries=services"></script>
					    <script>
					        var mapContainer = document.getElementById('map1'), // 지도를 표시할 div 
					        mapOption = {
					            center : new daum.maps.LatLng(36.633535, 127.425882), // 지도의 중심좌표
					            level : 4
					        // 지도의 확대 레벨
					        };
					 
					        // 지도를 생성합니다    
					        var map1 = new daum.maps.Map(mapContainer, mapOption);
					 
					        // 주소-좌표 변환 객체를 생성합니다
					        var geocoder = new daum.maps.services.Geocoder();
					 
					        var myAddress = [
					                "용산구 한강대로 405", "영등포구 경인로 846", "동대문구 왕산로 214" ];
					 
					        function myMarker(number, address) {
					            // 주소로 좌표를 검색합니다
					            geocoder
					                    .addressSearch(
					                            //'주소',
					                            address,
					                            function(result, status) {
					                                // 정상적으로 검색이 완료됐으면 
					                                if (status === daum.maps.services.Status.OK) {
					 
					                                    var coords = new daum.maps.LatLng(
					                                            result[0].y, result[0].x);
					 
					                                    // 결과값으로 받은 위치를 마커로 표시합니다
					                                    /*
					                                    var marker = new daum.maps.Marker({
					                                        map : map,
					                                        position : coords
					                                    });
					                                     */
					 
					                                    // 인포윈도우로 장소에 대한 설명을 표시합니다
					                                    /*
					                                    var infowindow = new daum.maps.InfoWindow(
					                                            {
					                                                // content : '<div style="width:50px;text-align:center;padding:3px 0;">I</div>'
					                                                content : '<div style="color:red;">' +  number + '</div>'
					                                            });
					                                    infowindow.open(map, marker);
					                                     */
					 
					                                    // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
					                                    var content = '<div class="customoverlay">'
					                                            + '    <span class="title">'
					                                            + '<div style="font-style:normal; color:red; font-weight:bold; font-size:2.0em">'
					                                            + number + '</div>' + '</span>'
					                                            + '</div>';
					 
					                                    // 커스텀 오버레이가 표시될 위치입니다 
					                                    var position = new daum.maps.LatLng(
					                                            result[0].y, result[0].x);
					 
					                                    // 커스텀 오버레이를 생성합니다
					                                    var customOverlay = new daum.maps.CustomOverlay(
					                                            {
					                                                map1 : map1,
					                                                position : position,
					                                                content : content,
					                                                yAnchor : 1
					                                            });
					 
					                                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					                                    map1.setCenter(coords);
					                                }
					                            });
					        }
					 
					        for (i = 0; i < myAddress.length; i++) {
					            myMarker(i + 1, myAddress[i]);
					        }
					    </script> -->
						</div>
				</div><!-- 지도 row -->
			</div><!-- col-lg-9 -->
		 </div><!-- row -->
	</div>	
		 <div class="row">
			 <div class="col-lg-12">
			 			<br><br><br><br><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 		<table class="type09">
				    <thead>
				    <tr>
				        <th scope="" style="text-align:center;" colspan="2">예약자 정보</th>
				    </tr>
				    </thead>
				    <tbody>
				    <tr>
				        <th scope="row">아이디:</th>
				        <td>${mateInfo.id }</td>
				    </tr>
				    <tr>
				        <th scope="row">이름:</th>
				        <td>${mateInfo.name }</td>
				    </tr>
				    <tr style="border-radius: 0px 0px 0px 10px;">
				        <th scope="row" style="border-radius: 0px 0px 0px 10px;" >이메일:</th>
				        <td>${mateInfo.email }</td>
				    </tr>
				    </tbody>
					</table>
			 		<div>
						<button type="button" id="btn1" class="btn" value="apply" onclick="location.href='chat.do?toID=${mateInfo.id}'">채팅하기</button>
					</div>
					<div>
						<button type="button" id="btn2" class="btn" value="cancel" onclick="location.href='travelmate.do'">취소</button>
					</div> 				
			 </div>
		  </div> 
</section>

<!-- footer -->
    <div>
		<jsp:include page="footer.jsp" />
	</div> 
  </body>
</html>