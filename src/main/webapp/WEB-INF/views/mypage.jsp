<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   .table_th{
      padding: 20px 30px;
      border-bottom: 1px solid;
      font-size: 20pt;
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

<body>
 <div>
	<jsp:include page="header.jsp" />
 </div>
 <div class="hero-wrap" style="background-image: url('images/bg_2.jpg'); height:100px;"></div>


 <c:choose>
  	<%--  관리자 Page --%>
  	<c:when test="${login  eq 'ADMIN'}">
  		<div style="padding:50px" align="center">
           <h1>관리자 계정입니다</h1>
        </div>
 		
 		<div style="padding:100px;">
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
							<td colspan="5"	align="center"> --------등록할 호스트가 없습니다.--------</td>
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
				               		<input type="button" value="승인" class="buttonset2" >
				                        &nbsp;&nbsp;
				                    <input type="button" value="보류" class="buttonset1" >
					            </td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			<%-- 
               <%
                  for(BoardDto dto:list) {
               %>
               
                     <tr>
                        <td><%=dto.getSeq() %></td>
                        <td><%=dto.getTitle() %></a></td>
                        <td><a class="" href="BoardController2?command=detail&seq=<%=dto.getSeq()%>"> <%=dto.getWriter() %></td>   <!-- 컨트롤러 만들어서 넣어준다. -->
                        <td><%=dto.getRegdate() %></td>
                        <td>
	                        <input type="button" value="승인" onclick="location.href='mypage.do?command=delete&id=<%=dto.getId() %>'" >
	                        &nbsp;&nbsp;
	                        <input type="button" value="보류" onclick="location.href='mypage.do?command=delete&id=<%=dto.getId() %>'" >
	                    </td>
                     </tr>
               <%
                  }
               %>
               --%>
            </table>
 		</div>
 		<div style="padding:100px;">
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
							<td colspan="5"	align="center"> --------등록된 호스트가 없습니다.--------</td>
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
				               		<input type="button" value="탈퇴" class="buttonset1" >
					            </td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
               <%--
               <%
                  for(LoginDto ldto: lglist) {
                     System.out.println("회원: " + session.getAttribute("login") + "=" + ldto.getId());
               %>
                     <tr>
                        <td><%=ldto.getId() %></td>
                        <td><%=ldto.getName() %></td>
                        <td><%=ldto.getEmail() %></td>
                        <td><%=ldto.getRole() %></td>
                        <td>
                         <input type="button" value="탈퇴!" onclick="location.href='mypage.do?command=delete&id=<%=ldto.getId() %>'" >
                        </td>
                     </tr>
               <%
                  }
         
               %>
               --%>
            </table>
         </div>
 		 <div style="padding:100px;">
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
							<td colspan="4"	align="center"> --------등록된 요구사항이 없습니다.--------</td>
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
         </div>
  	</c:when>
  	<c:otherwise>
  		
  		<%-- GUEST Page --%>
  		<div style="padding:50px" align="center">
           <h1>${login } 님 환영합니다.</h1>
        </div>
        
        <!-- 프로필 -->
 		<div style="padding:100px;" align="center">회원수정 가능하게 버튼 넣을 생각중</div>
 		
 		<!-- 예약현황 -->
 		<div style="padding:100px;">
 		  <h1 align="center">예약현황</h1>
 		  <table border="0" align="center" style="text-align: center">
               <col width="500px"><col width="200px">
               <col width="200px"><col width="200px">
               <thead>
                  <th class="table_th">숙소이름</th> <!-- 이름을 누르면 숙소정보보기? -->
                  <th class="table_th">체크인 날짜</th>
                  <th class="table_th">인원수</th>  
                  <th class="table_th">가격</th>
               </thead>
               
               <!-- 해당 ID에 저장된 예약정보 불러오기 -->
               <c:choose>
					<c:when test="${empty rqlist }">
						<tr>
							<td colspan="4"	align="center"> --------등록된 요구사항이 없습니다.--------</td>
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
 		</div>
 		
 		<!-- 찜목록 -->
 		
 		
  	
  	</c:otherwise>
  </c:choose>
 		
	 	
 		
 		
 		
 		


<section class="ftco-section">




</section>



 <div>
	<jsp:include page="footer.jsp" />
 </div>
</body>
</html>