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
  		.mate{
  			width:950px;
  			height:200px;
  			border: 1px solid #F2F2F2;
  			background-color:white;
  			position: relative;
 			left: 150px;
  		}
  		.mateimage{
  			display:block;
  			width:200px;
  			height:198px;
  		}
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
<div class="hero-wrap js-fullheight" style="background-image: url(&quot;images/bg_1.jpg&quot;); height: 400px;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true" style="height: 937px;">
          <div class="col-md-9 ftco-animate fadeInUp ftco-animated" data-scrollax=" properties: { translateY: '70%' }" style="transform: translateZ(0px) translateY(0%);">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }" style="opacity: 1; transform: translateZ(0px) translateY(0%);"><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> </font></font><br></strong></h1>
            <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }" style="opacity: 1; transform: translateZ(0px) translateY(0%);"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></p>
            <div class="block-17 my-4">
              <form action="" method="post" class="d-block d-flex">
                <div class="fields d-block d-flex">
                  <!-- <div class="textfield-search one-third">
                  	<input type="text" class="form-control" placeholder="Ex: food, service, hotel">
                  </div> -->
                  <!-- 시/도 -->
                  <div class="select-wrap one-third">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="" id="" class="form-control" placeholder="키워드 검색">
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">시 /도</font></font></option>
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">서울 특별시</font></font></option>
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">부산 광역시</font></font></option>
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">대구 광역시</font></font></option>
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">인천 광역시</font></font></option>
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">광주 광역시</font></font></option>
                      <!-- <option value="">대전광역시</option>
                      <option value="">/option>
                      <option value="">경상북도울산광역시</option>
                      <option value="">세종특별자치시</option>
                      <option value="">경기도</option>
                      <option value="">강원도</option>
                      <option value="">충청북도</option>
                      <option value="">충청남도</option>
                      <option value="">전라북도</option>
                      <option value="">전라남도<</option>
                      <option value="">경상남도</option>
                      <option value="">제주특별자치도</option> -->
                    </select>
                  </div>
                  <!-- 시/군/구 -->
                  <div class="select-wrap one-third">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="" id="" class="form-control" placeholder="키워드 검색">
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">어디</font></font></option>
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">미국 샌프란시스코</font></font></option>
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">베를린 독일</font></font></option>
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Lodon 영국</font></font></option>
                      <option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">파리 이탈리아</font></font></option>
                    </select>
                  </div>
                </div>
                <font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><input type="submit" class="search-submit btn btn-primary" value="검색"></font></font>  
              </form>
            </div>
            <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></p>
          </div>
        </div>
      </div>
    </div>


<div style="height:1200px; padding-top:0px;" class="ftco-section bg-light">
	<!-- 필터링창 -->
	<div style="background-color:#FBEFF2;" id="s_left">
		<div style="text-align: center; position: relative; top:50px;">
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
	<!-- 리스트 -->
	<div class="ftco-section bg-light" id="s_right">
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
							<td colspan="3" >여자 / 20대 / 술 (o) / 담배 (o) </td>
						</tr>
						<tr >
							<td class="tdwidth" bgcolor="#E6E6E6" align="center"><b>기타사항</b></td>
							<td colspan="3"></td>
						</tr>
					</table>
				</div>
				<div style="float:right; width:150; height:198px;">
					<button class="bt" type="button" onclick="location.href='travelmatedetail.jsp'">matching</button>
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
					<button class="bt" type="button" onclick="location.href='travelmatedetail.jsp'">matching</button>
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
					<button class="bt" type="button" onclick="location.href='travelmatedetail.jsp'">matching</button>
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
					<button class="bt" type="button" onclick="location.href='travelmatedetail.jsp'">matching</button>
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