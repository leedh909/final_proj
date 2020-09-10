<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
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
  </head>
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  </head>
   <script>
      $(function() {   
         $("#bt1").click(function() {      // 모든 <button>요소에 click 이벤트를 설정함.
            
            $("#bt1").css("background-color", "#f85959"),
            $("#bt1").css( "color", "white").bind("click").unbind("click"),
            $("#bt2").css("background-color", "#white"),
            $("#bt2").css( "color", "white").bind("click").unbind("click");
            $("#bt3").css("background-color", "#white"),
            $("#bt3").css( "color", "white").bind("click").unbind("click");
            $("#bt4").css("background-color", "#white"),
            $("#bt4").css( "color", "white").bind("click").unbind("click");
               
         });
         
         $("#bt2").click(function() {      // 모든 <button>요소에 click 이벤트를 설정함.
            $("#bt1").css("background-color", "#white"),
            $("#bt1").css( "color", "white").bind("click").unbind("click");
            $("#bt2").css("background-color", "#f85959"),
            $("#bt2").css( "color", "white").bind("click").unbind("click");
            $("#bt3").css("background-color", "#white"),
            $("#bt3").css( "color", "white").bind("click").unbind("click");
            $("#bt4").css("background-color", "#white"),
            $("#bt4").css( "color", "white").bind("click").unbind("click");
         
         });
         $("#bt3").click(function() {      // 모든 <button>요소에 click 이벤트를 설정함.
            $("#bt1").css("background-color", "#white"),
            $("#bt1").css( "color", "white").bind("click").unbind("click");
            $("#bt2").css("background-color", "#white"),
            $("#bt2").css( "color", "white").bind("click").unbind("click");
            $("#bt3").css("background-color", "#f85959"),
            $("#bt3").css( "color", "white").bind("click").unbind("click");
            $("#bt4").css("background-color", "#white"),
            $("#bt4").css( "color", "white").bind("click").unbind("click");
         
         });
         $("#bt4").click(function() {      // 모든 <button>요소에 click 이벤트를 설정함.
            $("#bt1").css("background-color", "#white"),
            $("#bt1").css( "color", "white").bind("click").unbind("click");
            $("#bt2").css("background-color", "#white"),
            $("#bt2").css( "color", "white").bind("click").unbind("click");
            $("#bt3").css("background-color", "#white"),
            $("#bt3").css( "color", "white").bind("click").unbind("click");
            $("#bt4").css("background-color", "#f85959"),
            $("#bt4").css( "color", "white").bind("click").unbind("click");
         
         });
         
         
      });
   </script>
  <style type="text/css">
     .bt:hover{
          color: white;
          background-color: #f85959;
          font-size: 30px;
            
        }

  </style>

  <body>
    
  	<div>
		<jsp:include page="header.jsp" />
	</div>
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_3.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">rooms</h1>
          </div>
        </div>
      </div>
    </div>


    <section class="ftco-section ftco-degree-bg">
      <div class="container" width="500" height="600">
        <div class="row">
        	<div class="col-lg-3 sidebar ftco-animate">
        		<div class="sidebar-wrap bg-light ftco-animate">
        			<h1 class="heading mb-4"><strong>숙소 등록 순서</strong></h1>
	            <div>
	               <h5 >1. 숙소위치</h5>
	                   <h3 style= "margin-left:40px;">|</h3>
	               <h5 style="color:#f85959;">2. 숙소유형</h5>
	                   <h3 style= "margin-left:40px;">|</h3>
	               <h5>3. 객실(세부정보)</h5>
	                   <h3 style= "margin-left:40px;">|</h3>
	               <h5>4. 편의 시설 / 안전시설</h5>
	               <h3 style= "margin-left:40px;">|</h3>
	               <h5>5. 숙소 규정</h5>
	               <h3 style= "margin-left:40px;">|</h3>
	               <h5>6. 숙소 소개 및 등록 완료</h5>
	            </div>
        	</div>
          </div>
          
           <div class="col-lg-9">
             <div class="row">
                <div class="col-md-4 ftco-animate">
                
                      </div>
                  
                         <h1 align="left"><strong>숙소 유형 설정</strong></h1>
                         	
                        
                         <div style="width:1200px;">
                              		<h4 style= "margin-left:30px;" ><strong>숙소</strong></h4 >
                              		<br> 
                                   <button id="bt1" type="button" style="float:left; padding:20px; margin-left:30px; border:1px solid; width:180px; height:120px;" ><b>원룸</b></button>
                                    <button id="bt2" style="float:left; padding:20px; margin-left:30px; border:1px solid; width:180px; height:120px;"><b>빌라</b></button>
                                     <button id="bt3" style="float:left; padding:20px; margin-left:30px; border:1px solid; width:180px; height:120px;"><b>오피스텔</b></button>
                                      <button id="bt4" style="float:left; padding:20px; margin-left:30px; border:1px solid; width:180px; height:120px;"><b>단독주택</b></button>
                                      <br><br><br><br><br><br><br>
                                      <hr style= "margin-left:30px; width:108%; ">
                                      <br>
                              <div style="float:left; margin-left:30px;"><h5>숙소 이름: </h5></div>
                                   <textarea rows="2" cols="50" placeholder="이름을 입력해주세요" style="float:left; margin-left:30px;" ></textarea>
                                   <br><br><br><br>
                                   <hr style= "margin-left:30px; width:108%; ">
                                      <br>
                            </div>
                            <br><br>
                            <div style="float:left; margin-left:30px;"><h5>숙소 가격: </h5></div>
                                <textarea rows="1" cols="30" placeholder="가격을 입력해주세요" style="float:left; margin-left:30px; width:180px; height:40px;" ></textarea>&nbsp;
                                <label><h4>₩</h4></label>
                            </div>
                         </div>
                      </div>
                   </div>
                   
          	 <div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="rooms.do"><span>이전</span></a></li>
		                <li><a href="rooms3.do"><span>다음</span></a></li>
		              </ul>
		            </div>
		          </div>
		        </div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->

    <div>
		<jsp:include page="footer.jsp" />
	</div>
    
  </body>
</html>