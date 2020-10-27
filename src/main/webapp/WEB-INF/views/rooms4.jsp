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
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/room-4.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">HOST 등록</h1>
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
	               <h5 style="color:#f85959;">4. 편의 시설 / 안전시설 / 체크인유형</h5>
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
                  
                         <h1 style= "margin-left:150px;"><strong>편의 시설 / 안전 시설 / 체크인 유형 등록</strong></h1>
                         	
                         <form action="rooms5.do" method="get">
                         <div>
                              		<h4 style= "margin-left:30px;" ><strong>편의시설</strong></h4 >       
                                   <h5 style= "margin-left:30px;" >등록할 숙소에 있는 편의시설에 모두 체크해주세요</h5>
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="washer" value="세탁기" ><label><h5>세탁기</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="dryer" value="건조기"><label><h5>건조기</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="kitchen" value="부엌"><label><h5>주방</h5></label>
                                 <br>
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="pool" value="수영장" ><label><h5>수영장</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="fitness" value="헬스장"><label><h5>헬스장</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="parking" value="주차장"><label><h5>주차장</h5></label>
                                 
                                 <hr style= "margin-left:30px; width:150%; ">
                                 
                                 <br>
                                 <h4 style= "margin-left:30px;" ><strong>안전시설</strong></h4>       
                                   <h5 style= "margin-left:30px;" >등록할 숙소에 있는 안전시설에 모두 체크해주세요</h5>
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="fire_sensor" value="화재 감지기"><label><h5>화재 감지기</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="co_sensor" value="일산화탄소 감지기"><label><h5>일산화탄소 감지기</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="e_kit" value="구급상자"><label><h5>구급상자</h5></label>
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="fire_off" value="소화기" ><label><h5>소화기</h5></label> &nbsp;
                                 <hr style= "margin-left:30px; width:150%; ">
                                 <br>
                                 <h4 style= "margin-left:30px;" ><strong>체크인 유형</strong></h4>
                                 <h5 style= "margin-left:30px;" >체크인 유형을 입력해주세요</h5>
                                 <textarea rows="1" cols="28" name="checkin" placeholder="체크인유형을 입력해주세요" style="float:left; margin-left:30px;" name="context"></textarea>
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