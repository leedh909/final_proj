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
   <!--  <script type="text/javascript">
      function value_check(checked){
    	  var check = document.getElementsByName("rooms_detail").length;
    	  
    	  for(var i=0; i<check; i++){
    		  if(document.getElementsByName("rooms_detail")[i].checked==true){
    			  alert(document.getElementsByName("rooms_detail")[i].value);
    		  }
    	  }
      }   
    </script> --> 
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
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/room-3.jpg');">
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
	               <h5 style="color:#f85959;">3. 객실(세부정보)</h5>
	                   <h3 style= "margin-left:40px;">|</h3>
	               <h5>4. 편의 시설 / 안전시설 / 체크인유형</h5>
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
                  
                         <h1 align="left"><strong>객실 정보 및 세부사항 등록</strong></h1>
                         	
                         <form action="rooms4.do" method="get">
                         <div>
                                    
                              		<h4 style= "margin-left:30px;" ><strong>숙박 가능 인원</strong></h4>
                              		<h5 style= "margin-left:30px;" >travelmate와 같이 머무를 것도 고려해주세요</h5>
                              		<input type="number" min="0" max="100" step="1" name="person" style= "margin-left:30px; width:180px; height:40px; ">
                              		<br><br>
                              		 <hr style= "margin-left:30px; width:108%; ">
                              		 <br>
                              		<h4 style= "margin-left:30px;" ><strong>욕실 수</strong></h4>
                              		<h5 style= "margin-left:30px;" >숙소 건물/빌딩 혹은 단지에 있는 공용/공동 욕실이 아닌, 해당 숙소에 있는 욕실만을 세어 설정하세요.</h5>
                              		<input type="number" min="0" max="100" step="1" name="bath_room" style= "margin-left:30px; width:180px; height:40px; ">
                              		<br><br>
                              		<hr style= "margin-left:30px; width:108%; ">
                              		 <br>
                              		<h4 style= "margin-left:30px;" ><strong>침실 수</strong></h4>
                              		<h5 style= "margin-left:30px;" >숙소가 로프트 혹은 스튜디오인 경우 침실 수는 0개입니다.</h5>
                              		<input type="number" min="0" max="100" step="1" name="bed_room" style= "margin-left:30px; width:180px; height:40px; ">
                              		<br><br>
                              		<hr style= "margin-left:30px; width:108%; ">
                              		 <br>
                              		 <h4 style= "margin-left:30px;" ><strong>침대 수</strong></h4>
                              		<h5 style= "margin-left:30px;" >등록할 숙소에 침대 수를 설정해주세요</h5>
                              		<input type="number" min="0" max="100" step="1" name="bed" style= "margin-left:30px; width:180px; height:40px; ">
                              		<br><br>
                              		<hr style= "margin-left:30px; width:108%; ">
                              		 <br>
                                  <h4 style= "margin-left:30px;" ><strong>세부사항</strong></h4>
                                 <h5 style= "margin-left:30px;" >등록할 숙소에 있는 모든 시설에 체크해주세요</h5>
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="essential" value="필수품목(샤워타올,수건,기타 등등)"><label><h5>필수품목(샤워타올,수건,기타 등등)</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="heating" value="난방"><label><h5>난방</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="aircon" value="에어컨"><label><h5>에어컨</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="iron" value="다리미"><label><h5>다리미</h5></label>
                                 <br>
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="tv" value="TV"><label><h5>TV</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="shampoo" value="샴푸"><label><h5>샴푸</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="hairdry" value="헤어드라이기"><label><h5>헤어드라이기</h5></label>
                                 <br>
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="desk" value="책상"><label><h5>책상</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="closet" value="옷장"><label><h5>옷장</h5></label> &nbsp;
                                 <input style= "margin-left:30px; zoom:1.5;" type="checkbox" name="wifi" value="와이파이"><label><h5>WIFI</h5></label>
                                 <br><br>
                                  <div class="row mt-5">
					                <div class="col text-center">
					                  <div class="block-27">
                                <ul>
                                	<li><a href="rooms2.do"><span>이전</span></a></li>
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