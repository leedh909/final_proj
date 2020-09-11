<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Azanda.</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"
	rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Booking part -->
<script src="js/Bookingscript.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {

		/*인원 수 선택 */
		var guestAmount = $('#guestNo');

		$('#cnt-up').click(function() {
			guestAmount.val(parseInt($('#guestNo').val()) +1);
		});
		$('#cnt-down').click(function() {
			if(guestAmount.val() > 0) {
				guestAmount.val(parseInt($('#guestNo').val()) -1);
			} else {
				guestAmount.val(parseInt($('#gusetNo').val()) = 1);
		}
		});

		/*지난 날짜 선택 못하게 막음*/
		var today = new Date().toISOString().split('T')[0];
		document.getElementsByName("arrival")[0].setAttribute('min', today);

		var today = new Date().toISOString().split('T')[0];
		document.getElementsByName("departure")[0].setAttribute('min', today);

		/*인원수 선택 text 창 클릭 못하게 막음*/
		$("#guestNo").focus(function() {
			$(this).blur();
		});

	});
	
	function locationPopup() {
		$(".location-container").show();
	};
	
	//목적지 선택 div onclick Events
	function clickSeoul(){
		$(".location-container").hide();
		var seoul = $(".seoulText").html();
		$(".lo-placeholder").removeAttr("placeholder");
		$(".lo-placeholder").val(seoul);
		$(".lo-placeholder").css("font-weight" , "bold").css("font-size" , "18px").css("margin-top" , "1px");
	};
	
	function clickBusan() {
		$(".location-container").hide();
		var busan = $("#busanText").html();
		$(".lo-placeholder").removeAttr("placeholder");
		$(".lo-placeholder").val(busan);
		$(".lo-placeholder").css("font-weight" , "bold").css("font-size" , "18px").css("margin-top" , "1px");
	}
	function clickDaejeon() {
		$(".location-container").hide();
		var dae = $("#daejeonText").html();
		$(".lo-placeholder").removeAttr("placeholder");
		$(".lo-placeholder").val(dae);
		$(".lo-placeholder").css("font-weight" , "bold").css("font-size" , "18px").css("margin-top" , "1px");
	}
	function clickDaegu() {
		$(".location-container").hide();
		var daegu = $("#daeguText").html();
		$(".lo-placeholder").removeAttr("placeholder");
		$(".lo-placeholder").val(daegu);
		$(".lo-placeholder").css("font-weight" , "bold").css("font-size" , "18px").css("margin-top" , "1px");
	}
	function clickJeju() {
		$(".location-container").hide();
		var jeju = $("#jejuText").html();
		$(".lo-placeholder").removeAttr("placeholder");
		$(".lo-placeholder").val(jeju);
		$(".lo-placeholder").css("font-weight" , "bold").css("font-size" , "18px").css("margin-top" , "1px");
	}
	function clickGang() {
		$(".location-container").hide();
		var gang = $("#gangneungText").html();
		$(".lo-placeholder").removeAttr("placeholder");
		$(".lo-placeholder").val(gang);
		$(".lo-placeholder").css("font-weight" , "bold").css("font-size" , "18px").css("margin-top" , "1px");
	}
	function clickGyeong() {
		$(".location-container").hide();
		var gyeong = $("#gyeongjuText").html();
		$(".lo-placeholder").removeAttr("placeholder");
		$(".lo-placeholder").val(gyeong);
		$(".lo-placeholder").css("font-weight" , "bold").css("font-size" , "18px").css("margin-top" , "1px");
	}
	function clickYeo() {
		$(".location-container").hide();
		var yeo = $("#yeosuText").html();
		$(".lo-placeholder").removeAttr("placeholder");
		$(".lo-placeholder").val(yeo);
		$(".lo-placeholder").css("font-weight" , "bold").css("font-size" , "18px").css("margin-top" , "1px");
	}
</script>


