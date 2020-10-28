<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">메일 보내기</h2>
	
    <form action="mailSending.do" method="post">
   		<input type="hidden" name="seq_h" value="${seq_h }">
      <div align="center" style="padding-top:20px;">
      	<div>상대 이메일</div>
        <input type="text" name="tomail" size="200" style="width: 30%" value="${email }" readonly="readonly">
      </div>
      <div align="center" style="padding-top:20px;">
        <!-- 제목 -->
        <div>제목</div>
        <input type="text" name="title" size="200" style="width: 30%" readonly="readonly" value="Azanda. Host등록이 보류되었습니다.">
      </div>
        <p>
          <div align="center">
          <!-- 내용 -->
          <div>내용</div>
            <textarea name="content" cols="200" rows="12" style="width: 30%; resize: none" placeholder="내용" >안녕하십니까? Azanda. 관리자입니다.
귀하께서 신청해주신 호스트 등록이 정보 부족으로 인한 반려 처리 되었습니다.
재검토하신 후 다시 신청해주시기 바랍니다. 
            </textarea>
          </div>
        <p>
      <div align="center">
        <input type="submit" value="메일 보내기" class="btn btn-warning">
      </div>
    </form>
</body>
</html>