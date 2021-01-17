<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page import="net.product.db.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE HTML>
<html lang="ko">

<!-- Mirrored from web.dominos.co.kr/goods/detail?dsp_ctgr=C0104&code_01=RPZ203SL&dough_gb=203 by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:23:51 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" id="viewport"
	content="width=1119px, user-scalable=yes">
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='expires' content='0'>
<meta http-equiv='pragma' content='no-cache'>
<meta http-equiv='Cache-Control' content='no-cache'>
<!-- 사용자지정 태그 -->
<meta name="description"
	content="한국, 미국, 호주, 프랑스! 4개국 도미노 피자의 레전드가 모이다!<!-- </p-->프리미엄 피자 - 도미노피자" />
<meta name="title" content="프리미엄 피자 - 도미노피자" />
<title>프리미엄 피자 - 도미노피자</title>
<meta property="og:type" content="website" />
<meta property="og:title" content="프리미엄 피자 - 도미노피자" />
<meta property="og:site_name" content="도미노피자" />
<meta property="og:image"
	content="../../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta property="og:image:width" content="270" />
<meta property="og:image:height" content="270" />
<meta property="og:description"
	content="한국, 미국, 호주, 프랑스! 4개국 도미노 피자의 레전드가 모이다!<!-- </p-->프리미엄 피자 - 도미노피자" />
<meta property="og:url" content="/goods/detail" />
<meta name="twitter:card" content="app" />
<meta name="twitter:title" content="프리미엄 피자 - 도미노피자" />
<meta name="twitter:image"
	content="../../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta name="twitter:description"
	content="한국, 미국, 호주, 프랑스! 4개국 도미노 피자의 레전드가 모이다!<!-- </p-->프리미엄 피자 - 도미노피자" />
<meta name="twitter:url" content="/goods/detail" />
<meta name="twitter:site" content="@dominostory" />
<meta name="twitter:description"
	content="한국, 미국, 호주, 프랑스! 4개국 도미노 피자의 레전드가 모이다!<!-- </p-->프리미엄 피자 - 도미노피자" />
<meta name="twitter:app:name:iphone" content="도미노피자" />
<meta name="twitter:app:id:iphone" content="371008429" />
<meta name="twitter:app:url:iphone"
	content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:ipad" content="도미노피자" />
<meta name="twitter:app:id:ipad" content="371008429" />
<meta name="twitter:app:url:ipad"
	content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:googleplay" content="도미노피자" />
<meta name="twitter:app:id:googleplay" content="kr.co.d2.dominos" />
<meta name="twitter:app:url:googleplay"
	content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:web:url" content="../index.html" />
<meta property="al:android:app_name" content="도미노피자" />
<meta property="al:android:package" content="kr.co.d2.dominos" />
<meta property="al:android:url"
	content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:ios:app_name" content="도미노피자" />
<meta property="al:ios:app_store_id" content="371008429" />
<meta property="al:ios:url"
	content="https://itunes.apple.com/kr/app/id371008429" />
<link rel="shortcut icon"
	href="https://cdn.dominos.co.kr/renewal2018/w/img/favicon.ico" />
<!-- <link rel="stylesheet" type="text/css" href="/resources/css/font.css"> -->
<!-- 20191202 주석 -->
<!-- 20191204 주석 -->

<script type="text/javascript" src="../resources/js/jquery1.11.1.js"></script>

<script type="text/javascript"
	src="../../cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="../resources/js/selectbox.js"></script>
<!-- js 수정함. -->
<script type="text/javascript"
	src="../resources/js/d2CommonUtil7ef2.js?ver=1.5"></script>
<script type="text/javascript" src="../resources/js/Cookie.js"></script>
<script type="text/javascript"
	src="../../cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>


<!-- 리뉴얼 적용 2019.12.02 -->
<link rel="stylesheet" type="text/css"
	href="../../cdn.dominos.co.kr/domino/asset/css/font.css">
<link rel="stylesheet" type="text/css"
	href="../../cdn.dominos.co.kr/domino/pc/css/common.css">

<!--메인에는 sub.css 호출하지않음-->
<link rel="stylesheet" type="text/css"
	href="../../cdn.dominos.co.kr/domino/pc/css/sub.css">
<!--//메인에는 sub.css 호출하지않음  -->

<script
	src="../../cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
<script src="../../cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
<script src="../../cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
<script src="../../cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>

<script src="../../cdn.dominos.co.kr/domino/pc/js/ui.js"></script>
<script type="text/javascript" src="../resources/js/gcenmaps/gcenmap.js"></script>
<!--서브에는 main.js 호출하지않음-->
<!--//서브에는 main.js 호출하지않음-->
<!-- //리뉴얼 적용 2019.12.02 -->

<!-- 기존 팝업 재사용위해 css 추가함. 추후 common.css 에 아래 소스 추가 예정 -->
<style>
#card_add .pop_wrap {
	position: fixed;
	top: 50%;
	width: 490px;
	margin-left: -245px;
	margin-top: -35px;
}

#card_add .pop_wrap .pop_content p {
	font-size: 18px;
	color: #fff;
	text-align: center
}

.pop_toast {
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 100;
}

.pop_toast.open {
	display: block
}

.pop_toast .bg {
	position: fixed;
	width: 100%;
	height: 100%;
}

.pop_toast .pop_wrap {
	overflow: hidden;
	position: absolute;
	top: 100px;
	left: 50%;
	min-width: 400px;
	min-height: 70px;
	margin-left: -200px;
	padding: 20px;
	background:
		url(../../cdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png)
		repeat 0 0;
	border-radius: 12px;
}

.pop_toast .pop_wrap .btn_close3 {
	position: absolute;
	top: 15px;
	right: 20px;
}

.pop_toast .pop_header {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 66px;
	padding: 0 40px;
	background-color: #eeece9;
	line-height: 66px;
}

.pop_toast .pop_header h2 {
	font-size: 30px;
	font-weight: 500;
	color: #38474f;
}

.pop_toast .pop_content {
	position: relative;
	width: 100%;
	padding: 0;
}

.pop_type2 .pop_wrap .btn_close3 {
	position: absolute;
	top: 15px;
	right: 20px;
}

