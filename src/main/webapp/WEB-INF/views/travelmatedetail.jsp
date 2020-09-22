<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  			width:700px;
  			height:1000px;
  			border: 1px solid #F2F2F2;
  			background-color:white;
  			position: relative;
 			left: 250px;
  		}
  		div#s_left{
  			width:500px;
  			height:1250px;
  			float:left;
  		}
  		div#s_right{
  			width:746.4px;
  			height:1250px;
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
  			left: 350px;
  			top: 25px;
  			border-radius: 10px 10px 10px 10px;
  		}
  		.roomdiv2{
  			position: relative;
  			left: 860px;
  			top: -475px;
  			border-radius: 10px 10px 10px 10px;
  		}
  		.roomdiv3{
  			position: relative;
  			left: 1210px;
  			top: -715px;
  			border-radius: 10px 10px 10px 10px;
  		}
  		.roomdiv4{
  			position: relative;
  			left: 860px;
  			top: -695px;
  			border-radius: 10px 10px 10px 10px;
  		}
  		.roomdiv5{
  			position: relative;
  			left: 1210px;
  			top: -935px;
  			border-radius: 10px 10px 10px 10px;
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
  			left: 440px;
  			top: -110px;
  			border-radius: 10px 10px 10px 10px;
  		}
  		#btn2{
  			width:150px;
  			height:70px;
  			position: relative;
  			left: 610px;
  			top: -200px;
  			border-radius: 10px 10px 10px 10px;
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
<div style="width: ; height:2200px; padding-top:0px;" class="ftco-section bg-light" id="container">
	<!-- left div -->
	<!-- class="ftco-section bg-light"" -->
	<div style="background-color:white;" id="s_left">
		<div style="text-align: center; position: relative; top:50px;">
			<br><br>
			<h2 style=""><em>숙소 정보</em></h2>
			<br>
			<div>
			<label>숙소 이름:</label>&nbsp;&nbsp;&nbsp;
			<p value="">KH아파트</p>
			<br>
			<label>숙소 유형:</label>&nbsp;&nbsp;&nbsp;
			<p value="">아파트</p>
			<br>
			<label>적정 인원:</label>&nbsp;&nbsp;&nbsp;
			<p value="">2~3인</p>
			<br>
			<label>침대 갯수: </label> &nbsp;&nbsp;&nbsp;
			<select name="bed" id="bed" readonly="readonly" style="background-color:#ababab" 
      		 onFocus="this.initialSelect = this.selectedIndex;" onChange="this.selectedIndex = this.initialSelect;">
				<option value="zero">0</option>
				<option value="one">1</option>
				<option value="two" selected="selected">2</option>
				<option value="three">3</option>
				<option value="four">4</option>
			</select>
			<br>
			<label>욕실 갯수: </label> &nbsp;&nbsp;&nbsp;
			<select name="bathroom" id="bathroom" readonly="readonly" style="background-color:#ababab;" 
      		 onFocus="this.initialSelect = this.selectedIndex;" onChange="this.selectedIndex = this.initialSelect;">
				<option value="zero">0</option>
				<option value="one" selected="selected">1</option>
				<option value="two">2</option>
				<option value="three">3</option>
				<option value="four">4</option>
			</select>
			<hr>
			<br>
			<h2 style=""><em>Item</em></h2>
			<input type="checkbox" name="item" id="towel" value="towel" checked="checked" disabled="disabled"><label for="towel">수건</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="soap" value="soap" checked="checked" disabled="disabled"><label for="soap" >비누</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="tissue" value="tissue" disabled="disabled"><label for="towel">휴지</label>&nbsp;&nbsp;&nbsp;
			<br>
			<input type="checkbox" name="item" id="heat" value="heat" disabled="disabled"><label for="heat">난방</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="airconditioner" value="airconditioner" disabled="disabled"><label for="airconditioner">에어컨</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="tv" value="tv" checked="checked" disabled="disabled"><label for="tv" >TV</label>&nbsp;&nbsp;&nbsp;
			<br>
			<input type="checkbox" name="item" id="refrigerator" value="refrigerator" disabled="disabled"><label for="refrigerator">냉장고</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="gas" value="gas" checked="checked" disabled="disabled"><label for="gas">가스레인지</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="wifi" value="wifi" checked="checked" disabled="disabled"><label for="wifi">WIFI</label>&nbsp;&nbsp;&nbsp;
			<hr>
			<br>
			<h2><em>편의시설</em></h2>
			<input type="checkbox" name="item" id="towel" value="towel" checked="checked" disabled="disabled"><label for="towel">세탁기</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="soap" value="soap" checked="checked" disabled="disabled"><label for="soap" >건조기</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="tissue" value="tissue" disabled="disabled"><label for="towel">주방</label>&nbsp;&nbsp;&nbsp;
			<br>
			<input type="checkbox" name="item" id="towel" value="towel" checked="checked" disabled="disabled"><label for="towel">수영장</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="soap" value="soap" checked="checked" disabled="disabled"><label for="soap" >헬스장</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="tissue" value="tissue" disabled="disabled"><label for="towel">주차장</label>&nbsp;&nbsp;&nbsp;
			<hr>
			<br>
			<h2><em>안전시설</em></h2>
			<input type="checkbox" name="item" id="towel" value="towel" checked="checked" disabled="disabled"><label for="towel">화재 감지기</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="soap" value="soap" checked="checked" disabled="disabled"><label for="soap" >일산화탄소 감지기</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="item" id="tissue" value="tissue" disabled="disabled"><label for="towel">구급상자</label>&nbsp;&nbsp;&nbsp;
			<hr>
			<br>
			
			<label>Price:</label>
			<p value="price"><b>$999</b></p>
			</div>
			
		</div>
	</div>
	<!-- right div -->
	<div class="ftco-section bg-light" id="s_right">
		<div class="mapdiv">
			<p style="margin-top: -12px">
		    </p>
		    <div id="map1" style="width: 100%; height: 1000px;"></div>
		 
		    <script type="text/javascript"
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
		    </script>
		</div>
	</div>
	<!-- footer div -->
	<div id="s_footer" class="s_footer">
			<br><br>
			<div style="text-align: center; background-color: white;">
				<h1><em>Inner View</em></h1>
			</div>
			 		  <div class="roomdiv1" style="background-color: black; height:500px; width:500px; ">
						  <div class="w3-container w3-third" id="room1">
						    <img src="images/room-1.jpg" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room1">
						  </div>
					  </div>
					  <div class="roomdiv2" style="background-color: black; height:240px; width:340px; ">
						  <div class="w3-container w3-third" id="room2">
						    <img src="images/room-2.jpg" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room2">
						  </div>
					  </div>
					  <div class="roomdiv3" style="background-color: black; height:240px; width:340px; ">
						  <div class="w3-container w3-third" id="room2">
						    <img src="images/room-3.jpg" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room2">
						  </div>
					  </div>
					  <div class="roomdiv4" style="background-color: black; height:240px; width:340px; ">
						  <div class="w3-container w3-third" id="room2">
						    <img src="images/room-4.jpg" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room2">
						  </div>
					  </div>
					  <div class="roomdiv5" style="background-color: black; height:240px; width:340px; ">
						  <div class="w3-container w3-third" id="room2">
						    <img src="images/room-5.jpg" style="cursor:pointer" 
						   	 onclick="onClick(this)" class="w3-hover-opacity" id="room2">
						  </div>
					  </div> 
					</div> 
					<div id="modal01" class="w3-modal" onclick="this.style.display='none'">
					  <span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
					  <div class="w3-modal-content w3-animate-zoom">
					    <img id="img01" style="width:100%; border-radius: 10px 10px 10px 10px; ">
					  </div>
					</div>
		<!-- 	<div class="roomdiv1" style="background-color: white; height:500px; width:500px;">
				<a href="images/room-1.jpg" class="room1" onclick="imgbigview(this,'bigimg'); return false;">
					<img src="images/room-1.jpg" class="room1">
				</a>
				<div id="bigimg" style="display:none; overflow:hidden; border:0px solid #ff6600;" align="center">
					<img src="" style=" border:1px solid black;" onclick="hide('bigimg')" />
				</div>
			</div>
			<div class="roomdiv2" style="background-color: white; height:140px; width:140px;">
				<a href="images/room-2.jpg" class="room2" onclick="imgbigview(this,'bigimg'); return false;">
					<img src="images/room-2.jpg" class="room2">
				</a>
				<div id="bigimg" style="display:none; overflow:hidden; border:0px solid #ff6600;" align="center">
					<img src="" style=" border:1px solid black;" onclick="hide('bigimg')" />
				</div>
			</div>
		 	<div class="roomdiv3" style="background-color: white; height:140px; width:140px;">
				<a href="images/room-3.jpg" class="room2" onclick="imgbigview(this,'bigimg'); return false;">
					<img src="images/room-3.jpg" class="room2">
				</a>
				<div id="bigimg" style="display:none; overflow:hidden; border:0px solid #ff6600;" align="center">
					<img src="" style=" border:1px solid black;" onclick="hide('bigimg')" />
				</div>
			</div>
			<div class="roomdiv4" style="background-color: white; height:140px; width:140px;">
				<a href="images/room-4.jpg" class="room2" onclick="imgbigview(this,'bigimg'); return false;">
					<img src="images/room-4.jpg" class="room2">
				</a>
				<div id="bigimg" style="display:none; overflow:hidden; border:0px solid #ff6600;" align="center">
					<img src="" style=" border:1px solid black;" onclick="hide('bigimg')" />
				</div>
			</div>
			<div class="roomdiv5" style="background-color: white; height:140px; width:140px;">
				<a href="images/room-5.jpg" class="room2" onclick="imgbigview(this,'bigimg'); return false;">
					<img src="images/room-5.jpg" class="room2">
				</a>
				<div id="bigimg" style="display:none; overflow:hidden; border:0px solid #ff6600;" align="center">
					<img src="" style=" border:1px solid black;" onclick="hide('bigimg')" />
				</div>-->
			
			<div>
				<button type="button" id="btn1" class="btn" value="apply" onclick="location.href='main.do'">Apply</button>
			</div>
			<div>
				<button type="button" id="btn2" class="btn" value="cancel">Cancel</button>
			</div> 
	</div> 	                
</div>
<!-- footer -->
    <div>
		<jsp:include page="footer.jsp" />
	</div> 
  </body>
</html>