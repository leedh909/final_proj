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
			<br><br>
			<h1 style=""><em>Filtering</em></h1>
			<br>
			<div>
			<label>GENDER: </label> &nbsp;&nbsp;&nbsp;
			<input type="radio" value="M" name="gender" id="male">Man&nbsp;&nbsp;&nbsp;&nbsp;
	   		<input type="radio" value="F" name="gender" id="female">Woman&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" value="GDA" name="alcohol" id="ga">Anything 
			</div>
			<hr>
			<div>
			<label>Alcohol: </label> &nbsp;&nbsp;&nbsp;
			<input type="radio" value="ALY" name="alcohol" id="ay">Yes&nbsp;&nbsp;&nbsp;&nbsp;
	   		<input type="radio" value="ALN" name="alcohol" id="an">No&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" value="ALA" name="alcohol" id="aa">Anything 
			</div>
			<hr>
			<div>
			<label>Smoke: </label> &nbsp;&nbsp;&nbsp;
			<input type="radio" value="SMY" name="smoke" id="sy">Yes&nbsp;&nbsp;&nbsp;&nbsp;
	   		<input type="radio" value="SMN" name="smoke" id="sn">No&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" value="SMA" name="smoke" id="sa">Anything
			</div>
			<hr>
			<div>
		    <label>Ages: </label>&nbsp;&nbsp;&nbsp;
		    <input type="checkbox" name="ages" id="teen" value="teenage"><label for="teen">10대</label>&nbsp;&nbsp;&nbsp;
		    <input type="checkbox" name="ages" id="twenty" value="twenties"><label for="twenty">20대</label>&nbsp;&nbsp;&nbsp;
		    <input type="checkbox" name="ages" id="thirty" value="thirties"><label for="thirty">30대</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="ages" id="forty" value="forties"><label for="forty">40대</label>&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="ages" id="fifrty" value="fifties"><label for="fifty">50대</label>&nbsp;&nbsp;&nbsp;
			</div>
			<hr>
		</div>
	</div>
	<!-- 리스트  -->
	<div id="s_right">
		<div class="container">
			<div class="mate">
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
			</div>
			<br><br>
			<div class="mate">
				<div style="float:left; width:200px; height:198px;">
				 	<img src="images/mate2.jpg" class="mateimage">
				</div>
				<div style="float:left; width:600px; height:198px;">
					<table border="1" width ="610px;" height="198px;" align = "center" bordercolor="#F2F2F2">
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>숙소 위치</b></td>
							<td colspan="3" >쌍용호텔</td>
						</tr>
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center" ><b>체크인/체크아웃</b></td>
							<td >20.08.03 ~ 20.08.09</td>
							<td bgcolor="#E6E6E6" align="center"><b>인원</b></td>
							<td align="center">4명</td>
						</tr>
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>필터링</b></td>
							<td colspan="3" >남자 / 20대~30대 / 술 (x) / 담배 (o) </td>
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
			</div>
			<br><br>
			<div class="mate">
				<div style="float:left; width:200px; height:198px;">
				 	<img src="images/mate3.jpg" class="mateimage">
				</div>
				<div style="float:left; width:600px; height:198px;">
					<table border="1" width ="610px;" height="198px;" align = "center" bordercolor="#F2F2F2">
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>숙소 위치</b></td>
							<td colspan="3" >호랑오피스텔</td>
						</tr>
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center" ><b>체크인/체크아웃</b></td>
							<td >20.08.22 ~ 20.08.23</td>
							<td bgcolor="#E6E6E6" align="center"><b>인원</b></td>
							<td align="center">1명</td>
						</tr>
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>필터링</b></td>
							<td colspan="3" >상관없음 / 40대 / 술 (x) / 담배 (x) </td>
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
			</div>
			<br><br>
			<div class="mate">
				<div style="float:left; width:200px; height:198px;">
				 	<img src="images/mate4.jpg" class="mateimage">
				</div>
				<div style="float:left; width:600px; height:198px;">
					<table border="1" width ="610px;" height="198px;" align = "center" bordercolor="#F2F2F2">
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>숙소 위치</b></td>
							<td colspan="3" >신라호텔</td>
						</tr>
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center" ><b>체크인/체크아웃</b></td>
							<td >20.08.01 ~ 20.08.05</td>
							<td bgcolor="#E6E6E6" align="center"><b>인원</b></td>
							<td align="center">2명</td>
						</tr>
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>필터링</b></td>
							<td colspan="3" >여자 / 20대 / 술 (o) / 담배 (o) </td>
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
			</div>
			<br><br>
			
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