/* <!-- //기존 팝업 재사용위해 css 추가함. 추후 common.css 에 아래 소스 추가 예정 --> */
</style>
<script type="text/javascript">
	/*gps lsm 전역변수 */
	var lat;
	var lon;
	var xdot;
	var ydot;
	var address;
	var gps_yn;

	var CON_DOMAIN_URL = "../index.html";
	var CON_SSL_URL = "../index.html";
	var CON_STATIC_URL = "https://cdn.dominos.co.kr/renewal2018/w";
	function goLink(menuCode, link) {
		location.href = link;
	}

	$(document).ready(function() {
		$.ajaxSetup({
			cache : false
		});

		setBasketCnt();

		// 주문&주문트레커 조회(가입회원/인증회원)
		/*  */

		//상단 영문사이트 바로가기 버튼
		$(".select-type2.language").change(function() {
			location.href = $("#select-type2").val();
		});
	});

	function setBasketCnt() {
		var basketCnt = cookieManager.getCookie("BASKETCNT");
		var basket = cookieManager.getCookie("BASKET");
		var finish_basket = cookieManager.getCookie("FINISH_BASKET");

		if (basketCnt == "")
			basketCnt = "0";
		else if (basket != "" && basket == finish_basket)
			basketCnt = "0";

		if (basketCnt != "0") {
			$(".btn-cart > strong ").addClass("cart-count");
			$(".cart-count").text(basketCnt);
		} else {
			$(".btn-cart > strong").removeClass("cart-count");
		}
	}

	var goCart = function() {
		location.href = "../basket/detail.html";
	};

	var doLogin = function() {
		location.href = "../global/login.html";
	};

	var myOrderDetail = function() {
		var order_no = $('#tracker_order_no').val();
		location.href = "/mypage/myOrderView?order_no=" + order_no
				+ "&pageNo=1";
	};

	//페이코 회원 가입
	function goLoginPop() {
		if (location.pathname !== '/global/login')
			location.href = '../global/login.html';
	}

	var goPresentLogin = function(gubun) {
		var rtnUrl = "/voucher/list?gubun=" + gubun;
		if ("false" == "true") {
			location.href = rtnUrl;
		} else {
			location.href = "/global/login?returnUrl=" + rtnUrl;
		}
	};

	function appendLocation(paramArr) {
		var simpleAddress;

		gps_yn = 'Y';

		if (paramArr == null || paramArr.length == 0) {
			return;
		}

		$.ajax({
			type : "GET",
			url : "/gis/getXyAddressAjax",
			data : paramArr.join('&'),

			success : function(data) {
				$('#myloc').html("");

				if (data.resultData.result.length > 0) {
					var html = '';
					html += '<div class="tip-box center" id="tip-box">';
					html += '<p>주변 매장의 프로모션을 확인해보세요!</p>';
					html += '</div>';

					$("#tip-box-top").append(html);
					$("#tip-box").delay(2000).fadeOut(1000);

					$.each(data.resultData.result, function(i, v) {
						if (v.roadaddr === '') {
							simpleAddress = v.sggname + ' ' + v.bemdname + ' '
									+ v.jbmain
									+ (v.jbsub == '0' ? '' : '-' + v.jbsub);
							$('#myloc').html(simpleAddress);
							lat = v.lat;
							lon = v.lon;
							xdot = v.kx;
							ydot = v.ky;
							address = simpleAddress;

						} else {
							simpleAddress = v.roadname + ' ' + v.bdmain
									+ (v.bdsub == '0' ? '' : '-' + v.bdsub);
							$('#myloc').html(simpleAddress);
							lat = v.lat;
							lon = v.lon;
							xdot = v.kx;
							ydot = v.ky;
							address = simpleAddress;
						}
					});
				} else {
					$('#myloc').html("주변 매장의 프로모션이 궁금하시면, 위치 서비스를 허용해주세요.");
				}
			},
			error : function(error) {
				alert("다시 시도해주세요.");
			}

		});
	}

	//현재 위치 받아오기

	var geo = {
		init : function() {

			if ('geolocation' in navigator) {
				/* 지오로케이션 사용 가능 */
				navigator.geolocation
						.getCurrentPosition(geo.success, geo.error);

			} else {
				/* 지오로케이션 사용 불가능 */
				alert('geolocationx');
				alert('사용자의 브라우저는 지오로케이션을 지원하지 않습니다.');

				//geo.changeTab();
			}
		},
		success : function(position) {

			var latitude = position.coords.latitude;
			var longitude = position.coords.longitude;
			// console.log('<p>위도 : ' + latitude + '° <br>경도 : ' + longitude + '°</p>');

			findLocation(latitude, longitude);
		},
		error : function(err) {

			var userAgent = navigator.userAgent.toString();

			if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream) { // iOS
				alert('아이폰 > 설정 >개인정보보호 > 위치서비스 > 도미노피자 항목의 위치접근허용을 체크해주세요.');
				return;
			} else {
				//alert('위치접근허용을 승인해주세요.');
				$('#myloc').html('주변 매장의 프로모션을 확인해보세요!');
				return;
				/* var latitude  = '37.539465';
				var longitude = '127.052185';

				findLocation(latitude,longitude);
				gps_yn = 'Y'; */
			}
		}
	}

	function findLocation(lat, lon) {
		//if (!!!optn) return;

		// 검색 파라미터 설정
		var paramArr = [];
		paramArr[0] = 'lat=' + lat;
		paramArr[1] = 'lon=' + lon;

		appendLocation(paramArr);
	}

	function gpsLsm(gps_yn) {
		if (gps_yn == 'Y') {
			address = encodeURIComponent(address);
			UI.layerPopUp({
				selId : '#pop-lsm',
				url : '/branch/gpsLsm',
				data : {
					lon : lon,
					lat : lat,
					xdot : xdot,
					ydot : ydot,
					address : address
				}
			});
			address = decodeURIComponent(address);
			_trk_call();
		} else {
			alert('위치접근허용을 승인해주세요.');
		}
	}

	var _trk_call = function() {
		// 트래킹
		var _trk_url = document.baseURI + '&_TRK_PI=WP_1P&_TRK_CP=LSM 팝업';
		try {
			_trk_code_base = _trk_code_base.replace(/(du=).*?(&)/, '$1'
					+ escape(_trk_url) + '$2');
			_trk_flashEnvView("_TRK_PI=WP_1P", "_TRK_CP=LSM 팝업");
			/* console.log('TRK WEB_3_2 DONE!!'); */
		} catch (e) {
			console.log(e.message);
		}

	}
</script>
<!-- Naver Anlytics 공통-->
<script>
	var WCSLOG_URL = location.protocol == "https:" ? "https://wcs.naver.net/wcslog.js"
			: "http://wcs.naver.net/wcslog.js";
	document.write(unescape("%3Cscript type='text/javascript' src='"
			+ WCSLOG_URL + "' %3E%3C/script%3E"));
</script>
<!-- // Naver Anlytics 공통-->

<!-- Global site tag (gtag.js) - Google Ads: 753034372 -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-753034372"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config', 'AW-753034372');
	gtag('config', 'AW-956654516');
</script>
<!-- GTM d2 요청작업 -->
<!-- 2019 12 02  홍일선 속도 느려서 임시 주석! 반영 시엔 주석 풀고!!!
<script>
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
 new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TCXGS64');</script> -->
<!-- GTM d2 요청작업 -->

