<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function chatBoxfunction(){
		var userID = '${login.getId()}';
		$.ajax({
			type:"POST",
			url:"chatbox.do",
			data:{
				userID: encodeURIComponent(userID)
			},
			success: function(data){
				if(data=="") {
					$('#boxTable').html('');
					$('#boxTable').append('<tr><td colspan="5"	align="center" style="padding: 50px"> --------대화한 상대가 없습니다.--------</td></tr>');
					return;
				}
				$('#boxTable').html('');
				var parsed = JSON.parse(data);
				var result = parsed.result;
				
				for(var i = 0; i<result.length; i++){
					if(result[i][0].value==userID){
						result[i][0].value = result[i][1].value;
					}else{
						result[i][1].value = result[i][0].value;
					}
					addBox(result[i][0].value, result[i][1].value, result[i][2].value, result[i][3].value, result[i][4].value);
				}
					
			}
			
		});
	}

	function addBox(lastID, toID, chatContent, chatTime, unread){
		$('#boxTable').append('<tr onclick="location.href=\'chat.do?toID='+encodeURIComponent(toID)+'\'">'
				+'<td style="padding-top:20px; width: 150px; height:70px; font-weight:bold; text-align:center; font-size:20px;"><hS>'+ lastID+'</hS></td>'+
				'<td style="padding-top:20px;">'+
				'<hS style="font-size:18px;">'+ chatContent + 
				'<span class="label label-info" >'+unread+'</span>'+
				'</hS>'+
				'<div class="pull-right" style="padding-top:30px;">'+chatTime+'</div>'+
				'</td>'+
				'</tr>'
		);
	}
	
	function getInfiniteBox(){
		setInterval(function(){
			chatBoxfunction();
		},3000);
	}

</script>


<body>
 <div>
	<jsp:include page="header.jsp" />
 </div>
 
 <div class="container" style="margin-top: 170px;">
 	<table class="table" style="margin: 0 auto;">
 		<thead>
 			<tr style="text-align:center;height: 80px;">
 				<th style="background-color:#3dc4f5;"><h4 style="font-size: 30px; color: white; font-weight: bold;">주고 받은 메세지 목록</h4></th>
 			</tr>
 		</thead>
 		<div style="overflow-y:auto; width: 100%; max-height: 450px;">
 			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd; margin: 0 auto;">
 				<tbody id="boxTable">
 				</tbody>
 			</table>
 		</div>
 	</table>
 	
 </div>
 
 
 
 <script type="text/javascript">
 	$(document).ready(function(){
 		chatBoxfunction();
 		getInfiniteBox();
 	})
 </script>
 

</body>
</html>