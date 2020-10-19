<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  
   	<style type="text/css">
  		div#s_left{
  			width:500px;
  			height:1200px;
  			float:left;
  		}
  		div#s_right{
  			width:600px;
  			height:1200px;
  			float:left;
  			z-index:1;
  		}
  		.mate{
  			width:950px;
  			height:200px;
  			border: 1px solid #F2F2F2;
  			background-color:white;
  			position: relative;
 			left: 150px;
 			top: 100px;
  		}
  		.mateimage{
  			display:block;
  			width:200px;
  			height:198px;
  		}
  		.bt{
  			width:138px;
  			height:198px; 
  			border:1px solid #E6E6E6;
  			background-color: rgba(0,0,0,0);
  			color:skyblue;
  			padding:5px;
  			cursor: pointer;
			-webkit-transition-duration: 0.4s;
			transition-duration: 0.4s;
  		}
  		.bt:hover{
  			color:white;
  			background-color: skyblue;
  		}
  		.tdwidth{
  			width:150px;
  		}
  		select { 
  				 -webkit-appearance: none; /* 네이티브 외형 감추기 */ 
  				 -moz-appearance: none; 
  				 appearance: none; 
  				 background: url(이미지 경로) no-repeat 95% 50%; /* 화살표 모양의 이미지 */ 
  		} 
  		/* IE 10, 11의 네이티브 화살표 숨기기 */ 
  		select::-ms-expand { 
  			display: none; 
  		}
		select { width: 150px; /* 원하는 너비설정 */ 
				 padding: .8em .5em; /* 여백으로 높이 설정 */ 
				 font-family: inherit; /* 폰트 상속 */ 
				 background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
				 border: 1px solid #999; border-radius: 0px; /* iOS 둥근모서리 제거 */ 
				 -webkit-appearance: none; /* 네이티브 외형 감추기 */ 
				 -moz-appearance: none; 
				 appearance: none; 
		}
		.button {
		    width:100px;
		    background-color: #f8585b;
		    border: none;
		    color:#fff;
		    padding: 15px 0;
		    text-align: center;
		    text-decoration: none;
		    display: inline-block;
		    font-size: 15px;
		    margin: 4px;
		    cursor: pointer;
		    border-radius:10px;
		}
  	</style> 
  </head>
  <body>
<!-- 헤더 -->    
	<div id="header">
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
<!-- 검색 -->