</head>
<body>
	<!-- top_event_bnr -->
	<!-- <div class="top_bnr top_event" id="lineBanner">
		<div class="top_event_wrap">
			<a href="javascript:;" class="btn_ico btn_event_close" onclick="lineBannerClose(); return false;">close</a>
		</div>
	</div> -->
	<!-- //top_event_bnr -->

	<div id="wrap">
		<header id="header">
			<div class="top-wrap">
				<div class="inner-box" id="tip-box-top">
					<a href="../main.html" class="btn-logo"> <i class="ico-logo"></i>
						<h1 class="hidden">도미노피자</h1>
					</a>

					<div class="util-nav">

						<!-- **** 위쪽 로그인 배너 -->
						<%
							String loginId = (String) session.getAttribute("loginId");
						String nmembername = (String) session.getAttribute("nmembername");
						%>

						<%
							if (loginId == null && nmembername == null) { //로그인 안했을 때 나오는 배너
						%>
						<a href="../global/Login.me">로그인</a> <a
							href="../member/JoinForm.me">회원가입</a>
						<%
							} else { //로그인 성공시 나오는 배너

						if (nmembername == null && loginId != null) {
						%>
						<span style="margin-right: 10px"> <b><%=loginId%>님
								환영합니다!</b>
						</span>
						<%
							if (loginId.equals("admin")) { //관리자 계정일 경우
						%>
						<a href="../global/Logout.me">로그아웃</a> <a
							href="../admin/AdminPage.ad">관리자페이지</a>
						<%
							} else { //일반 계정일 경우
						%>
						<a href="../global/Logout.me">로그아웃</a> <a
							href="../member/MemberPage.me?loginId=<%=loginId%>">마이페이지</a>
						<%
							}
						} else if (nmembername != null && loginId == null) {
						%>
						<span style="margin-right: 10px"> <b><%=nmembername%>님
								환영합니다!</b> <a href="./Logout.me">로그아웃</a>
						</span>
						<%
							}
						}
						%>



						<!--2020-03-17 추가(s)-->
						<a href="javascript:void(0);" class="lang">
							<div class="select-type2 language">
								<select id="select-type2">
									<option value="/main?locale=ko">KOR</option>
									<option value="/main?locale=en">ENG</option>
								</select>
							</div>
						</a>
						<!--2020-03-17 추가(e)-->
					</div>
				</div>
			</div>

			<!-- main 1dep menu -->
			<div id="gnb" class="gnb-wrap">
				<div class="gnb-inner">
					<ul>
						<li class="active">
							<a href="../goods/MenuListPizza.pro"><span>메뉴</span></a>
						</li>
						<li>
							<a href="../ecoupon/CouponList.bo"><span>e-쿠폰</span></a>
						</li>
						<li>
							<a href="../voucher/VoucherList.vo"><span>상품권 선물</span></a>
						</li>
						<li>
							<a href="../event/UserEventList.bo"><span>이벤트&middot;제휴</span></a>
						</li>
						<li>
							<a href="SearchStore.st"><span>매장검색</span></a>
						</li>
					</ul>
					<a href="#" class="snb-more">더보기</a>
				</div>

				<div class="snb-wrap">
					<div class="inner-box">
						<div class="mnu-wrap">
							<div class="mnu-box">
								<a href="../event/mania.html">도미노 서비스</a>
								<ul>
									<li><a href="../event/mania.html">매니아 혜택</a></li>
									<li><a href="../goods/dominosMoment.html">도미노 모멘트</a></li>
									<li><a href="../quickOrder/index.html">퀵 오더</a></li>
									<li><a href="../order/groupOrder.html">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a>
								<ul>
									<li><a
										href="../bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">자주하는
											질문</a></li>
									<li><a href="../bbs/qnaForm.html">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="../company/contents/overview.html">회사소개</a>
								<ul>
									<li><a href="../company/contents/overview.html">한국도미노피자</a></li>
									<li><a href="../company/tvcfList.html">광고갤러리</a></li>
									<li><a href="../company/contents/society.html">사회공헌활동</a></li>
									<li><a href="../company/contents/chainstore1.html">가맹점
											모집</a></li>
									<li><a href="../company/jobListe3b0.html?type=R">인재채용</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a href="../bbs/newsList91ef.html?type=N">공지사항</a>
							<ul>
								<li><a href="../bbs/UserNewsList.bo">도미노뉴스</a></li>
								<li><a href="../bbs/UserIssueList.bo">보도자료</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header>
		<!-- //header -->


		<!-- container -->
		<div id="container">
			<input type="hidden" class="options" id="RPZ203SL"
				data-ctgrnm="오리지널 " data-options="L:" data-gubun="104"
				data-price="35900" data-pricecomma="35,900" /> <input type="hidden"
				class="options" id="RPZ203SM" data-ctgrnm="오리지널 " data-options="M:"
				data-gubun="104" data-price="29000" data-pricecomma="29,000" /> <input
				type="hidden" class="options" id="RPZ203NL" data-ctgrnm="나폴리"
				data-options="L:" data-gubun="115" data-price="35900"
				data-pricecomma="35,900" /> <input type="hidden" class="options"
				id="RPZ203NM" data-ctgrnm="나폴리" data-options="M:" data-gubun="115"
				data-price="29000" data-pricecomma="29,000" /> <input type="hidden"
				class="options" id="RPZ203HL" data-ctgrnm="씬 " data-options="L:"
				data-gubun="103" data-price="35900" data-pricecomma="35,900" /> <input
				type="hidden" class="options" id="RPZ203HM" data-ctgrnm="씬 "
				data-options="M:" data-gubun="103" data-price="29000"
				data-pricecomma="29,000" /> <input type="hidden" class="options"
				id="RPZ203GL" data-ctgrnm="슈퍼시드 함유 도우" data-options="L:"
				data-gubun="203" data-price="37900" data-pricecomma="37,900" /> <input
				type="hidden" class="options" id="RPZ203GM" data-ctgrnm="슈퍼시드 함유 도우"
				data-options="M:" data-gubun="203" data-price="31000"
				data-pricecomma="31,000" />
			<section id="content">
				<div class="sub-type menu">
					<div class="">
						<!-- inner-box -->
						<!-- 1depth 메뉴명 & 네비게이션 -->
						<!-- //1depth 메뉴명 & 네비게이션 -->

						<!-- 추후 공통화 예정 -->
						<div class="page-title-wrap inner-box">
							<h2 class="page-title">메뉴</h2>
							<div class="depth-area">
								<ol>
									<li><a href="#">홈</a></li>
									<li><a href="#">메뉴</a></li>
									<li><strong>글로벌 레전드4</strong></li>
								</ol>
							</div>
						</div>

						<article class="menu-list-area menu-detail-area">
							<!-- menu-list -->
							<div class="inner-box">
								<div class="menu-nav-wrap">
									<div class="menu-nav">
										<ul>
											<li class="active"><a href="./MenuListPizza.pro">피자</a></li>
											<li><a href="./MenuListSide.pro">사이드디시</a></li>
											<li><a href="./MenuListOther.pro">음료&기타</a></li>
										</ul>
									</div>

								</div>
							
							</div>
							<!-- //menu-list -->

							<%
								ProductBean bean = (ProductBean) request.getAttribute("productbean");
								List doughList = (ArrayList) request.getAttribute("doughList");
								List otherList = (ArrayList) request.getAttribute("otherList");
								List sideList = (ArrayList) request.getAttribute("sideList");
								List toppingList = (ArrayList) request.getAttribute("toppingList");
							%>
								
						
							<form id="selectfrorm" name="selectform" action="Basket.pro" method="post">
							<div class="menu-info inner-box">
								<div class="img-wrap">
									<div class="view-box">
										<!-- 대표 이미지 슬라이드 -->
										<div class="menu-slider-view2">
											<div>
												<img src="../../pizza_image/<%=bean.getPizza_image()%>"
													alt="<%=bean.getPizza_name()%>" />
											</div>
										</div>

										<div class="menu-slider-viewdouble" style="display: none;"></div>

										<!-- //대표 이미지 슬라이드 -->

									</div>
									<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.</div>
									<div class="guide-box2">원산지 정보는 사진 우측 하단 돋보기 메뉴를 통해 확인
										가능합니다.</div>
								</div>
								<div class="detail-wrap">
									<div class="menu-box">
										<div class="title-box">
											<h3 class="title pizza"><%=bean.getPizza_name()%></h3>


										</div>

										<!-- 주문 옵션 선택 -->
										<div class="select-box">
											<div class="step-wrap">
												<div class="title-wrap">
													<div class="title-type2">사이즈 선택</div>
												</div>
												<div class="size-box">
													<!-- checkbox 활성화 일 경우 -->
													<div class="chk-box2 selected">
														<input type="radio" id="size1" name="size" value="L" checked/> 
														<label class="checkbox" for="size1"></label> 
															<label for="size1">L 
																<%=bean.getPizza_price() + 10000%>원
														</label>
													</div>
													<!-- //checkbox 활성화 일 경우 -->
													<div class="chk-box2">
														<input type="radio" id="size2" name="size" value="M" /> 
														<label class="checkbox" for="size2"></label> 
														<label for="size2">M <%=bean.getPizza_price()%>원 </label>
													</div>
												</div>
											</div>
											<div class="step-wrap">
												<div class="title-wrap">
													<div class="title-type2">도우 선택</div>
													<div class="notice-text side">
														<a href="javascript:UI.layerPopUp({selId:'#pop-dough'})">도우의 특징</a>
													</div>
												</div>
												<div class="option-box dough">
													<!--2020-03-06 클래스추가-->

													<%
														for (int i = 0; i < doughList.size(); i++) {
														ProductBean doughbean = (ProductBean) doughList.get(i);
													%>
													<div class="chk-box">
														<input type="radio" id="dough<%=i%>" name="dough" value="<%=doughbean.getDough_name()%>" onclick="addToppingCheck()"/> 
														<label class="checkbox"  for="dough<%=i%>"></label> 
														<label for="dough<%=i%>">
															<%=doughbean.getDough_name()%> <em class="doubleCheeseDough">+<%=doughbean.getDough_price()%>원
														</em>
														<!--2020-03-06 em추가-->
														</label>
													</div>

													<%
														}
													%>

												</div>
											</div>
											<div class="step-wrap">
												<div class="title-wrap close topping">
													<div class="title-type2">토핑추가</div>
													<div class="notice-text side">
														<a
															href="javascript:UI.layerPopUp({selId:'#pop-allergy2'})">토핑
															알레르기 유발성분</a>
													</div>
													<a href="#" class="btn-toggle-close"> <span
														class="hidden">열기</span>
													</a>
												</div>
												<div class="js_toggle_box close">
													<ul class="list-text-v4">
														<li>토핑추가는 피자 한판 당 5개까지 추가 가능</li>
													</ul>
													<div class="tab-type js_tab">
														<ul class="col-3 topping">
															<li class="active"><a href="#topping1">메인</a></li>
															<li><a href="#topping2">치즈</a></li>
															<li><a href="#topping3">애프터</a></li>
														</ul>
													</div>

													<div id="allToppingLayer"></div>
												</div>

												
												<div id="topping1" class="tab-content active toppingdelete">
													<div class="menu-list-v2">
														<ul>
															<%
																for (int i = 0; i < toppingList.size(); i++) {
																ProductBean toppingbean = (ProductBean) toppingList.get(i);
															%>
															<li>
																<div class="prd-img">
																	<img class="lazyload"
																		src="../../topping_image/<%=toppingbean.getTopping_image()%>"
																		alt="<%=toppingbean.getTopping_name()%>" />
																</div>

																<div class="prd-cont">
																	<div class="subject"><%=toppingbean.getTopping_name()%></div>
																	<div class="price-box">
																		<strong><%=toppingbean.getTopping_price()%></strong>
																	</div>

																	<div class="quantity-box">
																		<input name="toppingcode<%=toppingbean.getTopping_code() %>" type="number" value="0" min="0" max="9">
																	</div>
																</div>
															</li>
															

															<%
																}
															%>
														</ul>
													</div>
												</div>
											</div>
											<div class="step-wrap">
												<div class="title-wrap">
													<div class="title-type2">수량 선택</div>
												</div>
												<div class="quantity-box">
