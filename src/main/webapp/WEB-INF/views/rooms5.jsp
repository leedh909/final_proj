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
  <style type="text/css">
   #box{
            left: 20px; 
            width:1000px;
            height:450px;
            border: 1px solid;
            
        }
   #box1 {
           width:220px;
           height:90x;
           border: 1px solid;
           
        }
  </style>

  <body>
    
  	<div>
		<jsp:include page="header.jsp" />
	</div>
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/room-5.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">숙소 등록</h1>
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
	               <h5>2. 숙소유형</h5>
	                   <h3 style= "margin-left:40px;">|</h3>
	               <h5>3. 객실(세부정보)</h5>
	                   <h3 style= "margin-left:40px;">|</h3>
	               <h5>4. 편의 시설 / 안전시설 / 체크인유형</h5>
	               <h3 style= "margin-left:40px;">|</h3>
	               <h5 style="color:#f85959;">5. 숙소 규정</h5>
	               <h3 style= "margin-left:40px;">|</h3>
	               <h5>6. 숙소 소개 및 등록 완료</h5>
	            </div>
        	</div>
          </div>
          
           <div class="col-lg-9">
             <div class="row">
                <div class="col-md-4 ftco-animate">
                
                      </div>
                  
                         <h1 align="left"><strong>숙소 규정 등록</strong></h1>
                         	
                           <form action="rooms6.do" method="get">
                         <div>
                              		<h4 style= "margin-left:30px;" ><strong>어린이 / 유아 규정</strong></h4 >       
                                   <h5 style= "margin-left:30px;" >어린이 및 유아 입실 가능 여부 체크해주세요(두개 체크 가능합니다.)</h5>
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="kid" value="어린이" ><label><h5>어린이(2~12세) 가능</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="baby" value="유아"><label><h5>유아(0~2세) 가능</h5></label> &nbsp;
                                 <br>
                                 <hr style= "margin-left:30px; width:150%; ">
                                 <br>
                                 <h4 style= "margin-left:30px;" ><strong>반려동물 / 흡연 규정</strong></h4 >       
                                   <h5 style= "margin-left:30px;" >반려동물 입실 및 흡연 가능 여부 체크해주세요(두개 체크 가능합니다.)</h5>
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="pet" value="반려동물" ><label><h5>반려동물(강아지,고양이,기타 등등) 가능</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="smoking" value="흡연"><label><h5>흡연 가능</h5></label> &nbsp;
                                 <br>
                                 <hr style= "margin-left:30px; width:150%; ">
                                 <br>
                                 <h4 style= "margin-left:30px;" ><strong>행사 및 파티 규정</strong></h4 >       
                                   <h5 style= "margin-left:30px;" >행사 및 파티 관련 규정사항을 입력해주세요</h5>
                                   <textarea rows="4" cols="70" placeholder="규정사항을 입력해주세요" style="float:left; margin-left:30px;" name="party"></textarea>
                                   <br><br><br><br><br>
                                   <hr style="margin-left:30px; width:150%; ">
                                   <br>
                                   <h4 style="margin-left:30px;"><strong>체크인  / 체크아웃 시간 설정</strong></h4>
                                     <h5 style="margin-left:30px;">체크인 / 체크아웃 시간을 설정해주세요</h5>
                                       <h6 style="margin-left:30px;">체크인 시간</h6>
                                          <p style="margin-left:30px;"><input type="time" value="00:00" min="00:00" max="23:59" name="checkin_time"></p>
                                       <h6 style="margin-left:250px; margin-top: -58px;">체크아웃 시간</h6>
                                          <p style="margin-left:250px;"><input type="time" value="00:00" min="00:00" max="23:59" name="checkout_time"></p>
                                          <br><br>
                                            <div class="row mt-5">
					                <div class="col text-center">
					                  <div class="block-27">
                                <ul>
                                	<li><a href="rooms.do"><span>이전</span></a></li>
                                    <li style="margin-left:5%"><a><span><input type="submit"  value="다음" style="background: none; border:none;"></span></a></li>
                                </ul> 
                                 </div>
                              </div>
                              </div>  
                               </div>
                               </form>
                            </div>
                      
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