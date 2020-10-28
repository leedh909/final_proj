<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Azanda.</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/payment.css">
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
//결제
	IMP.init("imp35592248");
	function requestPay() {
		IMP.request_pay({
			//필수
			pg : 'inicis', // version 1.1.0부터 지원.
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			amount : '${reservation.totalPrice}', //판매 가격 바꿔야함 
			buyer_tel :' ${login.phone}',
			//선택
			buyer_name : '${login.name}',	
			name : '주문명:결제테스트',
			buyer_email : '${login.email}',
		}, function(rsp) {
			 if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
				
				var msg='결제에 성공하였습니다.';
				callAjax();	 
			 
			} else {
				var msg = '결제를 취소하였습니다.';
				msg += rsp.error_msg;
			}
			alert(msg);
		});

	}
	
	//mate value값 설정
	$(function() {
		$("#mate").change(function() {
			if ($("#mate").is(":checked")) {
				$(this).val("Y");
			} else {
				$(this).val("N")
			}
		});
	});
	
	//ajax 호출
	function callAjax(){
		
		let mate = $("#mate").val();
		let reservation={
			"people":parseInt('${reservation.people}'),
			"check_in":'${reservation.check_in}',
			"check_out":'${reservation.check_out}',
			"seq_m":parseInt('${login.seq_m}'),
			"seq_rm":parseInt('${room.seq_rm}'),
			"mate":mate,
			"totalPrice":'${reservation.totalPrice}'
		};
		
		
	        $.ajax({
	        	type:"post",
	        	url:"ajaxmate.do",
	        	data:JSON.stringify(reservation),
	        	contentType:"application/json",
	        	dataType:"json",
	        	success:function(msg){
	        		if(msg.check==true){
	        			//마이페이지로 보내주기 
	        			location.href="mypage.do";
	        			alert("insert성공");
	        		}else{
	        			alert("insert실패");
	        		}
	        	},
	        	error:function(){
	        		alert("통신실패");
	        	}
	        
	        }); 
	
	}
	
</script>
</head>

<body>

	<div>
		<jsp:include page="header.jsp" />
	</div>

	<div class="hero-wrap"
		style="background-image: url('images/white.png'); height: 100px"></div>
	<!-- 본문 -->
	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div>
						<h2><b>확인 및 결제</b></h2>
					</div>
					<hr>
					<div>
						<h4>예약 정보</h4>
						<div class="col-md-11 mt-2">
							<h6 class="mt-3">날짜</h6>
							<p class="pt" tabindex="-1">${reservation.check_in}~${reservation.check_out}</p>
						</div>
						<div class="col-md-11 mt-2">
							<h6 class="mt-3">게스트</h6>
							<p class="pt" tabindex="-1">게스트 ${reservation.people }명</p>
						</div>
					</div>
					<hr>
					<div>
							<h4>TravelMate</h4>
						<div class="col-md-11 mt-2">
							<input type="checkbox" value="N" id="mate"
									class="from-check-input" >&nbsp;&nbsp;TravelMate
							<p tabindex="-1">숙소 정원을 초과하는 travelmate는 허용되지
								않습니다. 발견 즉시 퇴실 조치 되며, 남은 기간에 대해 환불이 불가합니다.</p>
						</div>
					</div>
					<hr>
					<div class="w3-panel w3-pale-red w3-leftbar w3-border-red">
						<h4 class="my-4">환불 정책</h4>
						<p tabindex="-1">
							5일 전에 예약을 취소하면 요금전액이 환불됩니다.
							<br>
							<a href="refundPolicy.do" target="_blank" tabindex="-1">자세히 알아보기</a>
							<br><br>
						</p>
					</div>
					<hr>
					<div>
						<p>
							아래 버튼을 선택하면, 숙소이용규칙, 환불정책 및 게스트 환불정책에 동의하는 것입니다. 
						</p>
					
						<button type="button" class="btn btn-primary" onclick="requestPay()">예약하기</button>
					</div>
					
					
				
				</div>
				<!-- sidebar -->
				<section class="col-lg-4 sidebar">
					<div class="sticky">
						<div class="_7efq7j">
							<div class="_1gw6tte">
								<div style="-gp-section-max-width: 1128px;">
									<div data-plugin-in-point-id="LISTING_CARD_DESKTOP"
										data-section-id="LISTING_CARD_DESKTOP"
										style="padding-bottom: 24px;">
										<div class="_cyffnm">
											<div class="_8kqo1s">
												<div class="_1h6n1zu"
													style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
													<img class="_9ofhsl" aria-hidden="true" alt=""
														id="FMP-target"
														src="storage/rooms/${picture }"
														style="object-fit: cover; vertical-align: bottom;">
													<div class="_15p4g025"
														style="background-image: url(&quot;https://a0.muscache.com/im/pictures/miso/Hosting-45712229/original/a9e5a651-b1a7-46d1-8649-dc707e61c389.jpeg?aki_policy=large&quot;); background-size: cover;"></div>
												</div>
											</div>
											<div class="_ooekcv">
												<div class="_1ssrgzh">Hangyeong-myeon, 의 ${room.r_type}</div>
												<div class="_3hmsj pt">
													<div id="LISTING_CARD_DESKTOP-title" class="_1tn13uh">${room.room_name}</div>
													<div class="_1hunydg">침대 ${room.bed }개 · 욕실 ${room.bath_room}개</div>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="_1gw6tte">
								<div style="-gp-section-max-width: 1128px;">
									<div class="_npr0qi"
										style="border-top-color: rgb(221, 221, 221);"></div>
									<div data-plugin-in-point-id="PRICE_DETAILS_TITLE"
										data-section-id="PRICE_DETAILS_TITLE"
										style="padding-top: 24px;">
										<section>
											<div class="_zaj690">
												<h1 tabindex="-1" class="_14i3z6h">요금 세부정보</h1>
											</div>
										</section>
									</div>
								</div>
							</div>
							<div class="_1gw6tte">
								<div style="-gp-section-max-width: 1128px;">
									<div style="margin-top: 24px;">
										<div data-plugin-in-point-id="PRICE_DETAIL"
											data-section-id="PRICE_DETAIL">
											<div class="_gmaj6l">
												<div>
													<div style="margin-top: 0px;">
														<div class="_hgs47m">
															<div class="_10ejfg4u">
																<div class="_17y0hv9">
																	<div>
																		<button type="button" class="_r5cknh">
																			<div class="_x3c6nv">${calcul }</div>
																		</button>
																	</div>
																</div>
															</div>
															<div class="_ni9axhe">
																<div class="_4afltz">
																	<span class="_17j792vp"><span>₩<fmt:formatNumber value="${reservation.totalPrice}" pattern="#,###" /></span></span>
																</div>
															</div>
														</div>
													</div>
													<div style="margin-top: 16px;">
														<div class="_hgs47m">
															<div class="_10ejfg4u">
																<div class="_1k04cz3c">
																	총 합계
																	<button id="MowebCurrencyPicker_trigger" type="button"
																		class="_ejra3kg">(KRW)</button>
																</div>
															</div>
															<div class="_ni9axhe">
																<div class="_4afltz">
																	<span class="_ba3mo2p"><span>₩<fmt:formatNumber value="${reservation.totalPrice}" pattern="#,###" /></span></span>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				
				</section>
			
			</div>
		
		</div>
	
		 
	
	</section>

	<div>
		<jsp:include page="footer.jsp" />
	</div>


</body>
</html>