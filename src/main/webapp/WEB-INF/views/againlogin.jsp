<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<style type="text/css">
	
	#loginform{
		display: table;
		margin-top: 30px;
		margin-left:auto;
		margin-right: auto;
		margin-bottom: 40px;
	}
	
	.id{
		width: 350px;
		height: 50px;
	}
	
	.pw{
		width: 350px;
		margin-top: 6px;
		height: 50px;
	}
	
	.btn1{
		border-style: none;
		background-color: #FFFFFF;
		float: left;
	}
	
	.btn1:hover{
		text-decoration: underline;
	}
	
	.btn2{
		border-style: none;
		background-color: #FFFFFF;
		float: right;
	}
	.btn2:hover{
		text-decoration: underline;
	}

	.button_base {
		margin-top: 12px;
		height: 50px;
		width: 100%;
	    border: 0;
	    position: relative;
    	box-sizing: border-box;
    	-webkit-box-sizing: border-box;
   		-moz-box-sizing: border-box;
    	-webkit-user-select: none;
    	cursor: default;
	}

	.b01_simple_rollover {
    	color: #ffffff;
    	padding: 10px;
    	background-color: #212529;
	}

	.b01_simple_rollover:hover {
    	color: #ffffff;
    	background-color: #FF1313;
	}
	
	
	
</style>
</head>

<body>
	<div>
		<jsp:include page="header.jsp" />
	</div>


 	<div class="hero-wrap" style="background-image: url('images/bg_2.jpg'); height:100px;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true" >
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }" >
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }" >LOGIN</h1>
          </div>
        </div>
      </div>
    </div>

	<section class="ftco-section contact-section ftco-degree-bg">
	<h3 style="text-align:center;">입력하신 ID / PW 가 잘못되었습니다.</h3>
	<h3 style="text-align:center;">재입력 바랍니다.</h3>
      <div class="container">
        <form action="login.do" method="post" id="loginform">
        	<div style="width: 350px; align-items: center;" id="logindiv">
			<table>
				<tr>
					<td>
						<input class="id" type="text" name="id" placeholder="아이디 입력">
					</td>
				</tr>
				<tr>
					<td>
						<input class="pw" type="password" name="pw" placeholder="비밀번호 입력">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input style="cursor: pointer;" class="button_base b01_simple_rollover"  type="submit" value="login">
					</td>
				</tr>
				<tr>
					<td>
						<input style="cursor: pointer;" class="btn1" type="button" value="아이디" id="find_id"
							onclick="document.getElementById('id01').style.display='block'; result_init();">	
						<input style="cursor: pointer;" class="btn1" type="button" value="비밀번호 찾기" id="find_pw"
							onclick="document.getElementById('id02').style.display='block'; result_init2();">	
						<input style="cursor: pointer;" class="btn2" type="button" value="회원가입"
							onclick="location.href='registform.do'">
					</td>
				</tr>
			</table>
			</div>
        </form>
      </div>
    </section>
    
    
    <script type="text/javascript">
    
    	function result_init(){
    		$('#result_find_id').empty();
    		$("#find_name").val('');
    		$("#find_email").val('');
    	}
    
    	
    	function find_id(){
    		$('#result_find_id').empty();
    		
    		var formdata = $("#search_id").serialize();
    		
    		$.ajax({
    			type:'POST',
    			url:'find_id.do',
    			dataType:'JSON',
    			data:formdata,
    			success: function(data){
    				var find_id = data.res;
    				if(find_id == null || find_id ==undefined||find_id=="null"){
    					$("#result_find_id").append("<h1 style='color:red; text-align:center;'>정보를 다시 입력해주세요.</h1>");
    				}else{
    					$("#result_find_id").append("<h1 style='text-align:center;'>"+"회원님의 정보로 등록된 이메일은 <br>"+find_id+"<br> 입니다.</h1>");
    				}
    				
    			},
    			error: function(data){
    				$("#result_find_id").append("<h1 style='color:red; text-align:center;'>정보를 다시 입력해주세요.</h1>");
    			}
    		})
    	}
    	
    </script>

	<!-- 아이디 찾기(모달) -->
	  <div id="id01" class="w3-modal">
	    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
	
	      <div class="w3-center"><br>
	      	<h3>ID 찾기</h3>
	        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>	        
	      </div>
	
	      <form class="w3-container" id="search_id">
	        <div class="w3-section">
	          <label><b>Name</b></label>
	          <input class="w3-input w3-border" type="text" placeholder="Name" name="name" id="find_name" required>
	          <label><b>Email</b></label>
	          <input class="w3-input w3-border" type="text" placeholder="Email" name="email" id="find_email"  required>
	          
	          <button class="w3-button w3-block w3-green w3-section w3-padding" type="button" onclick="find_id(); return false;">Search</button>
	        </div>
	      </form>
	      <span id="result_find_id">
	      </span>
	
	      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
	        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
	      </div>
	
	    </div>
	  </div>
	  
	 <script type="text/javascript">
    
    	function result_init2(){
    		$('#result_find_pw').empty();
    		$("#find_id2").val('');
    		$("#find_email2").val('');
    	}
    
    	
    	function find_pw(){
    		$('#result_find_pw').empty();
    		
    		var formdata = $("#search_pw").serialize();
    		
    		$.ajax({
    			type:'POST',
    			url:'find_pw.do',
    			dataType:'JSON',
    			data:formdata,
    			success: function(data){
    				var find_pw = data.result;
    				console.log(find_pw);
    				if(find_pw == null || find_pw ==undefined||find_pw=="null"){
    					$("#result_find_pw").append("<h1 style='color:red; text-align:center;'>정보를 다시 입력해주세요.</h1>");
    				}else{
    					$("#result_find_pw").append("<h1 style='text-align:center;'>"+"입력하신 이메일로 <br>임시 비밀번호가 <br>보내졌습니다.</h1>");
    					$("#result_find_pw").append("<div style='text-align:center; padding-bottom:10px;'><input type='button' class='w3-button w3-black w3-hover-blue' value='확인' onclick='location.href="+"\"main.do\""+"'></div>");
    				}
    				
    			},
    			error: function(data){
    				$("#result_find_pw").append("<h1 style='color:red; text-align:center;'>정보를 다시 입력해주세요.</h1>");
    			}
    		})
    	}
    	
    </script>
	  
	 <!-- 비밀번호 찾기(모달) -->
	  <div id="id02" class="w3-modal">
	    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
	
	      <div class="w3-center"><br>
	      	<h3>Passward 찾기</h3>
	        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>	        
	      </div>
	
	      <form class="w3-container" id="search_pw">
	        <div class="w3-section">
	          <label><b>ID</b></label>
	          <input class="w3-input w3-border" type="text" placeholder="Id" name="id" id="find_id2" required>
	          <label><b>Email</b></label>
	          <input class="w3-input w3-border" type="text" placeholder="Email" name="email" id="find_email2"  required >
	          
	          <button class="w3-button w3-block w3-green w3-section w3-padding" type="button" onclick="find_pw(); return false;">Search</button>
	        </div>
	      </form>
	      <span id="result_find_pw">
	      </span>
	
	      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
	        <button onclick="document.getElementById('id02').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
	      </div>
	
	    </div>
	  </div>

 <div>
	<jsp:include page="footer.jsp" />
 </div>
</body>
</html>