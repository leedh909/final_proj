<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d53ad4e4b4f5dd4d2b5d63c9681b5f93"></script>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
   href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
   rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
   rel="stylesheet">

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

<body>

   <div>
      <jsp:include page="header.jsp" />
   </div>

   <div class="hero-wrap js-fullheight"
      style="background-image: url('images/bg_3.jpg');">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
            data-scrollax-parent="true">
            <div class="col-md-9 ftco-animate text-center"
               data-scrollax=" properties: { translateY: '70%' }">
               <h1 class="mb-3 bread"
                  data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">rooms</h1>
            </div>
         </div>
      </div>
   </div>


   <section class="ftco-section ftco-degree-bg">
      <div class="container" width="500" height="600">
         <div class="row">
            <div class="col-lg-3 sidebar ftco-animate">
               <div class="sidebar-wrap bg-light ftco-animate">
                  <h1 class="heading mb-4">
                     <strong>숙소 등록 순서</strong>
                  </h1>
                  <div>
                     <h5 style="color: #f85959;">1. 숙소위치</h5>
                     <h3 style="margin-left: 40px;">|</h3>
                     <h5>2. 숙소유형</h5>
                     <h3 style="margin-left: 40px;">|</h3>
                     <h5>3. 객실(세부정보)</h5>
                     <h3 style="margin-left: 40px;">|</h3>
                     <h5>4. 편의 시설 / 안전시설</h5>
                     <h3 style="margin-left: 40px;">|</h3>
                     <h5>5. 숙소 규정</h5>
                     <h3 style="margin-left: 40px;">|</h3>
                     <h5>6. 숙소 소개 및 등록 완료</h5>
                  </div>
               </div>
            </div>

            <div class="col-lg-9">
               <div class="row">
                  <div class="col-md-4 ftco-animate"></div>

                  <h1 align="left">
                     <strong>숙소 위치 표시/설정</strong>
                  </h1>


                  <div>
                     <h4 style="float: left; margin-left: 30px;">
                        <strong>위치</strong>
                     </h4>
                     <script>
                     
                     </script>
                     <br>
                     <br>
                     <div style="float: left; margin-left: 30px;">
                        <h5>주소</h5>
                     </div>
                     &nbsp;
                     <textarea rows="2" cols="120" placeholder="주소를 입력해주세요"
                        style="float: left; margin-left: 30px;"></textarea>&nbsp;
                        <button onclick =test1(); >검색</button>
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                     <div style="float: left; margin-left: 30px;">
                        <h5>건물/빌딩/동, 층, 호수 (선택 사항)</h5>
                     </div>
                     <textarea rows="2" cols="120" placeholder="선택사항을 입력해주세요"
                        style="float: left; margin-left: 30px;"></textarea>
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                     <div style="float: left; margin-left: 30px;">
                        <h5>시/도</h5>
                     </div>
                     &nbsp; <select style="width: 120px; height: 50px;">
                        <option value="seoul">서울특별시</option>
                        <option value="busan">부산광역시</option>
                        <option value="daegu">대구광역시</option>
                        <option value="daejeon">대전광역시</option>
                        <option value="jeju">제주도</option>
                        <option value="gangneung">강릉시</option>
                        <option value="gyoungju">경주시</option>
                        <option value="yeosu">여수시</option>
                     </select> <br>
                     <br>
                     <br>
                     <div style="float: left; margin-left: 30px;">
                        <h5>지도상의 위치</h5>
                     </div>
                     <br>
                     <br>
                     <div id="map3" style="width: 850px; height: 400px; float: left; margin-left: 30px; "></div>
                   <script>
                        var container1 = document.getElementById('map3');
                        var options1 = {
                           center : new kakao.maps.LatLng(33.450701, 126.570667),
                           level : 4
                        };

                        var map3 = new kakao.maps.Map(container1, options1);
                     </script>
                  </div>
               </div>

            </div>
         </div>
      </div>

      <div class="row mt-5">
         <div class="col text-center">
            <div class="block-27">
               <ul>
                  <li><a href="rooms.do"><span>이전</span></a></li>
                  <li><a href="rooms2.do"><span>다음</span></a></li>
               </ul>
            </div>
         </div>
      </div>
      </div>
      <!-- .col-md-8 -->
      </div>
      </div>
   </section>
   <!-- .section -->

   <div>
      <jsp:include page="footer.jsp" />
   </div>

</body>
</html>