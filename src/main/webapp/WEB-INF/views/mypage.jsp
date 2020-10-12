<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
   .table_th{
      padding: 20px 30px;
      border-bottom: 1px solid;
      font-size: 13pt;
   }
   .boardtitle{
      color: blue;
   }
   .qnatitle {
      color: blue;
   }
   .buttonset1{
	  	border-radius: 5px;
		background-color: red;
		color:white;
		border:none;
		cursor:pointer;
   }
   .buttonset2{
	  	border-radius: 5px;
		background-color: blue;
		color:white;
		border:none;
		cursor:pointer;
   }
</style>

</head>


<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	//업로드 파일 읽기
	function uploadImgPreview() {
		let fileInfo = document.getElementById("upImgFile").files[0];
		let reader = new FileReader();
	
	    reader.onload = function() {
	        document.getElementById("imagepreview").src = reader.result;
	        document.getElementById("imagepreview").innerText = reader.result;
	        document.getElementById("imagepreview").height = 250;
	        document.getElementById("imagepreview").width = 250;
	    };
	
		if( fileInfo ) {
	        reader.readAsDataURL( fileInfo );
	    }
	}

	
	//목록 보이기
	function listview(value){
		var hclist=document.getElementById("hclist");
		var hlist=document.getElementById("hlist");
		var rqlist=document.getElementById("rqlist");
		
		if(value =="hclist"){
			hclist.style.display = "block";
			hlist.style.display="none";
			rqlist.style.display="none";
		}else if(value=="hlist"){
			hclist.style.display = "none";
			hlist.style.display="block";
			rqlist.style.display="none";
		}else if(value=="rqlist"){
			hclist.style.display = "none";
			hlist.style.display="none";
			rqlist.style.display="block";
		}
		
		
		
	}
	
