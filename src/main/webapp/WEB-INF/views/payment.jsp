<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Azanda.</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">

.sticky {
	border: ridge 1px #000000;
	-moz-border-radius: 13px;
	-webkit-border-radius: 13px;
	border-radius: 13px;
	display: inline-block;
	position: sticky;
	top: 30px;
	width: 300px;
}
</style>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
	IMP.init("imp35592248");
	function requestPay() {
		IMP.request_pay({
			pg : 'inicis', // version 1.1.0부터 지원.
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '주문명:결제테스트',
			amount : 14000, //판매 가격
			buyer_email : 'iamport@siot.do',
			buyer_name : '구매자이름',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울특별시 강남구 삼성동',
			buyer_postcode : '123-456'
		}, function(rsp) {
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});

	}
</script>
</head>

<body>

	<div>
		<jsp:include page="header.jsp" />
	</div>

	<div class="hero-wrap"
		style="background-image: url('images/bg_5.jpg'); height: 100px"></div>

	<!-- 본문 -->
	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div>
						<h2>확인 및 결제</h2>
						<hr>
					</div>
					<div>
						<h4>예약 정보</h4>
						
						<hr>
					</div>
					<div class="w3-panel w3-pale-red w3-leftbar w3-border-red">
						<h4>환불 정책</h4>
						<p>
							12:00 PM 전에 예약을 취소하면 요금전액이 환불됩니다.
							<br>
							<a href="#">자세히 알아보기</a>
							<br><br>
						</p>
						<hr>
					</div>
					<div>
						<p>
							아래 버튼을 선택하면, 숙소이용규칙, 환불정책 및 게스트 환불정책에 동의하는 것입니다. 
						</p>
					
						<button onclick="requestPay()">예약하기</button>
					</div>
					
					
				
				</div>
				<!-- sidebar -->
				<section class="col-lg-4 sidebar">
					<div class="sticky"></div>
				
				</section>
			
			</div>
		
		</div>
	
		 
	
	</section>

	<div>
		<jsp:include page="footer.jsp" />
	</div>


</body>
</html>