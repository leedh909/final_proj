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
  .box-radio-input input[type="radio"]{
    display:none;
}

.box-radio-input input[type="radio"] + span{
    display:inline-block;
    background:none;
    border:1px solid #f85959;    
    padding:0px 10px;
    text-align:center;
    line-height:33px;
    font-size:x-large;
    font-weight:bold;
    cursor:pointer;
    float:left;
    padding:20px;
    margin-left:20px;
    border:1px solid;
    width:180px;
    height:120px;
}

.box-radio-input input[type="radio"]:checked + span{
    border:1px solid #23a3a7;
    background:#f85959;
    color:#fff;
}

  #next{
     border-top-right-radius: 5px;
     border-bottom-roght-radius:5px;
     margin-left:-3px;
     border: 1px solid;
     background-color: rgba(0,0,0,0);
     color:#f85959;
     padding:5px;
   }
   
   h5:hover {
	color: #f85959;
	cursor: pointer;
}
   
  </style>
  <script type="text/javascript">
      function color(obj) {
         var radios = obj.form.test;
         for(var i=0,len=buttons.length ; i<len ; i++) {
         buttons[i].style.backgroundColor = "";
         }
         obj.style.backgroundColor = "#f85959";
         obj.style.color = "white";
         }

        function color2(obj) {
      var buttons = obj.form.test;

      obj.style.backgroundColor = "#f85959";
      obj.style.color = "white";
      }
      //숫자만 출력
      function onlyNumber(event){
    	    event = event || window.event;
    	    var keyID = (event.which) ? event.which : event.keyCode;
    	    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
    	        return;
    	    else
    	        return false;
    	}
      //문자만 제외
      function removeChar(event) {
    	    event = event || window.event;
    	    var keyID = (event.which) ? event.which : event.keyCode;
    	    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
    	        return;
    	    else
    	        event.target.value = event.target.value.replace(/[^0-9]/g, "");
    	}
  </script>
  <body>
   <div>
      <jsp:include page="header.jsp" />
   </div>
    <div class="hero-wrap js-fullheight" style="background-image: url('images/room-2.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">HOST 등록</h1>
          </div>
        </div>
      </div>
    </div>

    <form action="rooms3.do" method="get">
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
                  
                         <h1 align="left"><strong>숙소 유형 설정</strong></h1>
                         <div style="width:1200px;">
                                    <h4 style= "margin-left:30px;" ><strong>숙소</strong></h4 >
                                    <br> 
                            <label class="box-radio-input"><input type="radio" name="test" value="원룸" checked="checked"><span>원룸</span></label>&nbsp;
                            <label class="box-radio-input"><input type="radio" name="test" value="빌라"><span>빌라</span></label>&nbsp;
                            <label class="box-radio-input"><input type="radio" name="test" value="오피스텔"><span>오피스텔</span></label>
                            <label class="box-radio-input"><input type="radio" name="test" value="단독주택"><span>단독주택</span></label>
                                      <br><br><br><br>
                                      <hr style= "margin-left:30px; width:108%; ">
                                      <br>
                              <div style="float:left; margin-left:30px;"><h5>숙소 이름: </h5></div>
                                   <textarea rows="2" name="room_name" cols="20" placeholder="이름을 입력해주세요" style="float:left; margin-left:30px;" ></textarea>
                                   <br><br><br><br>
                                   <hr style= "margin-left:30px; width:108%; ">
                                   <br>   
                  
                            <br><br>
                            <div style="float:left; margin-left:30px;"><h5>숙소 가격: </h5></div>
                                <textarea onkeydown="return onlyNumber(event)" onkeyup="removeChar(event)" rows="1" name="room_price" cols="30" placeholder="가격을 입력해주세요" style="float:left; margin-left:30px; width:180px; height:40px;" ></textarea>&nbsp;     
                                <label><h4>₩</h4></label>
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
                            </div>
                         </div>        
                      </div>
                   </div>
        
    </section> <!-- .section -->
     </form>
    <div>
      <jsp:include page="footer.jsp" />
   </div>
    
  </body>
</html>