<!--  -->
<div style="height:1200px; padding-top:0px;" class="ftco-section bg-light">
	<!-- 필터링창 -->
	<div style="background-color:white;" id="s_left">
		<div style="text-align: center; position: relative; top:50px;">
		<form>
			<br><br>
			<h1 style=""><em>지역 선택</em></h1>
			<br>
			<select style="text-align: center;" name="area" onchange="">
            <option value="seoul" style="text-align: center;">서울</option>
            <option value="busan" style="text-align: center;">부산</option>
            <option value="daejeon" style="text-align: center;">대전</option>
            <option value="daegu" style="text-align: center;">대구</option>
            <option value="jeju" style="text-align: center;">제주</option>
            <option value="gangneung" style="text-align: center;">강릉</option>  
            <option value="gyeongju" style="text-align: center;">경주</option>  
            <option value="yeosu" style="text-align: center;">여수</option>  
        	</select>
			<br><br><br>
			<h1 style=""><em>Filtering</em></h1>
			<br>
			<div>
			<label>Kid: </label> &nbsp;&nbsp;&nbsp;
			<input type="radio" value="kidy" name="kid" id="ky">Yes&nbsp;&nbsp;&nbsp;&nbsp;
	   		<input type="radio" value="kidn" name="kid" id="kn">No&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" value="kida" name="kid" id="ka">Anything 
			</div>
			<hr>
			<div>
			<label>Baby: </label> &nbsp;&nbsp;&nbsp;
			<input type="radio" value="babyy" name="Baby" id="by">Yes&nbsp;&nbsp;&nbsp;&nbsp;
	   		<input type="radio" value="babyn" name="Baby" id="bn">No&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" value="babya" name="Baby" id="ba">Anything 
			</div>
			<hr>
			<div>
			<label>Pet: </label> &nbsp;&nbsp;&nbsp;
			<input type="radio" value="pety" name="pet" id="py">Yes&nbsp;&nbsp;&nbsp;&nbsp;
	   		<input type="radio" value="petn" name="pet" id="pn">No&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" value="peta" name="pet" id="pa">Anything
			</div>
			<hr>
			<div>
		    <label>Smoke: </label>&nbsp;&nbsp;&nbsp;
		    <input type="radio" value="smokey" name="smoke" id="sy">Yes&nbsp;&nbsp;&nbsp;&nbsp;
	   		<input type="radio" value="smoken" name="smoke" id="sn">No&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" value="smokea" name="smoke" id="sa">Anything
			</div>
			<hr>
			<div>
			<label>Party: </label> &nbsp;&nbsp;&nbsp;
			<input type="radio" value="partyy" name="party" id="partyyy">Yes&nbsp;&nbsp;&nbsp;&nbsp;
	   		<input type="radio" value="partyn" name="party" id="partynn">No&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" value="partya" name="party" id="partyaa">Anything 
			</div>
			<hr>
			<br>
			<input type="button" class="button" value="확인" onclick="">
		</form>
		</div>
	</div>
	<!-- 리스트  -->
	<div id="s_right">
		<div class="container">
				<c:choose>
					<c:when test="${empty tmlist }">
						<tr>
							<td colspan="4" align="center">--------작성된 글이 없습니다--------</td> 
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${tmlist }" var="tmdto">
							<div class="mate">
								<div style="float:left; width:200px; height:198px;">
								 	<img src="${tmdto.profile}" class="mateimage">
								</div>
								<div style="float:left; width:600px; height:198px;">
									<table border="1" width ="610px;" height="198px;" align = "center" bordercolor="#F2F2F2">
										<tr >
											<td class="tdwidth" bgcolor="#EFF8FB" align="center"><b>숙소 위치</b></td>
											<td colspan="3" >${tmdto.addr }</td>
										</tr>
										<tr >
											<td class="tdwidth" bgcolor="#EFF8FB" align="center" ><b>체크인/체크아웃</b></td>
											<td >
											<fmt:formatDate pattern="yyyy-MM-dd  HH:mm" value="${tmdto.check_in }"/> ~ 
											<fmt:formatDate pattern="yyyy-MM-dd  HH:mm" value="${tmdto.check_out }"/>
											</td>
											<td bgcolor="#EFF8FB" align="center"><b>인원</b></td>
											<td align="center">${tmdto.people }</td>
										</tr>
										<tr >
											<td class="tdwidth" bgcolor="#EFF8FB" align="center"><b>필터링</b></td>
											<td colspan="3" ></td>
										</tr>
										<tr >
											<td class="tdwidth" bgcolor="#EFF8FB" align="center"><b>기타사항</b></td>
											<td colspan="3"></td>
										</tr>
									</table>
								</div>
								<div style="float:right; width:150; height:198px;">
									<button class="bt" type="button" onclick="location.href='travelmatedetail.do'">matching</button>
								</div>
							</div>
							<br><br>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<!-- <div class="mate">
			   		<div style="float:left; width:200px; height:198px;">
					 	<img src="images/mate1.jpg" class="mateimage">
					</div>
					<div style="float:left; width:600px; height:198px;">
						<table border="1" width ="610px;" height="198px;" align = "center" bordercolor="#F2F2F2">
							<tr >
								<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>숙소 위치</b></td>
								<td colspan="3" >kh아파트</td>
							</tr>
							<tr >
								<td class="tdwidth" bgcolor="#E6E6E6" align="center" ><b>체크인/체크아웃</b></td>
								<td >20.08.01 ~ 20.08.05</td>
								<td bgcolor="#E6E6E6" align="center"><b>인원</b></td>
								<td align="center">2명</td>
							</tr>
							<tr >
								<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>필터링</b></td>
								<td colspan="3" >여자 / 20대 / 술 (o) / 담배 (o)</td>
							</tr>
							<tr >
								<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>기타사항</b></td>
								<td colspan="3"></td>
							</tr>
						</table>
					</div>
					<div style="float:right; width:150; height:198px;">
						<button class="bt" type="button" onclick="location.href='travelmatedetail.do'">matching</button>
					</div>
				</div> -->
		</div>
	</div> 	        
<!-- 페이징 -->
	       <!--  <div class="row mt-5" id="c_right">
	          <div class="col text-center">
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
	        </div> -->
	        
</div>	        
<!-- 풋터 -->
    <div id="footer">
		<jsp:include page="footer.jsp" />
	</div>
  </body>
</html>