</script>
<body style="background-color: rgb(240,240,240);">
 <div>
	<jsp:include page="header.jsp" />
 </div>
 <div class="hero-wrap" style="background-image: url('images/bg_2.jpg'); height:100px;"></div>


 <c:choose>
  	<%--  관리자 Page --%>
  	<c:when test="${login.getId()  eq 'ADMIN'}">
  		<div style="padding:50px; width: 300px;" class="w3-container w3-cell" >
  			<div class="w3-border" style="background-color: white;text-align: center;">
  				<h1 style="width:300px; padding:5px; margin: 2px;">관리자 계정</h1>
  			</div>
  			<ui class="w3-ul w3-hoverable">
				<li onclick="listview('hclist')"><h4>호스트 등록 여부</h4></li>
				<li onclick="listview('hlist')"><h4>호스트 목록</h4></li>
				<li onclick="listview('rqlist')"><h4>요구사항</h4></li>
  			</ui>
        </div>
 		
 		<div class="w3-container w3-cell" style="background-color: white; width:100%;">
	 		<div style="padding:100px; display: none;" id="hclist">
	 		  <h1 align="center">호스트 등록 여부</h1>
	 		  <table border="0" align="center" style="text-align: center">
	               <col width="200px"><col width="200px">
	               <col width="500px"><col width="300px"><col width="150px"> 
	               <thead>
	                  <th class="table_th">호스트번호</th>
	                  <th class="table_th">회원번호</th>
	                  <th class="table_th">숙소이름</th>  <!-- 이름을 누르면 숙소정보보기? -->
	                  <th class="table_th">호스트등록상태</th>
	                  <th class="table_th">결재</th>
	               </thead>
	               
	               <!-- 호스트 등록 DTO 등록여부가 N인경우만  불러오기 -->
			        <c:choose>
						<c:when test="${empty hclist }">
							<tr>
								<td colspan="5"	align="center" style="padding-top: 50px"> --------등록할 호스트가 없습니다.--------</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${hclist}" var="hdto">
								<tr>
									<td>${hdto.seq_h }</td>
									<td>${hdto.seq_m }</td>
									<td>${hdto.room_name }</td>
									<td>${hdto.state }</td>
									<td>
					               		<input type="button" value="승인" class="buttonset2" onclick="location.href='approve.do?seq_h=${hdto.seq_h}'">
					                        &nbsp;&nbsp;
					                    <input type="button" value="보류" class="buttonset1" onclick="location.href='mailform.do?seq_m=${hdto.seq_m}'">
						            </td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
	            </table>
	<section class="ftco-section">
	</section>
	 		</div>
	 		<div style="padding:100px; display: none;" id="hlist">
	            <h1 align="center">호스트 목록</h1>
	            <table border="0" align="center" style="text-align: center">
	               <col width="200px"><col width="200px"><col width="200px"><col width="200px"><col width="200px">
	               <thead>
	                  <th class="table_th">호스트번호</th>
	                  <th class="table_th">회원ID</th>
	                  <th class="table_th">NAME</th>
	                  <th class="table_th">전화번호</th>
	                  <th class="table_th">탈퇴</th>
	               </thead>
	               
	               <!-- 호스트 등록 DTO 등록여부가 Y인경우만  불러오기 -->
	               <c:choose>
						<c:when test="${empty hlist }">
							<tr>
								<td colspan="5"	align="center" style="padding-top: 50px"> --------등록된 호스트가 없습니다.--------</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${hlist}" var="hdto">
								<tr>
									<td>${hdto.seq_h }</td>
									<td>${hdto.id }</td>
									<td>${hdto.name }</td>
									<td>${hdto.phone }</td>
									<td>
					               		<input type="button" value="탈퇴" class="buttonset1" onclick="location.href='hdelete.do?seq_h=${hdto.seq_h}'">
						            </td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
	               <%--
	                         <input type="button" value="탈퇴!" onclick="location.href='mypage.do?command=delete&id=<%=ldto.getId() %>'" >
	               --%>
	            </table>
	<section class="ftco-section">
	</section>
	         </div>
	 		 <div style="padding:100px; display: none;" id="rqlist">
	            <h1 align="center">요구사항</h1>
	            <table border="0" align="center" style="text-align: center">
	               <col width="200px"><col width="200px"><col width="300px"><col width="500px">
	               <thead>
	                  <th class="table_th">회원ID</th>
	                  <th class="table_th">회원명</th>
	                  <th class="table_th">제목</th>
	                  <th class="table_th">요구내용</th>
	               </thead>
	               
	               <!-- 요구사항 DB값 불러오기 -->
	               <c:choose>
						<c:when test="${empty rqlist }">
							<tr>
								<td colspan="4"	align="center" style="padding-top: 50px"> --------등록된 요구사항이 없습니다.--------</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${rqlist}" var="rqdto">
								<tr>
									<td>${rqdto.rq_id }</td>
									<td>${rqdto.rq_name }</td>
									<td>${rqdto.rq_title }</td>
									<td>${rqdto.rq_context }</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
	            </table>
	<section class="ftco-section">
	</section>
	         </div>
         </div>
  	</c:when>
  	
  	
  	<c:otherwise>
  	<%-- GUEST Page --%>
  	<div style="width:80%; margin-left: 110px;">
  		<div style="padding:50px; width: 240px;" class="w3-container w3-cell">
  			<c:choose>
	        	<c:when test="${empty login.getProfile()}">
	        		<div class="w3-border" style="background-color:white; border-style: groove; border-width: 2px;">
	        			<div class="w3-container">
	        				<img src="storage/profile/baseprofile.jpg" alt="기본이미지입니다." style="width:200px; height:200px; padding: 15px;" class="w3-circle"
	        					onclick="document.getElementById('id02').style.display='block'">
	        			</div>
	        			<div class="w3-container" style="text-align: center;">
	        				<h1>${login.getId() } 님</h1>
	        				<h1  style="font-family: Stylish;">환영합니다.</h1>
	        			</div>
	        			<div class="w3-container">
	        				<button style="margin-left:25%; margin-bottom: 10px;" onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-green w3-large">정보수정</button>
	        				
	        			</div>
	        		</div>
	        		
	        		<div id="id02" class="w3-modal">
					    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="width: 400px; height: 400px;">
					      <header class="w3-container w3-teal"> 
					        <span onclick="document.getElementById('id02').style.display='none'" 
					        class="w3-button w3-large w3-display-topright">&times;</span>
					        <h2>Change the Image</h2>
					      </header>
					      <div class="w3-container" style="padding:10px;">
					        <form method="post" enctype="multipart/form-data" modelAttribute="uploadFile" action="MP_profileupdate.do" id="fileForm">
					        	<input type="file" id="upImgFile" name="mpfile" onChange="uploadImgPreview();" accept="image/*" required="required">
					        	<input type="submit" value="업로드">
					        </form>
					        <hr>
          						<img id="imagepreview" src="" >
					      </div>
					    </div>
					</div>
	        	</c:when>
	        	<c:otherwise>
		        	<div class="w3-container">
		        		<div class="w3-border" style="background-color:white;">
		        			<div class="w3-container">
		        				<img src="storage/profile/${login.getId() }image.jpg?t=${time }" alt="새로고침 해주세요!" style="width:200px; height:200px;" class="w3-circle w3-margin-top"
		        					onclick="document.getElementById('id02').style.display='block'">
		        			</div>
		        			<div class="w3-container" style="text-align: center;">
		        				<h1>${login.getId() } 님</h1>
		        				<h1  style="font-family: Stylish;">환영합니다.</h1>
		        			</div>
		        			<div class="w3-container">
		        				<button style="margin-left:25%; margin-bottom: 10px;" onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-green w3-large">정보수정</button>
		        			</div>
	        			</div>
		        			
		        		<div id="id02" class="w3-modal">
						    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="width: 400px; height: 400px;">
						      <header class="w3-container w3-teal"> 
						        <span onclick="document.getElementById('id02').style.display='none'" 
						        class="w3-button w3-large w3-display-topright">&times;</span>
						        <h2>Change the Image</h2>
						      </header>
						      <div class="w3-container" style="padding:10px;">
						        <form method="post" enctype="multipart/form-data" modelAttribute="uploadFile" action="MP_profileupdate.do" id="fileForm">
						        	<input type="file" id="upImgFile" name="mpfile" onChange="uploadImgPreview();" accept="image/*" required="required">
						        	<input type="submit" value="업로드">
						        </form>
						        <hr>
           						<img id="imagepreview" src="" >
						      </div>
						    </div>
						</div>
		        		
		        	</div>
	        	</c:otherwise>
	        </c:choose>
           
        </div>
 		
 		<!-- 예약현황 -->
 		<div style="padding:100px; background-color: white; width: 100%;" class="w3-container w3-cell">
 		  <h1 style="font-family:sofia; font-size:40px;">Announce</h1>
 		 <br>
 		  <h1 align="center" style=" font-family: monospace;">예약현황</h1>
 		  <table align="center" style="text-align: center; border-style:double; border-width: 15px; width: 800px; height: 400px;">
               <col width="200px"><col width="400px">
               <col width="200px"><col width="200px"><col width="200px">
               <thead>
                  <th class="table_th">예약번호</th>
                  <th class="table_th">숙소이름</th> <!-- 이름을 누르면 숙소정보보기? -->
                  <th class="table_th">체크인</th>
                  <th class="table_th">인원수</th>  
                  <th class="table_th">가격</th>
               </thead>
               
               <!-- 해당 ID에 저장된 예약정보 불러오기 -->
               <c:choose>
					<c:when test="${empty relist }">
						<tr>
							<td colspan="5"	align="center" style="padding-top: 50px"> --------등록된 예약정보가 없습니다.--------</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${relist}" var="redto">
							<tr>
								<td style="font-size: 20px;">${redto.seq_re }</td>
								<td style="font-size: 15px;">${redto.room_name }</td>
								<td> <fmt:formatDate pattern="yyyy-MM-dd  HH:mm" value="${redto.check_in }"/></td>
								<td style="font-size: 20px;">${redto.people }명</td>
								<td style="font-size: 15px;">${redto.price }원</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
            </table>
    <section class="ftco-section">

	</section>
 		</div>
 </div>		
 		 <!-- 프로필 -->
		  <div id="id01" class="w3-modal">
		    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
		
		      <div class="w3-center"><br>
		        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
		        <c:choose>
		        	<c:when test="${empty login.getProfile()}">
		        		<img src="storage/profile/baseprofile.jpg" alt="null" style="width:30%; height:200px;" class="w3-circle w3-margin-top">
		        	</c:when>
		        	<c:otherwise>
		        		<img src="storage/profile/${login.getId() }image.jpg?t=${time }" alt="${profile }" style="width:30%; height:200px;" class="w3-circle w3-margin-top">
		        	</c:otherwise>
		        </c:choose>
		        
		      </div>
		
		      <form class="w3-container" action="profileupdate.do">
		        <div class="w3-section">
		          <label><b>ID</b></label>
		          <input class="w3-input w3-border" type="text" placeholder="ID" name="id" readonly="readonly" value="${login.getId() }">
		          <label><b>Password</b></label>
		          <input class="w3-input w3-border" type="password" placeholder="Input Password" name="pw" required>
		          <label><b>Name</b></label>
		          <input class="w3-input w3-border" type="text" placeholder="Name" name="name" value="${login.getName() }" required>
		          <label><b>Email</b></label>
		          <input class="w3-input w3-border" type="text" placeholder="Email" name="email" value="${login.getEmail() }" required>
		          <label><b>Phone</b></label>
		          <input class="w3-input w3-border" type="text" placeholder="Phone" name="phone" value="${login.getPhone() }" required>
		          
		          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Setting</button>
		        </div>
		      </form>
		
		      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
		        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
		      </div>
		
		    </div>
		  </div>
 		<!-- 찜목록 -->
 		
 		
  	
  	</c:otherwise>
  </c:choose>
 		

 <div>
	<jsp:include page="footer.jsp" />
 </div>
</body>
</html>