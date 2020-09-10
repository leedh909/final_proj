<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ID CHECK </title>
<script type="text/javascript">
	onload=function(){
		var id = opener.document.getElementById("user_id").value;
		document.getElementsByName("id")[0].value = id;
	}
	function confirm(bool){
		if(bool==true){
			opener.document.getElementsByName("pw")[0].focus();
			opener.document.getElementById("user_id").title="y";
		} else {
			opener.document.getElementById("user_id").value = "";
			opener.document.getElementById("user_id").focus();
		}
		self.close();
	
	}
</script>
</head>

<body>
	<table width="400" height="130" align="center">
		<tr align="center">
			<td><input type="text" name="id"></td>
		</tr>
		<tr align="center">
			<c:choose>
				<c:when test="${idnotused eq 'true' }">
					<td>아이디 생성 가능</td>
					<td>${idnotused }</td>
				</c:when>
				<c:otherwise>
					<td>아이디가 이미 존재합니다.</td>
					<td>${idnotused }</td>
				</c:otherwise>
			</c:choose>
		</tr>
		<tr align="center">
			<td>
				<input type="button" value="확인" onclick="confirm(${idnotused});">
			</td>
		</tr>
	</table>
</body>
</html>