<!-- 													<input type="number" value="1" name="pizzaCnt" max="9"> -->
													<input type="number" value="1" name="pizzacode<%=request.getParameter("pizza_code") %>" max="9">
												</div>
											</div>
											<div class="step-wrap">
												<div class="title-wrap">
													<div class="title-type2">사이드디시</div>
													<div class="notice-text side">
														<a
															href="javascript:UI.layerPopUp({selId:'#pop-sidedish'})">특가
															사이드디시 유의사항</a>
													</div>
												</div>
												<div class="promotion-box" id="eventBox1"
													style="display: none;">
													<a
														href="javascript:goLink('', '/event/entry/1238', '_self');">프레시 코울슬로 <em>500원</em> 이벤트
													</a>
												</div>

												<div class="tab-type js_tab">
													<ul>
														<li class="active"><a href="#sidedish1">사이드디시</a></li>
													</ul>
												</div>


												<div id="sidedish1" class="tab-content active sidedelete">
													<div class="menu-list-v2">
														<ul>
															<%
																for (int i = 0; i < sideList.size(); i++) {
																ProductBean sidebean = (ProductBean)sideList.get(i);
															%>

															<li>
																<div class="prd-img">
																	<img class="lazyload"
																		src="../../side_image/<%=sidebean.getSide_image()%>"
																		alt="<%=sidebean.getSide_name()%>" />
																</div>

																<div class="prd-cont">
																	<div class="subject"><%=sidebean.getSide_name()%></div>
																	<div class="price-box">
																		<strong><%=sidebean.getSide_price()%></strong>
																	</div>
																		<div class="quantity-box">
																			<input type="number" value="0" name="sidecode<%=sidebean.getSide_code()%>" min="0" max="9">
																		</div>
																	</div>
															</li>

															<%
																}
															%>
														</ul>
													</div>
												</div>
												
												<script>
													$("#sidedish2.tab-content")
															.removeClass(
																	"active");
													$("#sidedish1.tab-content")
															.addClass("active");
												</script>
											</div>
											<div class="step-wrap">
												<div class="title-wrap">
													<div class="title-type2">음료&기타</div>
												</div>

												<div class="promotion-box" id="eventBox2"
													style="display: none;">
													<a
														href="javascript:goLink('', '/event/entry/1250', '_self');">신규&
														미주문 고객 대상, 코카콜라 0원 이벤트</a>
												</div>

												
												<div class="tab-content active etcdelete">
													<div class="menu-list-v2">
														<ul>
															<%
																for (int i = 0; i < otherList.size(); i++) {
																ProductBean otherbean = (ProductBean) otherList.get(i);
															%>
															<li>

																<div class="prd-img">
																	<img class="lazyload"
																		src="../../other_image/<%=otherbean.getOther_image()%>"
																		alt="<%=otherbean.getOther_name()%>" />
																</div>

																<div class="prd-cont">
																	<div class="subject"><%=otherbean.getOther_name()%></div>
																	<div class="price-box">
																		<strong><%=otherbean.getOther_price()%></strong>
																	</div>

																	<div class="quantity-box">
																		<input type="number" value="0" name="othercode<%=otherbean.getOther_code()%>" min="0" max="9">
																	</div>
																</div>
															</li>
															<%
																}
															%>

														</ul>
													</div>
												</div>
											</div>
										</div>
										<!-- //주문 옵션 선택 -->
									</div>
									<input type="submit" value="주문하기">
								</div>
							</div>
							<input type="hidden" value="<%=request.getParameter("pizza_code") %>" name="pizza_code">
							</form>
						</article>
					</div>
				</div>
				<div class="pop-layer" id="pop-sidedish">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title v2">특가 사이드디시 유의사항</h2>
						</div>
						<div class="pop-content">
							<div class="title-wrap">
								<div class="title-type2">프리미엄 피자 주문 시, 모든 사이드디시 반값</div>
							</div>
							<div class="pop-text">
								<ul class="list-text-v2">
									<li>전화 및 온라인(홈페이지, 모바일웹, 어플) 주문 모두 적용 가능</li>
									<li>함께 주문하는 피자에 대해 제휴 및 쿠폰 등 여타 할인과 중복 할인 가능(단,
										하나SK패밀리/TOUCH 1, 현대M포인트, 삼성카드 보너스포인트, 신한카드 하이포인트, 스페셜세트, 희망나눔
										캠페인과는 중복 불가)</li>
									<li>피자 1판당 반값 프로모션 1회 이용 가능 (단, 1+1에 한해 주문당 1회 가능)</li>
									<li>내일예약가능</li>
								</ul>
							</div>
							
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<link rel="stylesheet" type="text/css"
					href="../../cdn.dominos.co.kr/domino/pc/css/as_is.css">
				<div class="pop-layer pop-full" id="pop-dough">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title">도우의 특징</h2>
						</div>
						<div class="pop-content pop_dough">
							<div class="dough_info">
								<div class="tit_wrap">
									<strong>도미노피자의 <span>다양한 도우</span>를<br>입맛대로 골라
										드세요!
									</strong>
									<p>
										다양한 소스와 토핑은 기본!<br>국내산 흑미에 세계가 주목하는 6가지 슈퍼시드를 더해 영양과 풍미를
										가득 담은 도우는 물론,<br>담백하고 쫄깃한 오리지널 도우나, 겉은 바삭하고 속은 쫄깃한 나폴리
										도우,<br>얇고 바삭한 씬 도우까지 선택하실 수 있습니다.
									</p>
								</div>
								<div class="lst_dough">
									<div class="grain_dough">
										<img class="lazyload"
											data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough_superseed.jpg"
											alt="슈퍼시드 도우" />
										<dl>
											<dt>
												"더 맛있으면서, 더 건강한 도우를 만들 수는 없을까?"<br>끝없는 질문과 오랜 연구 끝에 탄생한
												도미노 슈퍼시드 도우<br>
												<br>
											</dt>
											<dt>
												국내산 흑미에 세계가 주목하는 6가지 슈퍼시드를 더해<br>영양과 풍미를 가득 담았습니다.
											</dt>
										</dl>
										<div class="superseed_dough">
											<dl class="superseed_dough_title">
												<dt>1. 영양을 채우다</dt>
												<dd>엄선한 재료, 국내산 흑미와 세계가 주목하는 6가지 슈퍼시드의 특징</dd>
											</dl>
											<dl class="superseed_dough_content large">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_1.jpg"
														alt="100% 국내산 흑미">
												</dt>
												<dd class="cont_title">100% 국내산 흑미</dd>
												<dd class="cont_sub">
													항산화, 항암, 항궤양 효과가 있다고 알려진 안토시아닌이 검은콩보다 4배 이상 함유,<br>철,
													아연, 셀레늄 등의 무기염류는 일반 쌀 대비 5배 이상 함유<br>노화와 여러 질병을 일으키는
													체내의 활성산소를 효과적으로 중화시키며 심장실병, 뇌졸증, 성인병, 암 예방에도 좋은 곡물
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_2.jpg"
														alt="아마씨">
												</dt>
												<dd class="cont_title">아마씨</dd>
												<dd class="cont_sub">
													타임지가 선정한 슈퍼곡물, 노화방지에 좋은 리그난이<br>석류보다 2700배나 많이 함유,<br>또한
													오메가 3가 풍부해 각종 혈관질환 예방에 효과
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_3.jpg"
														alt="퀴노아">
												</dt>
												<dd class="cont_title">퀴노아</dd>
												<dd class="cont_sub">
													페루어로 '곡물의 어미니'라고 불릴 정도로<br>풍부한 영양소 함유,<br>쌀보다 7배
													많은 식이섬유 함유
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_4.jpg"
														alt="병아리콩">
												</dt>
												<dd class="cont_title">병아리콩</dd>
												<dd class="cont_sub">
													클레오파트라도 즐겨먹었던 것으로 알려진 곡물,<br>우유보다 5배 많은 칼슘을 함유하여 비타민E가
													풍부해<br>항노화 기능과 아르기닌 성분으로 신진대사를 활발히 해<br>젊음을 유지하는데
													효과적
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_5.jpg"
														alt="햄프씨드">
												</dt>
												<dd class="cont_title">햄프씨드</dd>
												<dd class="cont_sub">
													타임지가 선정한 슈퍼곡물,<br>불포화지방산이 등푸른 생선보다 10배 많아<br>혈관
													건강에 도움
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_6.jpg"
														alt="귀리">
												</dt>
												<dd class="cont_title">귀리</dd>
												<dd class="cont_sub">
													세계보건기구(WHO)에서 핀란드 등 장수 국가의 대표<br>음식으로 발표될 정도로 영양이 풍부한
													곡물.<br>칼슘, 철분, 인을 비롯한 미네랄과 비타민 다량 함유
												</dd>
											</dl>
											<dl class="superseed_dough_content">
												<dt>
													<img class="lazyload"
														data-src="https://cdn.dominos.co.kr/renewal2018/w/img/superseed_7.jpg"
														alt="렌틸콩">
												</dt>
												<dd class="cont_title">렌틸콩</dd>
												<dd class="cont_sub">
													풍부한 식이섬유와<br>소고기보다 1.3배 많은 단백질 함유
												</dd>
											</dl>
											<dl class="superseed_dough_title height">
												<dt>2. 맛을 살리다</dt>
												<dd>
													씹을수록 입안 가득 은은하게 퍼지는 고소한 맛과 쫄깃한 식감의 도우<br>토핑의 맛을 더욱 잘
													살려줄 수 있는 도우를 만들기 위해 수천번의 테스트 끝에 찾은 황금 레시피로 피자의 맛에 풍미를
													더해줍니다.
												</dd>
											</dl>
											<dl class="superseed_dough_title">
												<dt>3. 부담은 줄이다</dt>
												<dd>
													어린이, 청소년 및 젊은 남녀, 어르신들까지 모두가 부담 없이 즐길 수 있는 도우<br>칼슘,
													철분 등 다양한 영양소가 함유되어 성장기 어린이, 청소년에게 더욱 좋은 아마씨드, 퀴노아<br>포만감이
													높아 다이어트, 몸매관리에 관심이 많은 분들에게 더욱 좋은 병아리콩, 귀리<br>혈관질환 예방에
													좋은 오메가3, 불포화지방산등이 함유되어 혈관건강에 관심이 많은 분들에게 더욱 좋은 흑미, 햄프시드,
													렌틸콩
												</dd>
											</dl>
										</div>
									</div>
									<ul>
										<li><img class="lazyload"
											data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough2.jpg"
											alt="">
											<dl>
												<dt>
													담백하고 쫄깃한 <strong>오리지널 도우</strong>
												</dt>
												<dd>
													냉장 저온숙성시킨 도우를 손으로 직접 펴서<br>만든 미국 뉴욕 스타일의 도우, 엣지의 두께는<br>2.2CM
													피자 가운데는 1.3CM 내외로 담백하<br>면서도 쫄깃한 도우의 맛이 특징
												</dd>
											</dl></li>
										<li><img class="lazyload"
											data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough3.jpg"
											alt="">
											<dl>
												<dt>
													겉은 바삭, 속은 쫄깃한 <strong>나폴리 도우</strong>
												</dt>
												<dd>
													피자의 원조인 이탈리아 나폴리 스타일의 도우,<br>씬피자와는 다르게 엣지는 살리면서 얇게<br>펴주는
													것이 주요 특징. 엣지의 두께는 1.5CM,<br>피자 가운데는 0.3CM 내외이며, 도우 겉은<br>바삭하고
													속은 쫄깃한 맛을 가지고 있음.
												</dd>
											</dl></li>
										<li><img class="lazyload"
											data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_dough4.jpg"
											alt="">
											<dl>
												<dt>
													얇고 바삭한 <strong>씬 도우</strong>
												</dt>
												<dd>
													이탈리아 로마식 도우로 일반적인 이탈리아<br>적 지역(나폴리 지역 제외)에서 대중화되어<br>있는
													얇은 도우, 엣지 없이 도우가 얇고<br>평평한 것이 특징이며 바삭함을 즐길 수 있음.
												</dd>
											</dl></li>
									</ul>
								</div>
							</div>
							<div class="topping_info">
								<div class="tit_wrap">
									<strong>도우 끝 <span>엣지</span>까지 숨어있는<br>
									<span>갖가지 토핑</span>을 찾아보세요.
									</strong>
								</div>
								<div class="lst_topping">
									<ul>
										<li>
											<div class="lst_tit">
												<img class="lazyload"
													data-src="https://cdn.dominos.co.kr/renewal2018/w/img/img_topping.png"
													alt="">
												<dl>
													<dt>더블치즈엣지</dt>
													<dd>카망베르 크림치즈와 스트링치즈로 꽉~채운</dd>
												</dl>
											</div>
											<ul class="lst_view">
												<li><img class="lazyload"
													data-src="https://cdn.dominos.co.kr/renewal2018/w/img/lst_topping.png"
													alt="">
													<dl>
														<dt>카망베르 크림 치즈</dt>
														<dd>
															치즈의 여왕이라고도 불리는 프랑스 대표 숙성<br>치즈로 깊은 맛과 향, 크림처럼 부드러운
															식감을<br>즐길 수 있는 프리미엄 치즈입니다.
														</dd>
													</dl></li>
												<li><img class="lazyload"
													data-src="https://cdn.dominos.co.kr/renewal2018/w/img/lst_topping2.png"
													alt="">
													<dl>
														<dt>스트링 치즈</dt>
														<dd>
															쫄깃한 식감으로 카망베르 크림 치즈의<br>풍미를 더해줍니다.
														</dd>
													</dl></li>
											</ul>
										</li>

									</ul>
								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- 팝업-메뉴 상세보기 -->
				<script>
					function getDetailSlide(code_01, dsp_ctgr, dough_gb) {
						$.ajax({
							url : '/goods/detailSlide',
							type : 'get',
							data : {
								"code_01" : code_01,
								"dsp_ctgr" : dsp_ctgr,
								"dough_gb" : dough_gb
							},
							success : function(data) {
								$("#detail_main_slide").html(data);
								getDetail(code_01, dsp_ctgr, dough_gb);
							},
							error : function(error) {
								alert("다시 시도해주세요.");
							}
						})
					}

					function getDetail(code_01, dsp_ctgr, dough_gb) {

						$
								.ajax({
									url : '/goods/detailAjax',
									type : 'get',
									data : {
										"code_01" : code_01,
										"dsp_ctgr" : dsp_ctgr,
										"dough_gb" : dough_gb
									},

									success : function(data) {
										UI.layerPopUp({
											selId : '#pop-menu-detail'
										});
										$(".menu-name").text(
												data.resultData.detail.name);
										$(".detail_topping").text(
												data.resultData.detail.topping);
										$(".detail_origin").text(
												data.resultData.detail.origin);
										$(".detail_contents")
												.html(
														data.resultData.detail.w_contents);
										$(".hide_code").val(
												data.resultData.detail.code_01);
										$(".btn_order a").attr(
												"href",
												"detail?dsp_ctgr=" + dsp_ctgr
														+ "&code_01=" + code_01
														+ "&dough_gb="
														+ dough_gb);
										//$(".zoom-wrap").html("<img src=https://cdn.dominos.co.kr/admin/upload/goods/"+data.resultData.detail.file_nm1+" alt="+data.resultData.detail.name+" class='img-zoom' />");

										$(".img-zoom-big")
												.attr(
														"src",
														"https://cdn.dominos.co.kr/admin/upload/goods/"
																+ data.resultData.detail.file_nm1);
										$(".img-zoom-big1")
												.attr(
														"src",
														"https://cdn.dominos.co.kr/admin/upload/goods/"
																+ data.resultData.detail.file_nm1);
										$(".menu-big .zoomImg")
												.attr(
														"src",
														"https://cdn.dominos.co.kr/admin/upload/goods/"
																+ data.resultData.detail.file_nm1);

										if (data.resultData.detail.file_nm2 != ""
												&& data.resultData.detail.file_nm2 != null) {
											$(".subimg2").show();
											$(".img-zoom-big2")
													.attr(
															"src",
															"https://cdn.dominos.co.kr/admin/upload/goods/"
																	+ data.resultData.detail.file_nm2);
										} else {
											$(".subimg2").hide();
										}

										if (data.resultData.detail.file_nm3 != ""
												&& data.resultData.detail.file_nm3 != null) {
											$(".subimg3").show();
											$(".img-zoom-big3")
													.attr(
															"src",
															"https://cdn.dominos.co.kr/admin/upload/goods/"
																	+ data.resultData.detail.file_nm3);
										} else {
											$(".subimg3").hide();
										}
									}
								});
					}
				</script>
				<!-- 팝업-메뉴 상세보기 -->

				<div class="pop-layer pop-menu" id="pop-menu-detail">
					<input type="hidden" value="" class="hide_code" />
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<div class="pop-title menu-name"></div>
						</div>
						<div class="pop-content">
							<div class="menu">
								<article class="menu-detail-area">
									<div class="menu-info">
										<div class="img-wrap">
											<div class="view-box">
												<!-- 대표 이미지 슬라이드 -->
												<div id="detail_main_slide">
													<div class="menu-slider-view" id="pinchzoom"></div>
												</div>

												<a href="javascript:UI.layerPopUp({selId:'#pop-zoom'})"
													class="btn-zoom"> <i class="ico-zoom"></i> <span
													class="hidden">확대버튼</span>
												</a>
												<!-- //대표 이미지 슬라이드 -->
											</div>
											<div class="guide-box2">모든 사진은 이미지컷으로 실제 제품과 다를 수 있습니다.
											</div>
										</div>
										<div class="detail-wrap">
											<div class="select-box">
												<div class="step-wrap step-detail">
													<div class="title-wrap">
														<div class="title-type">메인 토핑</div>
													</div>
													<div class="js_toggle_box detail_topping"></div>
												</div>
												<div class="step-wrap step-detail">
													<div class="title-wrap">
														<div class="title-type">원산지</div>
													</div>
													<div class="js_toggle_box detail_origin"></div>
												</div>
											</div>
											<div class="btn-wrap2">
												<a
													href="javascript:UI.layerPopUp({selId:'#pop-allergy', url:'/contents/ingredient'})"
													class="btn-type2-brd">영양성분 및 알레르기 유발성분</a>
												<!-- 사이드 메뉴  시 제거 부분   -->
												<a
													href="javascript:UI.layerPopUp({selId:'#pop-story', url:'/contents/story'});"
													class="btn-type2-brd">피자스토리</a>
												<!-- //사이드 메뉴  시 제거 부분   -->
											</div>
											
											<_*******************************************>
										</div>
									</div>
									<div class="select-box">
										<div class="step-wrap step-detail">
											<div class="title-wrap close">
												<div class="title-type">제품 상세보기</div>
												<a href="#" class="btn-toggle-close"> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box detail_contents close ">
												<div class="detail-box">
													<div class="title-box">
														<h3 class="title">
															매콤달콤한 도미노 특제 소스와 핫치킨의 화끈한 만남,<br />매운맛 매니아들을 위한 취향저격 피자
														</h3>
														<div class="guide-box3">어린이 및 매운맛에 민감한 분들에게 다소 매울 수
															있습니다.</div>
													</div>
													<div class="img-box">
														<img src="#" alt="블랙타이거 슈림프1" class="img-zoom"
															data-elem="pinchzoomer" />
													</div>
												</div>
											</div>
										</div>

										<div class="step-wrap step-detail">
											<div class="title-wrap close">
												<div class="title-type">메인 토핑</div>
												<a href="#" class="btn-toggle-close"> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box close detail_topping"></div>
										</div>
										<div class="step-wrap step-detail">
											<div class="title-wrap close">
												<div class="title-type">원산지</div>
												<a href="#" class="btn-toggle-close "> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box close detail_origin"></div>
										</div>

										<!-- 사이드 메뉴  시 제거 부분  -->
										<div class="step-wrap step-cont">
											<div class="title-wrap close">
												<div class="title-type">도미노피자의 특징</div>
												<a href="#" class="btn-toggle-close"> <span
													class="hidden">열기</span>
												</a>
											</div>
											<div class="js_toggle_box close">
												<!-- 단락마다 br 태그 2개 -->
												<strong>매일매일 만들어 신선하고 쫄깃 고소한 도우!</strong> 최고의 도우 맛을 위해 물,
												밀가루, 이스트 등을 최적의 비율 로 매일 반죽하여 냉장저온(1~3°C) 숙성한 도미노 피자의 도우!<br />
												수분보유량이 우수하고 도우 입자 사이의 공기층이 적절히 형성된 3일~7일차 도우를 사용해 전문 피자메이커가
												핸드토스드(Hand Tossed) 방식으 로 만들어 특유의 쫄깃 하고 포실포실한 식감과 맛, 향으로 오감을
												충족시킵니다.<br />
												<br /> <strong>깊고 풍부한 맛, 도미노만의 시그니처 치즈!</strong> 도미노피자만을 위해
												연구 개발된 도미노 시그니처 치즈는 미국 농무성에서 인정한 최상 A등급 프리미엄 우유로 생산되어 최고의 맛과
												풍미를 자랑하는 모차렐라 피자치즈 입니다. 게다가 페타크림치즈, 체더치즈, 콰트로치즈퐁듀, 보코치니 등
												고급프리미엄 피자치즈를 사용함으로써 피자의 품격을 높여 더욱 맛있는 피자를 완성하였습니다.<br />
												<br /> <strong>신선한 캘리포니아산 프리미엄 토마토 소스!</strong> 캘리포니아는 따뜻한
												햇살과 시원한 저녁 날씨 덕에 토마토가 자라기에 최적의 환경을 제공합니다. 이 곳에 위치한 대규모 (35만
												에이커) 토마토 농장)에서 70일 동안 잘 익은 토마토는 빠른시간 (4~6시간)내 모든 가공 처리가 이루어져
												신선함이 살아있습니다. 캘리포니아산 토마토는 과육이 풍부해 피자 소스로 만들었을 때 당도, 산미, 감칠맛이
												극상의 조화를 이루기 때문에 피자 맛에 깊이를 더합니다.<br />
												<br /> <strong>항상 놀랍고 새로운 프리미엄 토핑!</strong> 도미노피자는 프리미엄 피자에
												어울리는 최고급 식자재인 와규, 직화스테이크, 게살, 블랙타이거 슈림프 등 항상 놀라움과 새로움을 주는
												혁신적인 프리미엄 토핑을 피자 업계 최초로 적용하며 소비자의 입맛과 트렌드를 선도하고 피자 선택의 폭을
												넓히는 것은 물론 도미노피자만의 색다른 고객 감동을 만들어 가고 있습니다.
											</div>
										</div>
									</div>
									<!-- 구매하기 버튼 -->
									<!-- //구매하기 버튼 -->
								</article>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!-- //팝업-메뉴 상세보기 -->


				<!--팝업-확대 이미지 -->
				<!-- <div class="pop-layer pop-full" id="pop-zoom">
	<div class="pop-wrap">
		<div class="pop-title-wrap">
			<h2 class="pop-title">확대</h2>
		</div>
		<div class="pop-content">
			<div class="zoom-wrap">
				<img src="https://cdn.dominos.co.kr/admin/upload/goods/20190529_PrpQRpBP.jpg" alt="블랙타이거 슈림프1" class="img-zoom" />
			</div>
		</div>
		<a href="#" class="btn-close"></a>
	</div>