</head>
<body>
	<div>
		<jsp:include page="header.jsp" />
	</div>

	<div class="hero-wrap js-fullheight"
		style="background-image: url('images/bg_1.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate"
					data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-4"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						<strong>Azanda. <br></strong>
					</h1>
					<p data-scrollax="properties: { translateY: '30%'}">아무곳에서나 자지
						않는 당신을 위한 숙박 공유 서비스</p>


					<!-- Booking Part -->
					<div class="block-17 my-4" style="width: 130%; height: 75px;">
						<form action="" method="post" class="d-block d-flex">
							<div class="fields d-block d-flex">
								<!-- 장소-->
								<div class="select-wrap one-third" style="cursor: pointer;">
									<div class="location"
										style="color: black; margin-left: 30px; padding-top: 6px; font-weight: bold;">위치</div>
									<input type="text" placeholder="어디로 여행가시나요?"
										style="border: none; border-right: 0px; border-top: 0px; margin-left: 27px; cursor: pointer; outline: none; margin-top: 7px;"
										class="lo-placeholder" required readonly="readonly"
										onclick="locationPopup();">
									<!-- 8개 도시 div onclick -->
								</div>


								<!-- 체크인 체크아웃  -->
								<div class="select-wrap one-third" style="margin-top: 5px;">
									<div class="dates">
										<div class="arrival"
											style="display: inline-block; float: left; width: 45%;">
											<label for="arrival" style="margin-left: 7px;">체크인</label><br />
											<input name="arrival" type="text"
												onfocus="(this.type='date')" onblur="(this.type='text')"
												placeholder="체크인 날짜를 선택하세요"
												style="width: 200px; border: none; margin-left: 7px; cursor: pointer;" />
										</div>
									</div>

								</div>
								<div class="select-wrap one-third"
									style="border-right: none; border-left: 1px solid rgba(0, 0, 0, 0.1); margin-top: 5px;">
									<div class="dates">
										<div class="departure"
											style="display: inline-block; float: left; width: 45%;">
											<label for="arrival" style="margin-left: 7px;">체크아웃</label><br />
											<input name="departure" type="text"
												onfocus="(this.type='date')" onblur="(this.type='text')"
												placeholder="체크아웃 날짜를 선택하세요"
												style="width: 200px; border: none; margin-left: 7px; cursor: pointer;" />
										</div>
									</div>
								</div>
								<div class="select-wrap one-third" style="margin-top: 5px;">
									<div class="guests">
										<label for="guests" style="margin-left: 7px;">인원수</label><br />
										<button class="counter-btn" type="button" id="cnt-down"
											style="display: inline-block; height: 40px; text-align: top; vertical-align: top; font-size: 1.5em; font-weight: 300; width: 40px; background: #fff; border: none; margin-bottom: 20px; border-radius: 50%; box-shadow: 1px 3px 20px rgba(17, 17, 17, 0.1); cursor: pointer; outline: none; margin-left: 10px; margin-top: -8px;">-</button>
										<input type="text" id="guestNo" name="guests" value="0"
											style="width: 80px; margin: 0 20px; text-align: center; border: none; margin-top: -10px;"
											readonly />
										<button class="counter-btn" type="button" id="cnt-up"
											style="position: relative; display: inline-block; height: 40px; text-align: top; vertical-align: top; font-size: 1.5em; font-weight: 300; width: 40px; background: #fff; border: none; margin-bottom: 20px; border-radius: 50%; box-shadow: 1px 3px 20px rgba(17, 17, 17, 0.1); cursor: pointer; outline: none; margin-top: -10px;">+</button>
									</div>
								</div>
							</div>
							<input type="submit" class="search-submit btn btn-primary"
								value="Search" style="padding-top: 3px; padding-left: 3px;">
						</form>
					</div>

					<!--  -->
					<div class="location-container">
						<div class="grid-location-Popup">
							<div id="seoul">
								<p onclick="clickSeoul();" class="seoulText">서울</p>
							</div>
							<div id="busan">
								<p id="busanText" onclick="clickBusan();">부산</p>
							</div>
							<div id="daejeon">
								<p id="daejeonText" onclick="clickDaejeon();">대전</p>
							</div>
							<div id="daegu">
								<p id="daeguText" onclick="clickDaegu();">대구</p>
							</div>
							<div id="jeju">
								<p id="jejuText" onclick="clickJeju();">제주</p>
							</div>
							<div id="gangneung">
								<p id="gangneungText" onclick="clickGang();">강릉</p>
							</div>
							<div id="gyeongju">
								<p id="gyeongjuText" onclick="clickGyeong();">경주</p>
							</div>
							<div id="yeosu">
								<p id="yeosuText" onclick="clickYeo();">여수</p>
							</div>
						</div>
					</div>
					<br> <br>
					<p class="browse d-md-flex">
						<span
							class="d-flex justify-content-md-center align-items-md-center">
							<a href="#"><i class="fas fa-hotel"></i>&nbsp;Place To Stay</a>
						</span> <span
							class="d-flex justify-content-md-center align-items-md-center">
							<a href="#"><i class="fas fa-users"></i>&nbsp;TravelMate</a>
						</span> <span
							class="d-flex justify-content-md-center align-items-md-	center">
							<a href="#footer"><i class="fas fa-headset"></i>&nbsp;Need
								Help?</a>
						</span>
					</p>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section services-section bg-light">
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block text-center">
						<div class="d-flex justify-content-center">
							<div class="icon">
								<span class="flaticon-guarantee"></span>
							</div>
						</div>
						<div class="media-body p-2 mt-2">
							<h3 class="heading mb-3">거품 없는 가격을 보장</h3>
							<p>
								게스트와 호스트는 중간 단계 없이 다이렉트로 숙소 예약을 진행 하게 되며, 이에 따른<br>예약 수수료가
								없습니다.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block text-center">
						<div class="d-flex justify-content-center">
							<div class="icon">
								<span class="flaticon-like"></span>
							</div>
						</div>
						<div class="media-body p-2 mt-2">
							<h3 class="heading mb-3">믿을 수 있는 호스트</h3>
							<p>
								숙소에서부터 호텔까지, Azanda. 의 호스트는 <br>게스트가 편히 지낼 수 있도록 모든 사항을
								세심하게 <br>관리 합니다.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block text-center">
						<div class="d-flex justify-content-center">
							<div class="icon">
								<span class="flaticon-detective"></span>
							</div>
						</div>
						<div class="media-body p-2 mt-2">
							<h3 class="heading mb-3">Travel Mate</h3>
							<p>
								숙소를 조금 더 경제적으로 <br>예약하길 원하는 <br>1인 여행객들을 위한 Azanda. 만의
								숙소 쉐어<br>매칭 시스템을 <br>만나보세요.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block text-center">
						<div class="d-flex justify-content-center">
							<div class="icon">
								<span class="flaticon-support"></span>
							</div>
						</div>
						<div class="media-body p-2 mt-2">
							<h3 class="heading mb-3">더욱 효율적인 고객응대</h3>
							<p>
								Azanda. 의 고객센터는 <br>연중무휴 24시간 내내 <br>고객 서비스를 <br>지원합니다.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- place to stay 숙소 Slide Show -->
	<section class="ftco-section ftco-destination">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">Place To Stay</span>
					<h2 class="mb-4">
						<strong>Azanda.</strong> 의 추천 숙소
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="destination-slider owl-carousel ftco-animate">
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(images/destination-1.jpg);">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">Paris, Italy</a>
									</h3>
									<span class="listing">15 Listing</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(images/destination-2.jpg);">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">San Francisco, USA</a>
									</h3>
									<span class="listing">20 Listing</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(images/destination-3.jpg);">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">Lodon, UK</a>
									</h3>
									<span class="listing">10 Listing</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(images/destination-4.jpg);">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">Lion, Singapore</a>
									</h3>
									<span class="listing">3 Listing</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(images/destination-5.jpg);">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">Australia</a>
									</h3>
									<span class="listing">3 Listing</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(images/destination-6.jpg);">
									<div
										class="icon d-flex justify-content-center align-items-center">
										<span class="icon-search2"></span>
									</div>
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">Paris, Italy</a>
									</h3>
									<span class="listing">3 Listing</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">새로운 여행 친구 만들기</span>
					<h2 class="mb-4">
						<strong>Travel</strong> Mates
					</h2>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm col-md-6 col-lg ftco-animate">
					<div class="destination">
						<a href="#"
							class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(images/destination-1.jpg);">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<div class="d-flex">
								<div class="one">
									<h3>
										<a href="#">Paris, Italy</a>
									</h3>
									<p class="rate">
										<i class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star-o"></i> <span>8 Rating</span>
									</p>
								</div>
								<div class="two">
									<span class="price">$200</span>
								</div>
							</div>
							<p>Far far away, behind the word mountains, far from the
								countries</p>
							<p class="days">
								<span>2 days 3 nights</span>
							</p>
							<hr>
							<p class="bottom-area d-flex">
								<span><i class="icon-map-o"></i> San Franciso, CA</span> <span
									class="ml-auto"><a href="#">Discover</a></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm col-md-6 col-lg ftco-animate">
					<div class="destination">
						<a href="#"
							class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(images/destination-2.jpg);">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<div class="d-flex">
								<div class="one">
									<h3>
										<a href="#">Paris, Italy</a>
									</h3>
									<p class="rate">
										<i class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star-o"></i> <span>8 Rating</span>
									</p>
								</div>
								<div class="two">
									<span class="price">$200</span>
								</div>
							</div>
							<p>Far far away, behind the word mountains, far from the
								countries</p>
							<p class="days">
								<span>2 days 3 nights</span>
							</p>
							<hr>
							<p class="bottom-area d-flex">
								<span><i class="icon-map-o"></i> San Franciso, CA</span> <span
									class="ml-auto"><a href="#">Discover</a></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm col-md-6 col-lg ftco-animate">
					<div class="destination">
						<a href="#"
							class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(images/destination-3.jpg);">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<div class="d-flex">
								<div class="one">
									<h3>
										<a href="#">Paris, Italy</a>
									</h3>
									<p class="rate">
										<i class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star-o"></i> <span>8 Rating</span>
									</p>
								</div>
								<div class="two">
									<span class="price">$200</span>
								</div>
							</div>
							<p>Far far away, behind the word mountains, far from the
								countries</p>
							<p class="days">
								<span>2 days 3 nights</span>
							</p>
							<hr>
							<p class="bottom-area d-flex">
								<span><i class="icon-map-o"></i> San Franciso, CA</span> <span
									class="ml-auto"><a href="#">Discover</a></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm col-md-6 col-lg ftco-animate">
					<div class="destination">
						<a href="#"
							class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(images/destination-4.jpg);">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<div class="d-flex">
								<div class="one">
									<h3>
										<a href="#">Paris, Italy</a>
									</h3>
									<p class="rate">
										<i class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star-o"></i> <span>8 Rating</span>
									</p>
								</div>
								<div class="two">
									<span class="price">$200</span>
								</div>
							</div>
							<p>Far far away, behind the word mountains, far from the
								countries</p>
							<p class="days">
								<span>2 days 3 nights</span>
							</p>
							<hr>
							<p class="bottom-area d-flex">
								<span><i class="icon-map-o"></i> San Franciso, CA</span> <span
									class="ml-auto"><a href="#">Discover</a></span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm col-md-6 col-lg ftco-animate">
					<div class="destination">
						<a href="#"
							class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(images/destination-5.jpg);">
							<div
								class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<div class="d-flex">
								<div class="one">
									<h3>
										<a href="#">Paris, Italy</a>
									</h3>
									<p class="rate">
										<i class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star"></i> <i class="icon-star"></i> <i
											class="icon-star-o"></i> <span>8 Rating</span>
									</p>
								</div>
								<div class="two">
									<span class="price">$200</span>
								</div>
							</div>
							<p>Far far away, behind the word mountains, far from the
								countries</p>
							<p class="days">
								<span>2 days 3 nights</span>
							</p>
							<hr>
							<p class="bottom-area d-flex">
								<span><i class="icon-map-o"></i> San Franciso, CA</span> <span
									class="ml-auto"><a href="#">Discover</a></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>








	<div id="footer">
		<jsp:include page="footer.jsp" />
	</div>

</body>
</html>