<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
			    if ( rsp.success ) {
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
					<h2><b>확인 및 결제</b></h2>
					<hr>
					<h4><b>예약 정보</b></h4>
					<hr>
					<button onclick="requestPay()">결제하기</button>
				
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