<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("UTF-8");
%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<%@ page import="net.store.db.*"%>


<!DOCTYPE HTML>
<html lang="ko">

<!-- Mirrored from web.dominos.co.kr/main?locale=ko by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Sep 2020 11:21:48 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=euc-kr" /><!-- /Added by HTTrack -->
<head>
	<meta charset="euc-kr">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" id="viewport" content="width=1119px, user-scalable=yes">
	<meta http-equiv='cache-control' content='no-cache'>
	<meta http-equiv='expires' content='0'>
	<meta http-equiv='pragma' content='no-cache'>
	<meta http-equiv='Cache-Control' content='no-cache'>
	<!-- 사용자지정 태그 -->
	<meta name="description" content="당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta name="title" content="도미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<title>도미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's</title>
<meta property="og:type" content="website" />
<meta property="og:title" content="도미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta property="og:site_name" content="도미노피자" />
<meta property="og:image" content="../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta property="og:image:width" content="270" />
<meta property="og:image:height" content="270" />
<meta property="og:description" content="당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta property="og:url" content="/main" />
<meta name="twitter:card" content="app" />
<meta name="twitter:title" content="도미노피자 - 당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta name="twitter:image" content="../cdn.dominos.co.kr/renewal2018/w/img/sns_pre.png" />
<meta name="twitter:description" content="당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta name="twitter:url" content="/main" />
<meta name="twitter:site" content="@dominostory" />
<meta name="twitter:description" content="당신의 인생에 완벽한 한끼! Life Food, Domino's" />
<meta name="twitter:app:name:iphone" content="도미노피자" />
<meta name="twitter:app:id:iphone" content="371008429" />
<meta name="twitter:app:url:iphone" content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:ipad" content="도미노피자" />
<meta name="twitter:app:id:ipad" content="371008429" />
<meta name="twitter:app:url:ipad" content="https://itunes.apple.com/kr/app/id371008429" />
<meta name="twitter:app:name:googleplay" content="도미노피자" />
<meta name="twitter:app:id:googleplay" content="kr.co.d2.dominos" />
<meta name="twitter:app:url:googleplay" content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:web:url" content="index.html" />
<meta property="al:android:app_name" content="도미노피자" />
<meta property="al:android:package" content="kr.co.d2.dominos" />
<meta property="al:android:url" content="https://play.google.com/store/apps/details?id=kr.co.d2.dominos" />
<meta property="al:ios:app_name" content="도미노피자" />
<meta property="al:ios:app_store_id" content="371008429" />
<meta property="al:ios:url" content="https://itunes.apple.com/kr/app/id371008429" /><link rel="shortcut icon" href="https://cdn.dominos.co.kr/renewal2018/w/img/favicon.ico"/>
	<!-- <link rel="stylesheet" type="text/css" href="/resources/css/font.css"> --> <!-- 20191202 주석 -->
	<!-- 20191204 주석 -->
	
	<script type="text/javascript" src="resources/js/jquery1.11.1.js"></script>
	
	<script type="text/javascript" src="../cdn.dominos.co.kr/renewal2018/w/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="resources/js/selectbox.js"></script><!-- js 수정함. -->
	<script type="text/javascript" src="resources/js/d2CommonUtil7ef2.js?ver=1.5"></script>
	<script type="text/javascript" src="resources/js/Cookie.js"></script>
	<script type="text/javascript" src="../cdn.dominos.co.kr/renewal2018/w/js/basket_w.js"></script>
	
	
	<!-- 리뉴얼 적용 2019.12.02 -->
	<link rel="stylesheet" type="text/css" href="../cdn.dominos.co.kr/domino/asset/css/font.css"> 
	<link rel="stylesheet" type="text/css" href="../cdn.dominos.co.kr/domino/pc/css/common.css"> 
	
	<!--메인에는 sub.css 호출하지않음-->
	<link rel="stylesheet" type="text/css" href="../cdn.dominos.co.kr/domino/pc/css/sub.css">
	<!--//메인에는 sub.css 호출하지않음  -->

	<script src="../cdn.dominos.co.kr/domino/asset/js/jquery-3.1.1.min.js"></script>
	<script src="../cdn.dominos.co.kr/domino/asset/js/slick.js"></script>
	<script src="../cdn.dominos.co.kr/domino/asset/js/TweenMax.min.js"></script>
	<script src="../cdn.dominos.co.kr/domino/asset/js/lazyload.js"></script>
	
	<script src="../cdn.dominos.co.kr/domino/pc/js/ui.js"></script>
	<script type="text/javascript" src="resources/js/gcenmaps/gcenmap.js"></script><!--서브에는 main.js 호출하지않음-->
	<!--//서브에는 main.js 호출하지않음-->
	<!-- //리뉴얼 적용 2019.12.02 -->
	
	<!-- 기존 팝업 재사용위해 css 추가함. 추후 common.css 에 아래 소스 추가 예정 -->
	<style>
	#card_add .pop_wrap{position:fixed;top:50%;width:490px;margin-left:-245px;margin-top:-35px;}
	#card_add .pop_wrap .pop_content p{font-size:18px;color:#fff;text-align:center}
	.pop_toast {display: block;position:absolute;top:0;left:0;width:100%;height:100%;z-index:100;}
	.pop_toast.open {display:block}
	
	.pop_toast .bg {position:fixed; width:100%; height:100%;}
	.pop_toast .pop_wrap {overflow:hidden;position:absolute; top:100px; left:50%; min-width:400px;min-height:70px; margin-left:-200px; padding:20px; background:url(../cdn.dominos.co.kr/renewal2018/w/img/bg/bg_color_navy.png) repeat 0 0;border-radius:12px;}
	.pop_toast .pop_wrap .btn_close3 {position:absolute; top:15px; right:20px;}
	.pop_toast .pop_header {position:absolute;top:0;left:0;width:100%;height:66px;padding:0 40px;background-color:#eeece9;line-height:66px;}
	.pop_toast .pop_header h2 {font-size:30px;font-weight:500;color:#38474f;}
	.pop_toast .pop_content {position:relative;width:100%;padding: 0;}
	.pop_type2 .pop_wrap .btn_close3 {position:absolute; top:15px; right:20px;}
	
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
	
	var CON_DOMAIN_URL = "index.html";
	var CON_SSL_URL = "index.html";
	var CON_STATIC_URL = "https://cdn.dominos.co.kr/renewal2018/w";
	function goLink(menuCode, link) {
		location.href = link;
	}

	$(document).ready(function() {
		$.ajaxSetup({cache:false});

		setBasketCnt();

		// 주문&주문트레커 조회(가입회원/인증회원)
		/*  */
		 
			//메인화면일 경우만 내위치 표시
			geo.init();
		  
		//상단 영문사이트 바로가기 버튼
		$(".select-type2.language").change(function() {
			location.href = $("#select-type2").val();
		});
	});

	function setBasketCnt() {
		var basketCnt = cookieManager.getCookie("BASKETCNT");
		var basket = cookieManager.getCookie("BASKET");
		var finish_basket = cookieManager.getCookie("FINISH_BASKET");

		if(basketCnt == "") basketCnt = "0";
		else if(basket != "" && basket == finish_basket) basketCnt = "0";
		
		if(basketCnt != "0"){ 
			$(".btn-cart > strong ").addClass("cart-count");
			$(".cart-count").text(basketCnt);
		}else{
			$(".btn-cart > strong").removeClass("cart-count");
		}
	}

	var goCart = function() {
		location.href="basket/detail.html";
	};

	var doLogin = function() {
		location.href="global/Login.me";
	};

	var myOrderDetail = function() {
		var order_no = $('#tracker_order_no').val();
		location.href="/mypage/myOrderView?order_no="+order_no+"&pageNo=1";
	};
	
	//페이코 회원 가입
	function goLoginPop() 
	{
		if(location.pathname !== '/global/login')
			location.href = 'global/Login.me';
	}
	
	var goPresentLogin = function(gubun) {
		var rtnUrl = "/voucher/list?gubun="+gubun;
		if("false" == "true"){
			location.href = rtnUrl;
		}else{
			location.href = "/global/login?returnUrl="+rtnUrl;	
		}
	};
	
	function appendLocation(paramArr) {
		var simpleAddress;
		
		gps_yn = 'Y';
		
		if (paramArr == null || paramArr.length == 0){
			return;
		}
		
		$.ajax({
		    type: "GET",
		    url: "/gis/getXyAddressAjax",
		    data: paramArr.join('&'),
		    
		    success:function(data) {
		        $('#myloc').html("");
		        
		        if(data.resultData.result.length > 0) {
		        	var html = '';
					html += '<div class="tip-box center" id="tip-box">';
					html += '<p>주변 매장의 프로모션을 확인해보세요!</p>';
					html += '</div>';
					
					$("#tip-box-top").append(html);
					$("#tip-box").delay(2000).fadeOut(1000);
					
		       		$.each(data.resultData.result, function(i, v) {
		       			if(v.roadaddr === ''){
		       				simpleAddress = v.sggname+' '+v.bemdname+' '+v.jbmain+(v.jbsub=='0'?'':'-'+v.jbsub);
		       				$('#myloc').html(simpleAddress);
		       				lat = v.lat;
		       				lon = v.lon;
		       				xdot = v.kx;
		       				ydot = v.ky;
		       				address = simpleAddress;
		       				
		       			}else{
		       				simpleAddress = v.roadname+' '+v.bdmain+(v.bdsub=='0'?'':'-'+v.bdsub);
		       				$('#myloc').html(simpleAddress);
		       				lat = v.lat;
		       				lon = v.lon;
		       				xdot = v.kx;
		       				ydot = v.ky;
		       				address = simpleAddress;
		       			}
		       		});
		   	    }else {
		       		 $('#myloc').html("주변 매장의 프로모션이 궁금하시면, 위치 서비스를 허용해주세요.");
		    	}
		    },
		    error: function (error){
		        alert("다시 시도해주세요.");
		    }
		    
		});
	}
	
	//현재 위치 받아오기

	var geo = {
		init : function() { 
			
			if ('geolocation' in navigator) {
				/* 지오로케이션 사용 가능 */
				navigator.geolocation.getCurrentPosition(geo.success, geo.error);
				
			} else {
				/* 지오로케이션 사용 불가능 */
				alert('geolocationx');
				alert('사용자의 브라우저는 지오로케이션을 지원하지 않습니다.');

				//geo.changeTab();
			}
		},
		success : function(position) {

			var latitude  = position.coords.latitude;
		    var longitude = position.coords.longitude;
		  	// console.log('<p>위도 : ' + latitude + '° <br>경도 : ' + longitude + '°</p>');

		    findLocation(latitude, longitude);
		},
		error : function(err) {
			
			var userAgent = navigator.userAgent.toString();

			if(/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream){ // iOS
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



	function findLocation(lat,lon) {
		//if (!!!optn) return;

		// 검색 파라미터 설정
		var paramArr = [];	
		paramArr[0] = 'lat=' + lat;
		paramArr[1] = 'lon=' + lon;
		
		appendLocation(paramArr);
	}
	
	function gpsLsm(gps_yn){
		if(gps_yn == 'Y'){
			address = encodeURIComponent(address);
			UI.layerPopUp({selId:'#pop-lsm', url:'/branch/gpsLsm', data:{lon:lon, lat:lat, xdot:xdot, ydot:ydot, address:address}});
			address = decodeURIComponent(address);
			_trk_call();
		}else{
			alert('위치접근허용을 승인해주세요.');	
		}
	}
	
	var _trk_call = function () {
	    // 트래킹
		var _trk_url = document.baseURI + '&_TRK_PI=WP_1P&_TRK_CP=LSM 팝업';
	    try {
	       	_trk_code_base = _trk_code_base.replace(/(du=).*?(&)/,'$1' + escape(_trk_url) + '$2');
	        _trk_flashEnvView("_TRK_PI=WP_1P","_TRK_CP=LSM 팝업");
	        /* console.log('TRK WEB_3_2 DONE!!'); */
	    } catch (e) {
	    	console.log(e.message);
	    }
		
	}
</script>
<!-- Naver Anlytics 공통-->
	<script>
	var WCSLOG_URL = location.protocol == "https:" ? "https://wcs.naver.net/wcslog.js" : "http://wcs.naver.net/wcslog.js";
	document.write(unescape("%3Cscript type='text/javascript' src='" + WCSLOG_URL +"' %3E%3C/script%3E"));
	</script>
	<!-- // Naver Anlytics 공통-->
	
	<!-- Global site tag (gtag.js) - Google Ads: 753034372 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-753034372"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
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
					<a href="Main.do" class="btn-logo">
						<i class="ico-logo"></i>
						<h1 class="hidden">도미노피자</h1>
					</a>
					
					<div class="location active">
							<a href="javascript:void(0);" id="myloc" onclick="gpsLsm(gps_yn);"></a>
						</div>
					<div class="util-nav">
					
					
					<!-- **** 위쪽 로그인 배너 -->
					<%
					String loginId = (String)session.getAttribute("loginId");
					String nmembername = (String)session.getAttribute("nmembername");
					%>

					<%if(loginId == null && nmembername == null) { //로그인 안했을 때 나오는 배너%>
						<a href="./global/Login.me">로그인</a>
						<a href="./member/JoinForm.me">회원가입</a>
					<%} else{ //로그인 성공시 나오는 배너
					
						if(nmembername == null && loginId != null) {%>
							<span style="margin-right: 10px">
							<b><%=loginId %>님 환영합니다!</b>
							</span> <%
							if(loginId.equals("admin")) { //관리자 계정일 경우%>
								<a href="./global/Logout.me">로그아웃</a>
								<a href="./admin/AdminPage.ad">관리자페이지</a>
							<%} else{ //일반 계정일 경우%>
							<a href="./global/Logout.me">로그아웃</a>
							<a href="./member/MemberPage.me?loginId=<%=loginId%>">마이페이지</a>
					<%		}
						} else if(nmembername != null && loginId == null){ %>
							<span style="margin-right: 10px">
							<b><%=nmembername %>님 환영합니다!</b>
							<a href="./member/NonMemberPage.me">마이페이지</a>
							<a href="./global/Logout.me">로그아웃</a>
							</span>
					<%	}
					}%>
						
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
							<a href="goods/MenuListPizza.pro"><span>메뉴</span></a>
						</li>
						<li>
							<a href="ecoupon/CouponList.bo"><span>e-쿠폰</span></a>
						</li>
						<li>
							<a href="voucher/list7f25.html"><span>상품권 선물</span></a>
						</li>
						<li>
							<a href="event/UserEventList.bo"><span>이벤트&middot;제휴</span></a>
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
								<a href="event/mania.html">도미노 서비스</a>
								<ul>
									<li><a href="event/mania.html">매니아 혜택</a></li>
									<li><a href="goods/dominosMoment.html">도미노 모멘트</a></li>
									<li><a href="quickOrder/index.html">퀵 오더</a></li>
									<li><a href="order/groupOrder.html">단체주문 서비스</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">고객센터</a>
								<ul>
									<li><a href="bbs/faqList12ff.html?view_gubun=W&amp;bbs_cd=online">자주하는 질문</a></li>
									<li><a href="bbs/qnaForm.html">온라인 신문고</a></li>
								</ul>
							</div>
							<div class="mnu-box">
								<a href="company/contents/overview.html">회사소개</a>
								<ul>
									<li><a href="company/contents/overview.html">한국도미노피자</a></li>
									<li><a href="company/tvcfList.html">광고갤러리</a></li>
									<li><a href="company/contents/society.html">사회공헌활동</a></li>
									<li><a href="company/contents/chainstore1.html">가맹점 모집</a></li>
									<li><a href="company/jobListe3b0.html?type=R">인재채용</a></li>
								</ul>
							</div>
						</div>
						<div class="notice-box">
							<a>공지사항</a>
							<ul>
								<li><a href="bbs/UserNewsList.bo">도미노뉴스</a></li>
								<li><a href="bbs/UserIssueList.bo">보도자료</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //main 1dep menu -->
		</header><!-- //header -->




   <!-- ----------------------------------------------------------------------------- -->
   <style>
      table {
         width : 800px;
         border-collapse : collapse;
      }
      
      table, th, td {
         border : 1px solid black;
      }
      
      th, td {
         height : 30px;
         text-align : center;
         vertical-align: middle;
      }
      th {
         width: 100px;
      }
      td {
         width: 100px;
      }
   </style>
   
   <div id="container">
    <section id="content">
   <div id = "pizzaAddForm" align="center">
      <h1 class="page-title" style="font-size: 36px; padding: 50px;">매장찾기</h1>
                  
         <table style="margin-bottom: 30px">
            <tr>
               <td colspan=2 >
                  <%
               
                  StoreBean bean = new StoreBean();
                  bean = (StoreBean)request.getAttribute("storebean");
                  StoreDAO storedao = new StoreDAO();
                  
                  
                  String storeName = request.getParameter("storeName");
                  
                  
                  
                  System.out.println(storedao.getStoreAddress(storeName).getStore_address());
                  String address=storedao.getStoreAddress(storeName).getStore_address();
                  String[] addressArr = address.split("\\(");

                  address = addressArr[0].trim().substring(6);
                  
                  System.out.println(storedao.getStoreAddress(storeName).getStore_location());
                  String location=storedao.getStoreAddress(storeName).getStore_location();
                  
                  System.out.println(storedao.getStoreAddress(storeName).getStore_name());
                  String name=storedao.getStoreAddress(storeName).getStore_name();
                  %>
                  
                  <!-- //div 영역에 map 지도를 넣는곳 -->
                  <div id="map" style="width: 799px; height: 500px;"></div>
                  
                  
                  <!-- 주소변환시 필요한 라이브러리 최상단에 넣어야 함-->
                  <script type="text/javascript" 
                        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=94e8b87979acf6d14e2fb13d243f1419&libraries=services">
                  </script>
                  
                  <!-- src=안에 kakao 맵에서 받은 인증키를 통해 맵 주소를 가져온다 -->
                  <script type="text/javascript"
                     src="//dapi.kakao.com/v2/maps/sdk.js?appkey=94e8b87979acf6d14e2fb13d243f1419">
                  </script>
                  <script>
                  
                  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                      mapOption = {   center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                                   level: 3 // 지도의 확대 레벨
                               };  
                  
                  // 지도를 생성합니다    
                  var map = new kakao.maps.Map(mapContainer, mapOption); 
                  
                  var address2 = document.getElementById('address');
                  
                  // 주소-좌표 변환 객체를 생성합니다
                  var geocoder = new kakao.maps.services.Geocoder();
               

                     //매장명,매장주소
                           
                           // 주소로 좌표를 검색합니다
                           var address = geocoder.addressSearch("<%= address %>", function(result, status) {
                           // '서울특별시 강남구 논현로 58' '개포점'
                           
                     
                           /* https://cdn.dominos.co.kr/domino/pc/images/ico_spot.png */
                           var imageSrc = "https://cdn.dominos.co.kr/domino/pc/images/ico_spot.png", // 마커이미지의 주소입니다    
                               imageSize = new kakao.maps.Size(40, 52), // 마커이미지의 크기입니다
                               imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
               
                              // 정상적으로 검색이 완료됐으면 
                              if (status === kakao.maps.services.Status.OK) {
                                  var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
                                     coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                                   
                                   
                                   // 결과값으로 받은 위치를 마커로 표시합니다
                                   var marker = new kakao.maps.Marker({map: map,
                                                                position: coords,
                                                                image: markerImage//마커이미지 설정
                                                              });
                                   // 인포윈도우로 장소에 대한 설명을 표시합니다
                                   var infowindow = new kakao.maps.InfoWindow({
                                       content: '<div style="width:150px;text-align:center;padding:6px 0;">'+'<%=name%>'+'</div>'
                                    });
                                   
                                  infowindow.open(map, marker);
                                   // 지도의 중심을 지정 위치로 이동시킵니다
                                  map.setCenter(coords);
                                } 
                                  
                              });
                       
               </script>
               </td>
            <tr>
               <td>매장명</td>
               <td><%=name%></td>            
            </tr>
            <tr>
               <td>매장위치</td>
               <td><%=location%></td>
            </tr>
         </table>
   </div>
   </section>
   </div>
   
   <!-- ------------------------------------------------------------------------------->
   
</body>
</html>