<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='./calendar/main.css' rel='stylesheet' />
<script src='./calendar/main.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev',
        center: 'title',
        right: 'today next'
      },
      initialDate: '2020-06-12',
      navLinks: false, // can click day/week names to navigate views
      businessHours: false, // display business hours
      editable: false,
      selectable: true,
      events: [
        {
          title: 'Business Lunch',
          start: '2020-06-03',
          description: 'leeasdfasdf'
        },
        {
          title: 'Meeting',
          start: '2020-06-13',
          description: 'availableForMeeting', 
          color: '#257e4a'
        },
        {
          title: 'Conference',
          start: '2020-06-18',
          end: '2020-06-20'
        },
        {
          title: 'Party',
          description: 'leeasdfasdf',
          start: '2020-06-29'
          
        }
        
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

</style>
<title>Insert title here</title>
</head>
<body>
 <div>
	<jsp:include page="header.jsp" />
 </div>
 <div class="hero-wrap" style="background-image: url('images/bg_2.jpg'); height:100px;"></div>
 
 <!-- 달력 -->
 <div id='calendar'></div>


	<div style="padding:10px;">
        <h1 align="center">예약자 현황</h1>
        <table border="0">
           <col width="100px"><col width="100px"><col width="100px"><col width="100px"><col width="50px">
           <thead>
              <th class="table_th">예약번호</th>
              <th class="table_th">예약자이름</th>
              <th class="table_th">체크인날짜</th>
              <th class="table_th">체크아웃날짜</th>
              <th class="table_th">인원</th>
              <th class="table_th">전화번호</th>
           </thead>
           <tr>
           	<td>a</td>
           	<td>a</td>
           	<td>a</td>
           	<td>a</td>
           	<td>a</td>
           	<td>a</td>
  			</tr>
           
           <!-- 호스트 등록 DTO 등록여부가 Y인경우만  불러오기 -->
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

	<div style="padding:50px;">
        <h1 align="center">대기자 현황</h1>
        <table border="0">
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


 <div>
	<jsp:include page="footer.jsp" />
 </div>
</body>
</html>