</div> -->

				<div class="pop-layer" id="pop-zoom">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title">확대</h2>
						</div>
						<div class="pop-content">
							<div class="zoom-wrap">
								<div class="menu-zoom-wrap">
									<div class="menu-big" id="zoom">
										<img
											src="../../cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
											alt="블랙타이거 슈림프1" class="img-zoom-big" />
									</div>
								</div>
								<div class="menu-thumb">
									<div class="item subimg1 active">
										<a href="#"> <img
											src="../../cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
											alt="블랙타이거 슈림프1" class="img-zoom-big1" />
										</a>
									</div>
									<div class="item subimg2">
										<a href="#"> <img
											src="../../cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
											alt="블랙타이거 슈림프2" class="img-zoom-big2" />
										</a>
									</div>
									<div class="item subimg3">
										<a href="#"> <img
											src="../../cdn.dominos.co.kr/admin/upload/goods/20200120_ZlC0dSzU.jpg"
											alt="블랙타이거 슈림프3" class="img-zoom-big3" />
										</a>
									</div>
								</div>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
				<!--//팝업-확대 이미지 -->
				<script
					src="../../cdn.dominos.co.kr/domino/pc/js/jquery.zoom.min.js"></script>
				<script>
					$(function() {
						$('.menu-thumb .item a').on('click', function(e) {
							e.preventDefault();
							$('.menu-thumb .item').removeClass('active');
							$(this).closest('.item').addClass('active');

							var src = $(this).find("img").attr("src");
							$(".menu-big > img").attr("src", src);
							$(".menu-big .zoomImg").attr("src", src);

						});
					});

					$('.zoom-wrap').each(function() {
						$('#zoom').zoom({
							on : 'click',
							magnify : 2
						});
					});
				</script>
				<!-- 피자 스토리  -->
				<div class="pop-layer" id="pop-story"></div>
				<!-- 피자 스토리  -->

				<!-- 영양성분 및 알레르기 유발성분  -->
				<div class="pop-layer pop-full" id="pop-allergy"></div>
				<!-- 영양성분 및 알레르기 유발성분  -->

				<script>
					(function(i, s, o, g, r, a, m) {
						i['GoogleAnalyticsObject'] = r;
						i[r] = i[r] || function() {
							(i[r].q = i[r].q || []).push(arguments)
						}, i[r].l = 1 * new Date();
						a = s.createElement(o),
								m = s.getElementsByTagName(o)[0];
						a.async = 1;
						a.src = g;
						m.parentNode.insertBefore(a, m)
					})
							(
									window,
									document,
									'script',
									'../../www.google-analytics.com/analytics.js',
									'ga');

					ga('create', 'UA-40278626-1', 'auto', {
						'allowLinker' : true
					});
					ga('require', 'linker');
					ga('linker:autoLink', [ 'cdn.dominos.co.kr' ]);
					ga('send', 'pageview');
				</script>
				<!-- LOGGER(TM) TRACKING SCRIPT V.40 FOR logger.co.kr / 21550 : COMBINE TYPE / DO NOT ALTER THIS SCRIPT. -->
				<script type="text/javascript">
					var _TRK_LID = "21550";
					var _L_TD = "ssl.logger.co.kr";
					var _TRK_CDMN = ".dominos.co.kr";
				</script>
				<script type="text/javascript">
					var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net"
							: "http://fs.bizspring.net";
					(function(b, s) {
						var f = b.getElementsByTagName(s)[0], j = b
								.createElement(s);
						j.async = true;
						j.src = '../../fs.bizspring.net/fs4/bstrk.1.js';
						f.parentNode.insertBefore(j, f);
					})(document, 'script');
				</script>
				<noscript>
					<img alt="Logger Script" width="1" height="1"
						src="http://ssl.logger.co.kr/tracker.tsp?u=21550&amp;js=N" />
				</noscript>
				<!-- END OF LOGGER TRACKING SCRIPT -->

				<!-- BS CTS TRACKING SCRIPT V.20 / 15484 : CTS / DO NOT ALTER THIS SCRIPT. -->
				<!-- COPYRIGHT (C) 2002-2020 BIZSPRING INC. L4AD ALL RIGHTS RESERVED. -->
				<script type="text/javascript">
					(function(b, s, t, c, k) {
						b[k] = s;
						b[s] = b[s] || function() {
							(b[s].q = b[s].q || []).push(arguments)
						};
						var f = t.getElementsByTagName(c)[0], j = t
								.createElement(c);
						j.async = true;
						j.src = '../../fs.bizspring.net/fs4/l4cts.v4.2.js';
						f.parentNode.insertBefore(j, f);
					})(window, '_tcts_m', document, 'script', 'BSAnalyticsObj');
					_tcts_m('15484', 'BCTS');
				</script>
				<!-- END OF BS CTS TRACKING SCRIPT -->

				<!-- Naver Anlytics 공통-->
				<script type="text/javascript" src="../../wcs.naver.net/wcslog.js">
					
				</script>
				<script type="text/javascript">
					if (!wcs_add)
						var wcs_add = {};
					wcs_add["wa"] = "s_273c36e36e8a";
					if (!_nasa)
						var _nasa = {};
					wcs.inflow("dominos.co.kr");
					wcs_do(_nasa);
				</script>
				<!-- // Naver Anlytics 공통 -->

				<!-- Google Tag Manager : dominos_web -->
				<noscript>
					<iframe src="http://www.googletagmanager.com/ns.html?id=GTM-TR97KL"
						height="0" width="0" style="display: none; visibility: hidden"></iframe>
				</noscript>
				<script>
					(function(w, d, s, l, i) {
						w[l] = w[l] || [];
						w[l].push({
							'gtm.start' : new Date().getTime(),
							event : 'gtm.js'
						});
						var f = d.getElementsByTagName(s)[0], j = d
								.createElement(s), dl = l != 'dataLayer' ? '&l='
								+ l
								: '';
						j.async = true;
						j.src = '../../www.googletagmanager.com/gtm5445.html?id='
								+ i + dl;
						f.parentNode.insertBefore(j, f);
					})(window, document, 'script', 'dataLayer', 'GTM-TR97KL');
				</script>
				<!-- End Google Tag Manager -->

				<div class="pop-layer" id="pop-allergy2">
					<div class="dim"></div>
					<div class="pop-wrap">
						<div class="pop-title-wrap">
							<h2 class="pop-title">토핑 알레르기 유발성분</h2>
						</div>
						<div class="pop-content">
							<div class="allergy_guide">
								<p class="text-type">
									한국인에게 알레르기를 유발할 수 있는 12가지 식품에 대해 아래와 같이 제품별 상세 내용을 표기하여
									안내해드립니다.<br>(괄호 안 식품이 해당 토핑에 포함되어있는 알레르기 유발 가능식품)
								</p>
								<dl>
									<dt>* 알레르기 유발 가능 식품 :</dt>
									<dd>토마토, 아황산류(이를 첨가하여 최종제품에 SO2로 10mg/kg 이상 함유한 경우에 한한다),
										호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합 포함)</dd>
								</dl>
							</div>
							<div class="table-type v2">
								<table class="tbl_type">
									<caption>유발성분 표</caption>
									<colgroup>
										<col width="5%">
										<col width="25%">
										<col>
									</colgroup>
									<thead>
										<tr>
											<th>NO</th>
											<th>토핑</th>
											<th>알레르기 유발성분 표기</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>치즈류</td>
											<td>우유</td>
										</tr>
										<tr>
											<td>2</td>
											<td>베이컨</td>
											<td>돼지고기</td>
										</tr>
										<tr>
											<td>3</td>
											<td>페퍼로니</td>
											<td>돼지고기, 쇠고기</td>
										</tr>
										<tr>
											<td>4</td>
											<td>감자</td>
											<td>대두, 이산화황</td>
										</tr>
										<tr>
											<td>5</td>
											<td>햄</td>
											<td>돼지고기, 쇠고기, 대두, 계란</td>
										</tr>
										<tr>
											<td>6</td>
											<td>불고기</td>
											<td>쇠고기,대두,밀,아황산류</td>
										</tr>
										<tr>
											<td>7</td>
											<td>로스트 포테이토</td>
											<td>대두</td>
										</tr>
										<tr>
											<td>8</td>
											<td>포크</td>
											<td>돼지고기,쇠고기,대두,밀,계란</td>
										</tr>
										<tr>
											<td>9</td>
											<td>호스래디시 소스</td>
											<td>계란,우유,대두</td>
										</tr>
										<tr>
											<td>10</td>
											<td>베이컨칩</td>
											<td>돼지고기</td>
										</tr>
										<tr>
											<td>11</td>
											<td>선드라이 토마토</td>
											<td>토마토</td>
										</tr>
										<tr>
											<td>12</td>
											<td>마요네즈</td>
											<td>난류,대두</td>
										</tr>
										<tr>
											<td>13</td>
											<td>갈릭올리브믹스</td>
											<td>계란,우유,대두</td>
										</tr>
										<tr>
											<td>14</td>
											<td>케이준새우살</td>
											<td>케이준소스(대두,토마토,닭고기,조개류(굴)),새우(새우)</td>
										</tr>
										<tr>
											<td>15</td>
											<td>새송이 버섯</td>
											<td>대두</td>
										</tr>
										<tr>
											<td>16</td>
											<td>와규 크럼블</td>
											<td>쇠고기,대두,밀</td>
										</tr>
										<tr>
											<td>17</td>
											<td>비스테카 스테이크</td>
											<td>쇠고기,밀,대두,토마토</td>
										</tr>
										<tr>
											<td>18</td>
											<td>그릴드비프</td>
											<td>쇠고기,대두,밀</td>
										</tr>
										<tr>
											<td>19</td>
											<td>블랙타이거 슈림프</td>
											<td>새우</td>
										</tr>
										<tr>
											<td>20</td>
											<td>블랙앵거스 비프</td>
											<td>쇠고기, 대두, 밀, 계란</td>
										</tr>
										<tr>
											<td>21</td>
											<td>랍스터살</td>
											<td></td>
										</tr>
										<tr>
											<td>22</td>
											<td>고구마 무스</td>
											<td>계란,우유,대두,밀</td>
										</tr>
										<tr>
											<td>23</td>
											<td>고구마 큐브</td>
											<td></td>
										</tr>
										<tr>
											<td>24</td>
											<td>New 고구마 무스</td>
											<td>계란,우유,대두,밀</td>
										</tr>
										<tr>
											<td>25</td>
											<td>머쉬룸</td>
											<td></td>
										</tr>
										<tr>
											<td>26</td>
											<td>이베리코 스테이크</td>
											<td>돼지고기,대두,밀</td>
										</tr>
										<tr>
											<td>27</td>
											<td>통새우</td>
											<td>새우</td>
										</tr>
										<tr>
											<td>28</td>
											<td>문어</td>
											<td>대두,밀,우유,새우,쇠고기,조개류</td>
										</tr>
										<tr>
											<td>29</td>
											<td>비프 스테이크</td>
											<td>대두,밀,토마토,쇠고기</td>
										</tr>
										<tr>
											<td>30</td>
											<td>BBQ포크</td>
											<td>대두,밀,토마토,돼지고기,쇠고기</td>
										</tr>
										<tr>
											<td>31</td>
											<td>호스래디시 스퀴드</td>
											<td>오징어, 계란, 우유, 대두</td>
										</tr>
										<tr>
											<td>32</td>
											<td>스위트 칠리크랩</td>
											<td>게, 대두, 밀, 새우, 토마토, 닭고기, 오징어, 조개류(굴)</td>
										</tr>
										<tr>
											<td>33</td>
											<td>오리엔탈 통새우</td>
											<td>새우, 우유, 대두, 밀, 토마토, 닭고기, 쇠고기, 조개류(굴)</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<a href="#" class="btn-close"></a>
					</div>
				</div>
			</section>
			<!-- //content -->
		</div>
		<!-- //container -->


		<!-- LOGGER 환경변수 설정 -->
		<script type="text/javascript">
			_TRK_PI = "PDV";

			_TRK_CP = "/메뉴/상세/RPZ203SL"; // 카테고리명 전달
			_TRK_PN = 'RPZ203SL_글로벌 레전드4'; // 상품(컨텐츠)명 전달 - pcode
			_TRK_PND = '글로벌 레전드4'; // 상품(컨텐츠)명 전달 - name
			_TRK_MF = "도미노피자"; // 상품(컨텐츠)의 브랜드명 전달
		</script>
		<!-- // LOGGER 환경변수 설정 -->
		<script>
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'../../www.google-analytics.com/analytics.js', 'ga');

			ga('create', 'UA-40278626-1', 'auto', {
				'allowLinker' : true
			});
			ga('require', 'linker');
			ga('linker:autoLink', [ 'cdn.dominos.co.kr' ]);
			ga('send', 'pageview');
		</script>
		<!-- LOGGER(TM) TRACKING SCRIPT V.40 FOR logger.co.kr / 21550 : COMBINE TYPE / DO NOT ALTER THIS SCRIPT. -->
		<script type="text/javascript">
			var _TRK_LID = "21550";
			var _L_TD = "ssl.logger.co.kr";
			var _TRK_CDMN = ".dominos.co.kr";
		</script>
		<script type="text/javascript">
			var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net"
					: "http://fs.bizspring.net";
			(function(b, s) {
				var f = b.getElementsByTagName(s)[0], j = b.createElement(s);
				j.async = true;
				j.src = '../../fs.bizspring.net/fs4/bstrk.1.js';
				f.parentNode.insertBefore(j, f);
			})(document, 'script');
		</script>
		<noscript>
			<img alt="Logger Script" width="1" height="1"
				src="http://ssl.logger.co.kr/tracker.tsp?u=21550&amp;js=N" />
		</noscript>
		<!-- END OF LOGGER TRACKING SCRIPT -->

		<!-- BS CTS TRACKING SCRIPT V.20 / 15484 : CTS / DO NOT ALTER THIS SCRIPT. -->
		<!-- COPYRIGHT (C) 2002-2020 BIZSPRING INC. L4AD ALL RIGHTS RESERVED. -->
		<script type="text/javascript">
			(function(b, s, t, c, k) {
				b[k] = s;
				b[s] = b[s] || function() {
					(b[s].q = b[s].q || []).push(arguments)
				};
				var f = t.getElementsByTagName(c)[0], j = t.createElement(c);
				j.async = true;
				j.src = '../../fs.bizspring.net/fs4/l4cts.v4.2.js';
				f.parentNode.insertBefore(j, f);
			})(window, '_tcts_m', document, 'script', 'BSAnalyticsObj');
			_tcts_m('15484', 'BCTS');
		</script>
		<!-- END OF BS CTS TRACKING SCRIPT -->

		<!-- Naver Anlytics 공통-->
		<script type="text/javascript" src="../../wcs.naver.net/wcslog.js">
			
		</script>
		<script type="text/javascript">
			if (!wcs_add)
				var wcs_add = {};
			wcs_add["wa"] = "s_273c36e36e8a";
			if (!_nasa)
				var _nasa = {};
			wcs.inflow("dominos.co.kr");
			wcs_do(_nasa);
		</script>
		<!-- // Naver Anlytics 공통 -->

		<!-- Google Tag Manager : dominos_web -->
		<noscript>
			<iframe src="http://www.googletagmanager.com/ns.html?id=GTM-TR97KL"
				height="0" width="0" style="display: none; visibility: hidden"></iframe>
		</noscript>
		<script>
			(function(w, d, s, l, i) {
				w[l] = w[l] || [];
				w[l].push({
					'gtm.start' : new Date().getTime(),
					event : 'gtm.js'
				});
				var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
						+ l
						: '';
				j.async = true;
				j.src = '../../www.googletagmanager.com/gtm5445.html?id=' + i
						+ dl;
				f.parentNode.insertBefore(j, f);
			})(window, document, 'script', 'dataLayer', 'GTM-TR97KL');
		</script>
		<!-- End Google Tag Manager -->