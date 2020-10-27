<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='./calendar/main.css' rel='stylesheet' />
<script src='./calendar/main.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
	var i =0;
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev',
        center: 'title',
        right: 'today next'
      },
      initialDate: '<fmt:formatDate pattern="yyyy-MM-dd" value="${today}"/>',
      navLinks: false, // can click day/week names to navigate views
      businessHours: false, // display business hours
      editable: false,
      selectable: true,
      events: [
    	
		<c:forEach items="${relist}" var="redto">
			{
				title: '${redto.name}',
				start: '<fmt:formatDate pattern="yyyy-MM-dd" value="${redto.check_in }"/>',
				end:'<fmt:formatDate pattern="yyyy-MM-dd" value="${redto.check_out }"/>'
			},
		</c:forEach>
        
      ]
    });

    calendar.render();
  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 20px;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
  	padding: 50px;
    max-width: 900px;
    margin: 0 auto;
  }
  
  .table_th{
      padding: 20px 30px;
      border-bottom: 1px solid;
      font-size: 20pt;
  }
</style>
<title>Insert title here</title>
</head>
<body>
 <div>
	<jsp:include page="header.jsp" />
 </div>
 <div class="hero-wrap" style="background-image: url('images/bg_2.jpg'); height:100px;"></div>
 
<c:choose>
	<c:when test="${host eq 'Y' }">
	 	<!-- 달력 -->
	 	<div id='calendar'></div>
	
		<!-- 예약자현황 -->
		<div style="padding:10px; padding-bottom:120px;">
	        <h1 align="center">예약자 현황</h1>
	        <table border="0" align="center" style="text-align: center">
	           <col width="200px"><col width="200px"><col width="200px">
	           <col width="250px"><col width="200px"><col width="200px">
	           <thead>
	              <th class="table_th">예약번호</th>
	              <th class="table_th">예약자이름</th>
	              <th class="table_th">체크인날짜</th>
	              <th class="table_th">체크아웃날짜</th>
	              <th class="table_th">인원</th>
	              <th class="table_th">전화번호</th>
	           </thead>
	           
	           <!-- 예약자 테이블의 데이터를 불러온다. -->
		        <c:choose>
					<c:when test="${empty relist }">
						<tr>
							<td colspan="6"	align="center" style="padding-top: 50px"> --------예약된 정보가 없습니다.--------</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${relist}" var="redto">
							<tr>
								<td>${redto.seq_re }</td>
								<td>${redto.name }</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd  HH:mm" value="${redto.check_in }"/></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd  HH:mm" value="${redto.check_out }"/></td>
								<td>${redto.people }</td>
								<td>${redto.phone }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
	        </table>
	     </div>
     </c:when>
     <c:when test="${host eq 'N' }">
     	<h1 align="center" style="padding:100px;">관리자의 승인을 기다려주세요.</h1>
     </c:when>
     <c:otherwise>
     	<h1 align="center" style="padding:100px;">HOST 등록 후 이용해주세요.</h1>
     </c:otherwise>
     
</c:choose>
<!-- 예약 대기자 현황은 결제 시스템 때문에 잠시 보류 -->
<%-- 	<div style="padding:50px;">
        <h1 align="center">대기자 현황</h1>
        <table border="0" align="center" style="text-align: center">
           <col width="100px"><col width="100px"><col width="100px"><col width="100px"><col width="50px">
           <thead>
              <th class="table_th">예약번호</th>
              <th class="table_th">예약자이름</th>
              <th class="table_th">체크인날짜</th>
              <th class="table_th">체크아웃날짜</th>
              <th class="table_th">인원</th>
              <th class="table_th">전화번호</th>
              <th class="table_th">예약승인 여부</th>
           </thead>
           <tr>
           	<td>a</td>
           	<td>a</td>
           	<td>a</td>
           	<td>a</td>
           	<td>a</td>
           	<td>a</td>
           	<td>
           		<input type="button" value="승인"  > &nbsp;&nbsp;<input type="button" value="취소"  >
           	</td>
  			</tr>
           
           <!-- 호스트 등록 DTO 등록여부가 Y인경우만  불러오기 -->
           
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
          
        </table>
     </div> --%>


 <div>
	<jsp:include page="footer.jsp" />
 </div>
</body>
</html>