<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %> 

<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		  
	    $("#phone").focus(focused); //input에 focus일 때
	    $("#phone").blur(blured);   //focus out일 때
	})
	
	function idChk(){
		var doc = document.getElementById("user_id");
		console.log(doc);
		if(doc.value=="" || doc.value==null) {
			console.log("아이디를 입력해 주세요!")
		} else {
			if(!check(/^[a-zA-Z0-9]{3,11}$/, doc,"유효하지 않은 아이디입니다.")) {} 
			
			function check(chkid, checkValue, msg) {
			
				if(!chkid.test(checkValue.value)) {
					alert(msg);
					checkValue.value="";
					checkValue.focus();
					return false;
					
				} 
				else {
					var target = "idchk.do?id="+doc.value.trim();
					open(target,"","width=500, height=200");
					return true;
				}
			}
		}
	}
	
	function idChkConfirm(){
		var chk=document.getElementById("user_id").title;
		if(chk=="n"){
			alert("아이디 중복 체크를 먼저 해주세용~");
			document.getElementsByName("id")[0].focus();
		}
	}
	
	

	function focused(){
	  var input = $("#phone").val();
	  
	  //input안에서 하이픈(-) 제거
	  var phone = input.replace( /-/gi, '');
	    //number 타입으로 변경(숫자만 입력)
	  $("#phone").prop('type', 'number');
	  
	  $("#phone").val(phone);
	}

	function blured(){
	  var input = $("#phone").val();
	  
	  //숫자에 하이픈(-) 추가
	    var phone = chkItemPhone(input);
	  //text 타입으로 변경
	  $("#phone").prop('type', 'text');
	  
	  $("#phone").val(phone);
	}


	//전화번호 문자(-)
	function chkItemPhone(temp) {
	    var number = temp.replace(/[^0-9]/g, "");
	    var phone = "";

	    if (number.length < 9) {
	        return number;
	    } else if (number.length < 10) {
	        phone += number.substr(0, 2);
	        phone += "-";
	        phone += number.substr(2, 3);
	        phone += "-";
	        phone += number.substr(5);
	    } else if (number.length < 11) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 3);
	        phone += "-";
	        phone += number.substr(6);
	    } else {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 4);
	        phone += "-";
	        phone += number.substr(7);
	    }

	    return phone;
	}
	
</script>

<body>
 <div>
	<jsp:include page="header.jsp" />
 </div>

 	<div class="hero-wrap js-fullheight" style="background-image: url('images/bg_2.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Regist</h1>
          </div>
        </div>
      </div>
    </div>

	<section class="ftco-section contact-section ftco-degree-bg">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-12 mb-4">
            <h2 class="h4">회원 등록</h2>
          </div>
        </div>
        <div class="row block-9">
          <div class="col-md-6 pr-md-5">
            <form action="registres.do" method="post" id="resigtform">
              <div class="form-group">
                <input type="text" class="form-control" id="user_id" name="id" title="n" placeholder="ID" required="required">
              </div>
              <div class="form-group">
              	<input class="bnt2 b01_simple_rollover" style="cursor: pointer;" type="button" value="ID 중복 확인" onclick="idChk();">
				<label class="idlabel">영어와 숫자를 혼합하여 3-11 글자만 허용됩니다.</label>		
              </div>
              <div class="form-group">
                <input type="password" class="form-control" name="pw" onclick="idChkConfirm();" placeholder="PW" required="required">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="name" onclick="idChkConfirm();" placeholder="NAME" required="required">
              </div>
              <div class="form-group">
              	&nbsp;&nbsp;<label> GENDER: </label>&nbsp;&nbsp;
              	<input type="radio" value="M" name="gender" id="male" > 남자 &nbsp;
		        <input type="radio" value="F" name="gender" id="female" > 여자 <br>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="age" onclick="idChkConfirm();" placeholder="AGE" required="required">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="email" onclick="idChkConfirm();" placeholder="EMAIL" required="required">
              </div>
              <div class="form-group"> <!-- 입력형태 : 010-1111-2222 로 받아온다. -->
                <input type="number" class="form-control" id="phone" name="phone" onclick="idChkConfirm();" placeholder="전화번호(숫자만 입력하세요)" required="required">
              </div>
			
			<!--프로필 사진 등록 -->              
			  <div class="form-group">
                <input type="text" class="form-control" name="profile" onclick="idChkConfirm();" placeholder="profile" value="null" >
              </div> 
            
              <div class="form-group">
                <input type="submit" value="가입" class="btn btn-primary py-3 px-5" >
              </div>
            </form>
          
          </div>
        </div>
      </div>
    </section>



 <div>
	<jsp:include page="footer.jsp" />
 </div>
</body>
</html>