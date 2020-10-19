<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!--  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.pull-right{
		float: right;
	}
	
	/* 모달 팝업창 관련 디자인 처리 */
	.vertical-alignment-helper{
		display: table;
		height: 100%;
		width: 100%;
		pointer-events: none;
	}
	.vertical-align-center{
		display: table-cell;
		vertical-align: middle;
		pointer-events: none;
	}
	.modal-content{
		width: inherit;
		height: inherit;
		margin: 0 auto;
		pointer-events: all;
	}
</style>

<script type="text/javascript">
	function findfunction(){
		var userID = $('#findID').val();
		var loginID = '${login.getId()}';
		console.log("loginID: "+loginID);
		
		$.ajax({
			type: "POST",
			url:'UserRegisterCheck.do',
			data:{userID: userID},
			success:function(result){
				console.log(result);
				if(result==0){
					if(userID == loginID){
						$('#friendResult').html('<thead>'+
								'<tr>'+
								'<th><h4 style="font-size:30px;">검색 결과</h4></th>'+
								'</tr>'+
								'</thead>'+
								'<tbody>'+
								'<tr>'+
								'<td style="text-align: center;"><h3 style="padding:10px; font-size:22px;">본인 아이디입니다.</h3></td>'+
								'<tr>'+
								'<tbody>' );
					}else if(userID=="ADMIN"){
						$('#friendResult').html('<thead>'+
								'<tr>'+
								'<th><h4 style="font-size:30px;">검색 결과</h4></th>'+
								'</tr>'+
								'</thead>'+
								'<tbody>'+
								'<tr>'+
								'<td style="text-align: center;"><h3 style="padding:10px; font-size:22px;">입력하신 ID 가 존재하지 않습니다.</h3></td>'+
								'<tr>'+
								'<tbody>' );
					}else{
					
						getFriend(userID);
					}
				}else{
					failfriend();
				}
			}
		});
	}

	function getFriend(findID){
		$('#friendResult').html('<thead>'+
				'<tr>'+
				'<th><h4 style="font-size:30px;">검색 결과</h4></th>'+
				'</tr>'+
				'</thead>'+
				'<tbody>'+
				'<tr>'+
				'<td style="text-align: center;"><h3 style="font-size:25px;padding-top: 20px;">'+findID+'</h3><a href="chat.do?toID='+encodeURIComponent(findID)+'" class="btn btn-primary pull-right" style="font-size:18px;">'+'메세지보내기</a></td>'+
				'<tr>'+
				'<tbody>' );
				
	}
	
	function failfriend(){
		$('#friendResult').html('<thead>'+
				'<tr>'+
				'<th><h4 style="font-size:30px;">검색 결과</h4></th>'+
				'</tr>'+
				'</thead>'+
				'<tbody>'+
				'<tr>'+
				'<td style="text-align: center;"><h3 style="padding:10px; font-size:18px;">입력하신 ID 가 존재하지 않습니다.</h3></td>'+
				'<tr>'+
				'<tbody>' );
	}
	
	
	
</script>
</head>
<body>
 <div>
	<jsp:include page="header.jsp" />
 </div>

	<div class="container" style="margin-top:170px;">
		<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd;">
			<thead>
				<tr>
					<th colspan="2" style="background-color: blue; text-align: center; height: 80px;"> <h4 style="font-weight: bold; color:white;font-size:38px; ">검색으로 친구찾기</h4>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 150px;"><h5 style="font-weight: 800; font-size:25px; padding-top:7px;">친구 아이디</h5></td>
					<td><input class="form-control" type="text" id="findID" maxlength="20" placeholder="찾을 아이디를 입력하세요."></td>
				</tr>	
				<tr>
					<td colspan="2"><button class="btn btn-primary pull-right" onclick="findfunction();" style="width: 100px; font-size: 20px;">검색</button></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="container">
		<table id="friendResult" class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd;">
		
		</table>
	
	</div>
	
	
	
	
</body>
</html>