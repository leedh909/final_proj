<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>

</head>
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
    
    <link rel="stylesheet" href="css/header.css">
<style type="text/css">
	.btn2{
		border-style: none;
		background-color: #FFFFFF;
		float: right;
	}
</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	/* function openwin(){
		window.open("login2.jsp","_blank","width=400, height=300, left=500, top=400; return=false;");
	} */
	function wrapWindowByMask(){
		var maskHeight = $(document).height();  
		var maskWidth = $(window).width();
			$('#mask').css({'width':maskWidth,'height':maskHeight});  
	     	 $('#mask').fadeTo("fast",0.8);    
		}
		
		$(document).ready(function(){
		$('.openMask').click(function(e){
			e.preventDefault();
			wrapWindowByMask();
		});
	});
	
	function loginPopup() {
		$(".login-popup").fadeIn(500);
		wrapWindowByMask();
	}

	function closeForm() {
		$(".login-popup").fadeOut(500);
		$('#mask').hide();
	}

	function SignUpPopup() {
		$(".signup-popup").fadeIn(500);
		wrapWindowByMask();
	}

	function closeSignForm() {
		$(".signup-popup").fadeOut(500);
		$('#mask').hide();
	}
	

	
	
</script>
<body>
<div id="mask"></div>
  <!-- START nav -->
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">Azanda.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">

          <li class="nav-item"><a href="travelmate.do" class="nav-link">TravelMate</a></li>
          <!-- 숙소정보를 보여줄때 사용할듯 -->
          <!-- <li class="nav-item"><a href="rooms.do" class="nav-link">place to stay</a></li> -->

          <c:choose>
          	<c:when test="${login eq 'null'||login==null }">
          		 <li class="nav-item cta"><a class="nav-link"><span onclick="loginPopup();">LOGIN</span></a></li>
          	</c:when>
          	<c:when test="${login.getId() eq 'ADMIN' }">
         		<li class="nav-item"><a href="mypage.do" class="nav-link">MyPage</a></li>
				<li class="nav-item cta"><a href="logout.do" class="nav-link"><span>LOGOUT</span></a></li>
         	</c:when>
         	<c:otherwise>
         		<li class="nav-item"><a href="mypage.jsp" class="nav-link">Message</a></li>
				<li class="nav-item"><a href="mypage.do" class="nav-link">MyPage</a></li>
				<li class="nav-item"><a href="rooms.do" class="nav-link">Host등록</a></li>
				<li class="nav-item"><a href="hostpage.do" class="nav-link">HostPage</a></li>
				
				
				<li class="nav-item cta"><a href="logout.do" class="nav-link"><span>LOGOUT</span></a></li>
          	</c:otherwise>
          </c:choose>
        </ul>
      </div>
    </div>
  </nav>
  <!-- END nav -->
  
  <div class="login-popup">
  	<form action="login.do" method="post" class="form-container">
		 
		<label for="email"><b>아이디</b></label> 
		<input type="text" placeholder="Enter ID" name="id" required> 
		<label for="psw"><b>비밀번호</b></label> 
		<input type="password" placeholder="Enter Password" name="pw" required>
		<input style="cursor: pointer;" class="btn2" type="button" value="회원가입" onclick="location.href='registform.do'">
		<button type="submit" class="btn">로그인</button>
		<button type="button" class="btn cancel" onclick="closeForm()">닫기</button>
  	</form>
  </div>
</body>
</html>