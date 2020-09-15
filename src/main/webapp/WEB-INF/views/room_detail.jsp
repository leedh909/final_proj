<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />

<style type="text/css">
.pt {
	margin-top: -9px;
}

.button {
	border: solid 0.5px;
	background: white;
	opacity: 1;
	border-radius: 8px;
}

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

#myModal {
	dialoWidth: 600px;
}

#kkomap {
	width: 100%;
	height: 300px;
	border-radius: 5px;
}
</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>

</head>
<body>

	<!--================ Header =================-->
	<div>
		<jsp:include page="header.jsp" />
	</div>
	<div class="hero-wrap"
		style="background-image: url('images/bg_5.jpg'); height: 100px;">
	</div>
	<!--================ End Header =================-->


	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<!--================ 숙소 정보 =================-->
			<div class="col-lg-12"></div>

			<div class="row">
				<div class="col-lg-8">
					<!-- 숙소 사진 -->
					<div class="col-md-12 ftco-animate fadeInUp ftco-animated">
						<div class="single-slider owl-carousel owl-loaded owl-drag">

							<div class="owl-stage-outer">
								<div class="owl-stage"
									style="transform: translate3d(-1380px, 0px, 0px); transition: all 0s ease 0s; width: 4830px;">
									<div class="owl-item cloned" style="width: 690px;">
										<div class="item">
											<div class="hotel-img"
												style="background-image: url(images/hotel-3.jpg);"></div>
										</div>
									</div>
									<div class="owl-item cloned animated owl-animated-out fadeOut"
										style="width: 690px; left: 690px;">
										<div class="item">
											<div class="hotel-img"
												style="background-image: url(images/hotel-4.jpg);"></div>
										</div>
									</div>
									<div class="owl-item animated owl-animated-in fadeIn active"
										style="width: 690px;">
										<div class="item">
											<div class="hotel-img"
												style="background-image: url(images/hotel-2.jpg);"></div>
										</div>
									</div>
									<div class="owl-item" style="width: 690px;">
										<div class="item">
											<div class="hotel-img"
												style="background-image: url(images/hotel-3.jpg);"></div>
										</div>
									</div>
									<div class="owl-item" style="width: 690px;">
										<div class="item">
											<div class="hotel-img"
												style="background-image: url(images/hotel-4.jpg);"></div>
										</div>
									</div>
									<div class="owl-item cloned" style="width: 690px;">
										<div class="item">
											<div class="hotel-img"
												style="background-image: url(images/hotel-2.jpg);"></div>
										</div>
									</div>
									<div class="owl-item cloned" style="width: 690px;">
										<div class="item">
											<div class="hotel-img"
												style="background-image: url(images/hotel-3.jpg);"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-nav">
								<button role="presentation" class="owl-prev">
									<span class="ion-ios-arrow-back"></span>
								</button>
								<button role="presentation" class="owl-next">
									<span class="ion-ios-arrow-forward"></span>
								</button>
							</div>
							<div class="owl-dots">
								<button class="owl-dot active">
									<span></span>
								</button>
								<button class="owl-dot">
									<span></span>
								</button>
								<button class="owl-dot">
									<span></span>
								</button>
							</div>
						</div>
					</div>
					<!-- 숙소 이름 -->
					<section class="col-md-12 hotel-single mb-4 mt-4">
						<div>
							<h2>OO님이 호스팅하는 OO</h2>
							<div>
								<span>최대 인원 N명</span> <span aria-hidden="true"> · </span> <span>침실N개</span>
								<span aria-hidden="true"> · </span> <span>침대 N개</span> <span
									aria-hidden="true"> · </span> <span>욕실 N개</span>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-1 mt-2 pl-3">
								<i class="fa fa-home" style="font-size: 30px;"></i>
							</div>
							<div class="col-md-11 mt-2">
								<h5>'집' 전체</h5>
								<p class="pt">'집'전체를 사용</p>
							</div>

							<div class="col-md-1 mt-2 pl-3">
								<i class="fa fa-door-open" style="font-size: 25px;"></i>
							</div>
							<div class="col-md-11 mt-2">
								<h5>체크인</h5>
								<p class="pt">' '를(을) 이용해 체크인 하세요</p>
							</div>

							<div class="col-md-1 mt-2 pl-3">
								<i class="fa fa-calendar" style="font-size: 28px;"></i>
							</div>
							<div class="col-md-11 mt-2">
								<h5>환불 정책</h5>
								<p class="pt">체크인 30일 전까지 취소하시면 전액이 환불됩니다.</p>
							</div>
						</div>
					</section>

					<hr>
					<!-- 집정보 -->
					<section class="col-md-12 hotel-single mb-4 mt-4">
						<div>숙소정보 출력</div>
					</section>
					<hr>

					<!-- 편의시설 -->
					<section class="col-md-12 hotel-single mb-4 mt-4">
						<h2>편의시설</h2>


						<button type="button" class="button" data-toggle="modal"
							data-target="#myModal">편의시설 모두 보기</button>
						<!-- Modal -->
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<h2>편의시설</h2>
										<button type="button" class="close" data-dismiss="modal">×</button>
									</div>
									<div class="modal-body">
										<p>Some text in the modal.</p>
									</div>

								</div>

							</div>
						</div>

					</section>
				</div>
				<section class="col-lg-4 sidebar">
					<div class="sticky">
						<div class="col-lg-12 mt-4 mb-4">
							<div>
								<span aria-hidden="true">&#8361;</span> <span aria-hidden="true">/박</span>

							</div>
							<form action="">
								<div>
									<input type="text" id="checkin_date" class="form-control"
										placeholder="Date from"> ~ <input type="text"
										id="checkout_date" class="form-control"
										placeholder="Date from">
								</div>
								<div class="col-lg-12 mt-2">
									<input type="submit" value="예약하기" class="btn btn-primary py-2"
										style="border-radius: 3px; width: 100%;">
								</div>

								<hr>
								<div>
									<span style="fontsize: 20px;"><b>총합계</b></span> <span><b>&#8361;</b></span>
								</div>
							</form>

						</div>
					</div>



				</section>

			</div>
			<hr>
			<div class="row">
				<section class="col-lg-12" style="position: relative;">
					<!-- 위치 -->
					<h2 class="pl-3">위치</h2>

					<div id="kkomap" style="width: 100%; height: 500px;"></div>
					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=37eab138db2d17be2dbaeea4157c0d35"></script>
					<!-- services,cluster,drawing 라이브러리 불러오기 -->
					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
					<script type="text/javascript">
						//지도
						var container = document.getElementById('kkomap');
						var options = {//지도 생성시 필요한 기본 옵션
							center : new kakao.maps.LatLng(33.450701,
									126.570667),//지도 중심좌표
							level : 3
						//지도 확대,축소 정도
						};

						var kkomap = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
					</script>
					<hr>
					<!--  -->

				</section>
			</div>
			<!--================ 숙소 정보 끝 =================-->
		</div>
	</section>

	<!--================ Footer =================-->
	<div>
		<jsp:include page="footer.jsp" />
	</div>
	<!--================ End Footer =================-->
</body>
</html>