<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>


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
		width: 300px;
		height: 50px;
	}
	
	.pw{
		width: 300px;
		margin-top: 6px;
		height: 50px;
	}
	
	.btn1{
		width: 100%;
		text-align: center;
		background-color: #567;
		height: 50px;
		border-style: none;
		margin-top: 12px;
	}
	
	.btn2{
		border-style: none;
		background-color: #FFFFFF;
		float: right;
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
	<h3 style="text-align:center;">입력하신 ID / PW 가 잘못되었습니다.</h1>
	<h3 style="text-align:center;">재입력 바랍니다.</h1>
      <div class="container">
        <form action="login.do" method="post" id="loginform">
        	<div style="width: 300px;" id="logindiv">
			<table >
				<col width="100"><col width="100">
				<tr>
					<td><input class="id" type="text" name="id" placeholder="아이디 입력" ></td>
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
						<input style="cursor: pointer;" class="btn2" type="button" value="회원가입"
							onclick="location.href='registform.do'">
					</td>
				</tr>
			</table>
			</div>
        </form>
      </div>
    </section>



 <div>
	<jsp:include page="footer.jsp" />
 </div>
</body>
</html>