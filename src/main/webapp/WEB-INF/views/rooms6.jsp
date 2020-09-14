<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/room-6.jpg');">
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
	               <h5>4. 편의 시설 / 안전시설</h5>
	               <h3 style= "margin-left:40px;">|</h3>
	               <h5>5. 숙소 규정</h5>
	               <h3 style= "margin-left:40px;">|</h3>
	               <h5 style="color:#f85959;">6. 숙소 소개 및 등록 완료</h5>
	            </div>
        	</div>
          </div>
          
           <div class="col-lg-9">
             <div class="row">
                <div class="col-md-4 ftco-animate">
                
                      </div>
                  
                         <h1 align="left"><strong>숙소 소개 등록</strong></h1>
                         	
                        
                         <div>
                              		<h4 style= "margin-left:30px;" ><strong>소개 제목</strong></h4 >       
                                   <h5 style= "margin-left:30px;" >숙소소개를 위한 제목을 입력해주세요</h5>
                                   <textarea rows="2" cols="50" placeholder="제목을 입력해주세요" style="float:left; margin-left:30px;" ></textarea>
                                   <br><br><br>
                                   <hr style= "margin-left:30px; width:150%; ">
                                   <br>
                                   <h4 style= "margin-left:30px;" ><strong>소개 글</strong></h4 >       
                                   <h5 style= "margin-left:30px;" >등록하신 숙소를 소개해주세요</h5>
                                   <textarea rows="5" cols="70" placeholder="소개글을 입력해주세요" style="float:left; margin-left:30px;" ></textarea>
                                   <br><br><br><br><br><br><br>
                                   <hr style= "margin-left:30px; width:150%; ">
                                   <br>
                                   <h4 style= "margin-left:30px;" ><strong>숙소 사진 등록</strong></h4>       
                                   <h5 style= "margin-left:30px;" >화면에 보여질 나만의 숙소사진을 등록해주세요</h5>
                                   <input style="margin-left:30px;" type="file" name="imagefile">
                                   <p style="color:red; font-weight: bold"></p>
                               </div>
                            </div>
                      
                         </div>
                      </div>
                   </div>
                   
          	 <div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="rooms5.do"><span>이전</span></a></li>
		                <li><a href="main.do"><span>완료</span></a></li>
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