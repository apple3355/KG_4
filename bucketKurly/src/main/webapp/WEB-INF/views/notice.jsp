<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta name="description"
	content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta property="og:description"
	content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:image"
	content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg" />
<meta property="og:url"
	content="https://www.kurly.com/shop/board/list.php?id=notice" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="www.kurly.com" />
<meta name="keywords"
	content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식" />
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<meta name="naver-site-verification"
	content="58ff7c242d41178131208256bfec0c2f93426a1d" />
<meta name="facebook-domain-verification"
	content="tyur3wmoos7t63tpkb7zosur6p98m1" />

<!-- 외부 스타일 시트 삽입 -- css만 따로 뻇습니다! -->
<link rel="stylesheet" href="resources/notice.css">
<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp"
	type="image/x-icon">


<script
	src="https://js.sentry-cdn.com/c1f07ee4a3fd45d5aa2ef4983ca9ad43.min.js"
	crossorigin="anonymous"></script>
<script>
  var environment = 'production';

  Sentry.onLoad(function() {
    Sentry.init({
      environment: environment,
      denyUrls: [
        /localhost/i,
        /dev\.kurly\.com/i
      ],
      sampleRate: 0.01,
    });
  });
</script>

<script src="/asset/js/common.bundle.js?ver=1.39.4"></script>
<script type="text/javascript"
	src="https://res.kurly.com/js/lib/jquery-1.10.2.min.js"></script>
<link rel="shortcut icon"
	href="https://res.kurly.com/images/marketkurly/logo/favicon_v2.png"
	type="image/x-icon">
<link rel="apple-touch-icon" sizes="57x57"
	href="https://res.kurly.com/images/marketkurly/logo/ico_57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="https://res.kurly.com/images/marketkurly/logo/ico_60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="https://res.kurly.com/images/marketkurly/logo/ico_72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="https://res.kurly.com/images/marketkurly/logo/ico_76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="https://res.kurly.com/images/marketkurly/logo/ico_114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="https://res.kurly.com/images/marketkurly/logo/ico_120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="https://res.kurly.com/images/marketkurly/logo/ico_144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="https://res.kurly.com/images/marketkurly/logo/ico_152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="https://res.kurly.com/images/marketkurly/logo/ico_180.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="https://res.kurly.com/images/marketkurly/logo/ico_32.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="https://res.kurly.com/images/marketkurly/logo/ico_192.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="https://res.kurly.com/images/marketkurly/logo/ico_16.png">
<script>
sessionStorage.setItem('user_no', '8958074')
sessionStorage.setItem('apiDomainV2', '')

var jwtToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiYjUwMWQxODktMDFjZC00ZGFjLWI4MWQtMjcwOTFlN2NiNjg0IiwiaXNfZ3Vlc3QiOmZhbHNlLCJ1dWlkIjoiMjc1ZjMzMTAtY2Q5MS01NWIyLTgwOTQtYjhjZWRlMGQwY2VhIiwibV9ubyI6ODk1ODA3NCwibV9pZCI6Imxzd29uOTIxMiIsImxldmVsIjoyMCwic3ViIjoiMjc1ZjMzMTAtY2Q5MS01NWIyLTgwOTQtYjhjZWRlMGQwY2VhIiwiaXNzIjoiaHR0cDovL21rd2ViLmFwaS5rdXJseS5zZXJ2aWNlcy92My9hdXRoL2xvZ2luIiwiaWF0IjoxNjMwNjI4MTA2LCJleHAiOjE2MzA2MzE3MDYsIm5iZiI6MTYzMDYyODEwNiwianRpIjoiY1J3YjZxQUpaWVNrTVJmYyJ9.MbQK0tFpPDvwd1GDZaT7YlrI9HwpBS2osdgTRmcMpzQ';
var apiDomain = 'https://api.kurly.com';
var GD_ISMEMBER = !!Number('1');
var checkIsApp = true;// 해당스크립트관련으로 앱체크공용변수추가 생성.앱에서 불필요한 호출제거
</script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script src="/shop/data/skin/designgj/thefarmers.js?ver=1.39.4"></script>
<script src="/shop/data/skin/designgj/common.js?ver=1.39.4"></script>
<script src="/shop/data/skin/designgj/polify.js?ver=1.39.4"></script>
<script src="/shop/data/skin/designgj/ui_v2.js?ver=1.39.4"></script>

<script src="//res.kurly.com/js/vue/xdomain.min.js" slave="https://api.kurly.com/xdomain?ver=1"></script>

<script src="//res.kurly.com/js/vue/es6-promise.min.js"></script>
<script src="//res.kurly.com/js/vue/es6-promise.auto.min.js"></script>

<script type="text/javascript" src="//res.kurly.com/js/vue/axios.min.js"></script>

<script src="//res.kurly.com/js/vue/vue.min.js"></script>
<script src="/common_js/axios.js?ver=1.39.4"></script>
<link rel="styleSheet" href="/shop/data/skin/designgj/normalize.css?ver=1.39.4">
<link rel="styleSheet" href="/shop/data/skin/designgj/section1.css?ver=1.39.4">
<link rel="styleSheet" href="/shop/data/skin/designgj/common.css?ver=1.39.4">

<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript"
	src="/shop/lib/js/naverCommonInflowScript.js?Path=board/list.php&amp;Referer=&amp;AccountID=s_4f41b5625072&amp;Inflow="
	id="naver-common-inflow-script"></script>

<script async
	src="https://www.googletagmanager.com/gtag/js?id=G-2K2GN0FFY0"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-2K2GN0FFY0', {
    'user_id' : 'b501d189-01cd-4dac-b81d-27091e7cb684'
  });
</script>

<style>
.async-hide {opacity: 0 !important}
</style>
<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-90734988-1', 'auto');//'UA-90734988-1'
<!-- KM-201 장차석 : 구글 옵티마이즈&태그 메니저 -->
<!-- End KM-201 장차석 : 구글 옵티마이즈&태그 메니저 -->

var uuidCheck = "";
var cookie_uuid = null;

function setCookieGa(cookieName, value){
	var exdays = 365;
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue +"; path=/;"
}

function getCookieGa(cookieName) {
	cookieName = cookieName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if(start != -1){
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}

function deleteCookieGa(cookieName){
	var expireDate = new Date();
	//어제 날짜를 쿠키 소멸 날짜로 설정한다.
	expireDate.setDate( expireDate.getDate() - 1 );
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
}


/* 로그인 */
if(uuidCheck !== "") {
	if( !getCookieGa('ga_uuid') ){
		setCookieGa('ga_uuid', uuidCheck);
	}else{
		if( getCookieGa('ga_uuid') !== uuidCheck){
			deleteCookieGa('ga_uuid');
			setCookieGa('ga_uuid', uuidCheck); /* 로그인 사용자쿠키 추가 */
		}
	}
	ga('set', 'userId', uuidCheck);
	ga('send', 'pageview',{'dimension1':  uuidCheck});
}else{
	ga('send', 'pageview');
}

//edge browser correspondence
var disableSelection = true;
$(function(){
    $('input, textarea').on('focus', function(){
        disableSelection = false;
    }).on('blur', function(){
        disableSelection = true;
    });
});
</script>
<script>
(function(e,t){var n=e.amplitude||{_q:[],_iq:{}};var r=t.createElement("script")
;r.type="text/javascript"
;r.integrity="sha384-vYYnQ3LPdp/RkQjoKBTGSq0X5F73gXU3G2QopHaIfna0Ct1JRWzwrmEz115NzOta"
;r.crossOrigin="anonymous";r.async=true
;r.src="https://cdn.amplitude.com/libs/amplitude-5.8.0-min.gz.js"
;r.onload=function(){if(!e.amplitude.runQueuedFunctions){
	console.log("[Amplitude] Error: could not load SDK")}}
;var i=t.getElementsByTagName("script")[0];i.parentNode.insertBefore(r,i)
;function s(e,t){e.prototype[t]=function(){
	this._q.push([t].concat(Array.prototype.slice.call(arguments,0)));return this}}
	var o=function(){this._q=[];return this}
	;var a=["add","append","clearAll","prepend","set","setOnce","unset"]
	;for(var u=0;u<a.length;u++){s(o,a[u])}n.Identify=o;var c=function(){this._q=[]
			;return this}
	;var l=["setProductId","setQuantity","setPrice","setRevenueType","setEventProperties"]
	;for(var p=0;p<l.length;p++){s(c,l[p])}n.Revenue=c
	;var d=["init","logEvent","logRevenue","setUserId","setUserProperties","setOptOut","setVersionName","setDomain","setDeviceId", "enableTracking", "setGlobalUserProperties","identify","clearUserProperties","setGroup","logRevenueV2","regenerateDeviceId","groupIdentify","onInit","logEventWithTimestamp","logEventWithGroups","setSessionId","resetSessionId"]
	;function v(e){function t(t){e[t]=function(){
		e._q.push([t].concat(Array.prototype.slice.call(arguments,0)))}}
		for(var n=0;n<d.length;n++){t(d[n])}}v(n);n.getInstance=function(e){
		e=(!e||e.length===0?"$default_instance":e).toLowerCase()
		;if(!n._iq.hasOwnProperty(e)){n._iq[e]={_q:[]};v(n._iq[e])}return n._iq[e]}
	;e.amplitude=n})(window,document);

var amplitudeUid = uuidCheck;
if(amplitudeUid === null){
	amplitudeUid = 'b501d189-01cd-4dac-b81d-27091e7cb684';
}
var appResult = {
	is_release_build: false,
	is_sess: false, // 로그인 유무
  isSession: false,
	appCheck: false,
	device: 'pc',
  timestamp: parseInt("1630628122955", 10)
}

<!---->
appResult.is_sess = true;
appResult.isSession = true;
<!---->
<!---->
appResult.is_release_build = true;
<!---->

var webStatus = appResult;
/* appResult 명을 */

<!---->
amplitude.getInstance().init("65bebb55595beb82e78d5d1ae808702c", amplitudeUid);
<!---->
</script>

<script src="/common_js/kurlytracker/kurlytracker.js?ver=1.39.4"></script>
<script>
  // KM-4988 : amplitude userProperties 업데이트
  var userProperties = {
    membership_level: '웰컴',
    cust_no: Number('8958074'),
  };
  KurlyTracker.setUserProperties(userProperties);
</script>



<script src="/common_js/kurlytracker/facebookConversions.js?ver=1.39.4"></script>

<script src="/asset/js/useKurly/kurlyAPI.bundle.js"></script>
</head>
<body class="board-list" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection">

	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<div id="wrap" class="">
	<div id="pos_scroll"></div>
	<div id="container">
	<div id="header">
	<script>
  // ie10 이하 페이지 이동
  var ieCheckAgent = navigator.userAgent.toLowerCase();
  if ( (navigator.appName === 'Netscape' && navigator.userAgent.search('Trident') !== -1) || (ieCheckAgent.indexOf("msie") !== -1) ) {
    if(navigator.appName !== 'Netscape'){
      location.href = "/shop/event/browserUpdate.php";
    }
  }
</script>

				<div class="bnr_header" id="top-message" style="display: none;">
					<a href="https://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/join/join_210825"
						id="eventLanding"> 지금 가입하고 인기상품 <b>100원</b>에 받아가세요!
						<img src="https://res.kurly.com/pc/ico/1908/ico_arrow_fff_84x84.png" class="bnr_arr">
						<div class="bnr_top">
							<div class="inner_top_close">
								<button id="top-message-close" class="btn_top_bnr">가입하고 혜택받기</button>
							</div>
						</div>
					</a>
					<script>
	//PROM-476 장차석 : GA) 이벤트 트래킹(TOP 이벤트배너)
	$('#eventLanding').on('click', funtion(){ga('send', 'event', 
		'click','general_header_sighup', location.href);});
</script>
				</div>
	<script type="text/javascript">
    $(document).ready(function(){
      $("#top-message-close").on("click",function(){
        setCookie('top_msg_banner2','set_cookie',1)
      });
      if(getCookie('top_msg_banner2') == 'set_cookie'){
        $("#top-message").hide()
      }else{
        $("#top-message").show() ;
      }
    });

    function setCookie(cookieName, value, exdays){
      var exdate = new Date();
      exdate.setDate(exdate.getDate() + exdays);
      var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
      document.cookie = cookieName + "=" + cookieValue +"; path=/;"
    }

    function getCookie(cookieName) {
      cookieName = cookieName + '=';
      var cookieData = document.cookie;
      var start = cookieData.indexOf(cookieName);
      var cookieValue = '';
      if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
      }
      return unescape(cookieValue);
    }
  </script>
				<div id="userMenu">
					<ul class="list_menu">
						<li class="menu none_sub menu_join"><a
							href="/shop/member/join.php" class="link_menu">회원가입</a>
						</li>
						<li class="menu none_sub menu_login"><a
							href="/shop/member/login.php" class="link_menu">로그인</a>
						
						</li>
						<li class="menu lst">
						 			<a href="/shop/board/list.php?id=notice" class="link_menu">고객센터</a>
							<ul class="sub">
								<li>
									<a href="#none"	onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_my_kurly_notice_list')">공지사항</a>
								</li>
								<li>
									<a href="#none"	onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_my_kurly_frequently_qna')">자주하는	질문</a>
								</li>
								<li>
									<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_my_kurly_personal_inquiry_history')">1:1문의</a>
								</li>
								
							</ul>
						</li>
					</ul>
				</div>
				<script src="/common_js/usermenu_v1.js?ver=1.39.4"></script>
				<script>
    $(document).ready(function(){
      userMenu.loginCheck = false;
      
      if($('#kurlyMain').length > 0) {
        $('#userMenu .list_menu .lst .sub').addClass('on');
        $('#userMenu .menu').hover(function(){
          if($('#userMenu .menu .sub').hasClass('on')){
            $('#userMenu .menu .on').removeClass('on');
          }
        });
      }
    });
  </script>
				<div id="headerLogo" class="layout-wrapper">
					<h1 class="logo">
						<a href="/" class="link_main"> <span id="gnbLogoContainer"></span>
							<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bucketKurly.png"alt="마켓컬리 로고" style="display: block;">
						</a>
					</h1>
					<a href="/shop/board/view.php?id=notice&no=64" onclick="ga('send','event','etc','main_gif_btn_click');" class="bnr_delivery">
					<img src="https://res.kurly.com/pc/service/common/2011/delivery_210801.png" alt="샛별, 택배 배송안내" width="121" height="22">
					</a>
				</div>
				<div id="gnb" class>
					<h2 class="screen_out">메뉴</h2>
					<div id="gnbMenu" class="gnb_kurly">
						<div class="inner_gnbkurly">
							<div class="gnb_main">
								<ul class="gnb">
									<li class="menu1"><a href="#none"><span class="ico"></span>
									<span class="txt">전체 카테고리</span>
										</a></li>
									<li class="menu2"><a class="link new " href="/shop/goods/goods_list.php?category=038">
									<span class="txt">신상품</span></a>
									</li>
										<li class="menu3"><a class="link best "	href="/shop/goods/goods_list.php?category=029">
										<span class="txt">베스트</span></a>
										</li>
									<li class="menu4"><a class="link bargain" href="/shop/goods/goods_list.php?list=sale">
									<span class="txt">알뜰쇼핑</span></a>
									</li>
									<li class="lst">
										<a class="link event " href="/shop/goods/event.php?&"><span class="txt">특가/혜택</span>
								</a>
							</li>
						</ul>
								<div id="side_search" class="gnb_search">
									<form action="/shop/goods/goods_search.php?&"
										onsubmit="return searchTracking(this)">
										<input type=hidden name=searched value="Y"> <input
											type=hidden name=log value="1"> <input type=hidden
											name=skey value="all"> <input type="hidden"
											name="hid_pr_text" value=""> <input type="hidden"
											name="hid_link_url" value=""> <input type="hidden"
											id="edit" name="edit" value=""> <input name="sword"
											type="text" id="sword" class="inp_search" value="" required
											label="검색어" placeholder="검색어를 입력해주세요."> <input
											type=image
											src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
											class="btn_search">
										<div class="init">
											<button type="button" class="btn_delete" id="searchInit">검색어 삭제하기</button>
										</div>
									</form>
								</div>
								<div class="cart_count">
									<div class="inner_cartcount">
										<a href="/shop/goods/goods_cart.php" class="btn_cart"> <span
											class="screen_out">장바구니</span> <span
											class="num realtime_cartcount" id="cart_item_count"></span>
										</a>
									</div>
									<div id="addMsgCart" class="msg_cart">
										<span class="point"></span>
										<div class="inner_msgcart">
											<img src="https://res.kurly.com/images/common/bg_1_1.gif"
												alt="" class="thumb">
											<p id="msgReaddedItem" class="desc">
												<span class="tit"></span> <span class="txt"> 장바구니에
													상품을 담았습니다. <span class="repeat">이미 담으신 상품이 있어
														추가되었습니다.</span>
												</span>
											</p>
										</div>
									</div>
								</div>
								<div class="location_set">
									<button type="button" class="btn_location on">배송지 설정하기</button>
									<div class="layer_location">
									 <div class="no_address">
									 	<span class="emph">배송지를 등록</span>
									 	"하고"
									 	<br>
									 	" 구매 가능한 상품을 확인하세요! "
									 	<div class="group_button double"></div>
									 	<button type="button" class="btn default login">로그인</button>
									 	<button type="button" class="btn active searchAddress"><span class="ico"></span>주소검색</button>
									 	<span class="ico"></span>
									 	"주소검색""
									 	</button>
								 	</div>
								 </div>
							</div>
						</div>
					</div>
						<div class="gnb_sub">
								<div class="inner_sub">
									<ul data-default="219" data-min="219" data-max="731" class="gnb_menu" style="height: auto;">
										<li>
											<a class="menu">
											<img src="https://img-cf.kurly.com/category/icon/pc/8ee34306-ea42-4fb0-acb0-c277c2a0ebd3" alt="카테고리 아이콘" class="ico_off">
											<img src="https://img-cf.kurly.com/category/icon/pc/6acd722a-1a81-4587-969d-7ddc4f99989c" alt="카테고리 아이콘" class="ico_on">
											</span>
											<span class="tit">
												<span class="txt">선물하기</span>
												<span class="ico_new" style="background-image: url(&quot;https://res.kurly.com/pc/service/common/1908/ico_new_42x42_v2.png&quot;);">new</span>
											</span>
											</a>
										<ul class="sub_menu">
											<li>
												<a class="sub">
													<span class="name">=== 카테고리별 ===</span></a> <!----></li><li><a class="sub"><span class="name">정육/수산/과일</span></a> <!----></li><li><a class="sub"><span class="name">베이커리/디저트/간편식</span></a> <!----></li><li><a class="sub"><span class="name">건강</span></a> <!----></li><li><a class="sub"><span class="name">뷰티/리빙</span></a> <!----></li><li><a class="sub"><span class="name">=== 가격대별 ===</span></a> <!----></li><li><a class="sub"><span class="name">3만원 미만</span></a> <!----></li><li><a class="sub"><span class="name">3~5만원 이하</span></a> <!----></li><li><a class="sub"><span class="name">5~10만원 이하</span></a> <!----></li><li><a class="sub"><span class="name">10만원 이상</span></a> <!----></li></ul>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/category/icon/pc/6a1967a9-378e-42a6-92c2-b33a2587773c" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/category/icon/pc/6b81e783-a01d-44a9-9081-497faaf73b05" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">추석 선물세트</span> <span class="ico_new" style="background-image: url(&quot;https://res.kurly.com/pc/service/common/1908/ico_new_42x42_v2.png&quot;);">new</span></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">=== 카테고리별 ===</span></a> <!----></li><li><a class="sub"><span class="name">홍삼·즙·건강식품</span></a> <!----></li><li><a class="sub"><span class="name">정육·가공육·건육</span></a> <!----></li><li><a class="sub"><span class="name">수산·건어물·젓갈</span></a> <!----></li><li><a class="sub"><span class="name">과일·견과·곡류</span></a> <!----></li><li><a class="sub"><span class="name">디저트·치즈·다과류</span></a> <!----></li><li><a class="sub"><span class="name">면·양념·오일·캔류</span></a> <!----></li><li><a class="sub"><span class="name">생활·주방·뷰티</span></a> <!----></li><li><a class="sub"><span class="name">간편식·반찬</span></a> <!----></li><li><a class="sub"><span class="name">=== 가격대별 ===</span></a> <!----></li><li><a class="sub"><span class="name">3만원 미만</span></a> <!----></li><li><a class="sub"><span class="name">3-5만원</span></a> <!----></li><li><a class="sub"><span class="name">5-10만원</span></a> <!----></li><li><a class="sub"><span class="name">10-20만원</span></a> <!----></li><li><a class="sub"><span class="name">20만원 이상</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">채소</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">친환경</span></a> <!----></li><li><a class="sub"><span class="name">고구마·감자·당근</span></a> <!----></li><li><a class="sub"><span class="name">시금치·쌈채소·나물</span></a> <!----></li><li><a class="sub"><span class="name">브로콜리·파프리카·양배추</span></a> <!----></li><li><a class="sub"><span class="name">양파·대파·마늘·배추</span></a> <!----></li><li><a class="sub"><span class="name">오이·호박·고추</span></a> <!----></li><li><a class="sub"><span class="name">냉동·이색·간편채소</span></a> <!----></li><li><a class="sub"><span class="name">콩나물·버섯</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_fruit_inactive_pc@2x.1568684150.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_fruit_active_pc@2x.1568684150.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">과일·견과·쌀</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">친환경</span></a> <!----></li><li><a class="sub"><span class="name">제철과일</span></a> <!----></li><li><a class="sub"><span class="name">국산과일</span></a> <!----></li><li><a class="sub"><span class="name">수입과일</span></a> <!----></li><li><a class="sub"><span class="name">간편과일</span></a> <!----></li><li><a class="sub"><span class="name">냉동·건과일</span></a> <!----></li><li><a class="sub"><span class="name">견과류</span></a> <!----></li><li><a class="sub"><span class="name">쌀·잡곡</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_seafood_inactive_pc@2x.1568684352.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_seafood_active_pc@2x.1568684353.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">수산·해산·건어물</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">제철수산</span></a> <!----></li><li><a class="sub"><span class="name">생선류</span></a> <!----></li><li><a class="sub"><span class="name">굴비·반건류</span></a> <!----></li><li><a class="sub"><span class="name">오징어·낙지·문어</span></a> <!----></li><li><a class="sub"><span class="name">새우·게·랍스터</span></a> <!----></li><li><a class="sub"><span class="name">해산물·조개류</span></a> <!----></li><li><a class="sub"><span class="name">수산가공품</span></a> <!----></li><li><a class="sub"><span class="name">김·미역·해조류</span></a> <!----></li><li><a class="sub"><span class="name">건어물·다시팩</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_meat_inactive_pc@2x.1568684452.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_meat_active_pc@2x.1568684452.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">정육·계란</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">국내산 소고기</span></a> <!----></li><li><a class="sub"><span class="name">수입산 소고기</span></a> <!----></li><li><a class="sub"><span class="name">돼지고기</span></a> <!----></li><li><a class="sub"><span class="name">계란류</span></a> <!----></li><li><a class="sub"><span class="name">닭·오리고기</span></a> <!----></li><li><a class="sub"><span class="name">양념육·돈까스</span></a> <!----></li><li><a class="sub"><span class="name">양고기</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_side_inactive_pc@2x.1572243579.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_side_active_pc@2x.1572243579.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">국·반찬·메인요리</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">국·탕·찌개</span></a> <!----></li><li><a class="sub"><span class="name">밀키트·메인요리</span></a> <!----></li><li><a class="sub"><span class="name">밑반찬</span></a> <!----></li><li><a class="sub"><span class="name">김치·젓갈·장류</span></a> <!----></li><li><a class="sub"><span class="name">두부·어묵·부침개</span></a> <!----></li><li><a class="sub"><span class="name">베이컨·햄·통조림</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_convenient_inactive_pc@2x.1572243542.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_convenient_active_pc@2x.1572243543.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">샐러드·간편식</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">샐러드·닭가슴살</span></a> <!----></li><li><a class="sub"><span class="name">도시락·밥류</span></a> <!----></li><li><a class="sub"><span class="name">파스타·면류</span></a> <!----></li><li><a class="sub"><span class="name">떡볶이·튀김·순대</span></a> <!----></li><li><a class="sub"><span class="name">피자·핫도그·만두</span></a> <!----></li><li><a class="sub"><span class="name">폭립·떡갈비·안주</span></a> <!----></li><li><a class="sub"><span class="name">죽·스프·카레</span></a> <!----></li><li><a class="sub"><span class="name">선식·시리얼</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_sauce_inactive_pc@2x.1572243594.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_sauce_active_pc@2x.1572243594.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">면·양념·오일</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">파스타·면류</span></a> <!----></li><li><a class="sub"><span class="name">식초·소스·드레싱</span></a> <!----></li><li><a class="sub"><span class="name">양념·액젓·장류</span></a> <!----></li><li><a class="sub"><span class="name">식용유·참기름·오일</span></a> <!----></li><li><a class="sub"><span class="name">소금·설탕·향신료</span></a> <!----></li><li><a class="sub"><span class="name">밀가루·가루·믹스</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_snacks_inactive_pc@2x.1572243615.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_snacks_active_pc@2x.1572243616.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">생수·음료·우유·커피</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">생수·탄산수</span></a> <!----></li><li><a class="sub"><span class="name">음료·주스</span></a> <!----></li><li><a class="sub"><span class="name">우유·두유·요거트</span></a> <!----></li><li><a class="sub"><span class="name">커피</span></a> <!----></li><li><a class="sub"><span class="name">차</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_cookie_inactive_pc.1610074008.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_cookie_active_pc.1610074008.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">간식·과자·떡</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">과자·스낵·쿠키</span></a> <!----></li><li><a class="sub"><span class="name">초콜릿·젤리·캔디</span></a> <!----></li><li><a class="sub"><span class="name">떡·한과</span></a> <!----></li><li><a class="sub"><span class="name">아이스크림</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_deli_inactive_pc@2x.1568687352.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_deli_active_pc@2x.1568687352.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">베이커리·치즈·델리</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">식빵·빵류</span></a> <!----></li><li><a class="sub"><span class="name">잼·버터·스프레드</span></a> <!----></li><li><a class="sub"><span class="name">케이크·파이·디저트</span></a> <!----></li><li><a class="sub"><span class="name">치즈</span></a> <!----></li><li><a class="sub"><span class="name">델리</span></a> <!----></li><li><a class="sub"><span class="name">올리브·피클</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_health_inactive_pc@2x.1574645922.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_health_active_pc@2x.1574645923.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">건강식품</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">영양제</span></a> <!----></li><li><a class="sub"><span class="name">유산균</span></a> <!----></li><li><a class="sub"><span class="name">홍삼·인삼·꿀</span></a> <!----></li><li><a class="sub"><span class="name">건강즙·건강음료</span></a> <!----></li><li><a class="sub"><span class="name">건강분말·건강환</span></a> <!----></li><li><a class="sub"><span class="name">다이어트·이너뷰티</span></a> <!----></li><li><a class="sub"><span class="name">유아동</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_living_inactive_pc@2x.1588814089.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_living_active_pc@2x.1588814090.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">생활용품·리빙</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">휴지·티슈</span></a> <!----></li><li><a class="sub"><span class="name">여성·위생용품</span></a> <!----></li><li><a class="sub"><span class="name">세제·청소용품</span></a> <!----></li><li><a class="sub"><span class="name">화훼·인테리어소품</span></a> <!----></li><li><a class="sub"><span class="name">의약외품·마스크</span></a> <!----></li><li><a class="sub"><span class="name">생활잡화·문구</span></a> <!----></li><li><a class="sub"><span class="name">캠핑용품</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_beauty_inactive_pc.1618488987.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_beauty_active_pc.1618488987.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">스킨케어·메이크업</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">스킨·미스트·패드</span></a> <!----></li><li><a class="sub"><span class="name">에센스·앰플·로션</span></a> <!----></li><li><a class="sub"><span class="name">크림·오일</span></a> <!----></li><li><a class="sub"><span class="name">클렌징</span></a> <!----></li><li><a class="sub"><span class="name">마스크팩</span></a> <!----></li><li><a class="sub"><span class="name">선케어</span></a> <!----></li><li><a class="sub"><span class="name">메이크업</span></a> <!----></li><li><a class="sub"><span class="name">맨즈케어</span></a> <!----></li><li><a class="sub"><span class="name">뷰티소품·기기</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_body_inactive_pc.1618528534.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_body_active_pc.1618528534.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">헤어·바디·구강</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">구강·면도</span></a> <!----></li><li><a class="sub"><span class="name">샴푸·컨디셔너</span></a> <!----></li><li><a class="sub"><span class="name">트리트먼트·팩</span></a> <!----></li><li><a class="sub"><span class="name">헤어에센스·염모</span></a> <!----></li><li><a class="sub"><span class="name">바디워시·스크럽</span></a> <!----></li><li><a class="sub"><span class="name">바디로션·크림</span></a> <!----></li><li><a class="sub"><span class="name">핸드·립·데오</span></a> <!----></li><li><a class="sub"><span class="name">헤어·바디소품</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_kitchen_inactive_pc@2x.1574646457.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_kitchen_active_pc@2x.1574646458.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">주방용품</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">주방소모품·잡화</span></a> <!----></li><li><a class="sub"><span class="name">주방·조리도구</span></a> <!----></li><li><a class="sub"><span class="name">냄비·팬·솥</span></a> <!----></li><li><a class="sub"><span class="name">보관용기·텀블러</span></a> <!----></li><li><a class="sub"><span class="name">식기·테이블웨어</span></a> <!----></li><li><a class="sub"><span class="name">컵·잔·커피도구</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_electronic__inactive_pc@2x.1574417978.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_electronic__active_pc@2x.1574417978.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">가전제품</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">주방가전</span></a> <!----></li><li><a class="sub"><span class="name">생활가전</span></a> <!----></li><li><a class="sub"><span class="name">계절가전</span></a> <!----></li><li><a class="sub"><span class="name">디지털·PC</span></a> <!----></li><li><a class="sub"><span class="name">대형·설치가전</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_kids_inactive_pc@2x.1568687537.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_kids_active_pc@2x.1568687537.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">베이비·키즈</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">분유·간편 이유식</span></a> <!----></li><li><a class="sub"><span class="name">이유식 재료</span></a> <!----></li><li><a class="sub"><span class="name">간식·음식·음료</span></a> <!----></li><li><a class="sub"><span class="name">건강식품</span></a> <!----></li><li><a class="sub"><span class="name">이유·수유용품</span></a> <!----></li><li><a class="sub"><span class="name">기저귀·물티슈</span></a> <!----></li><li><a class="sub"><span class="name">세제·위생용품</span></a> <!----></li><li><a class="sub"><span class="name">스킨·구강케어</span></a> <!----></li><li><a class="sub"><span class="name">완구·잡화류</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://img-cf.kurly.com/shop/data/category/icon_pet_inactive_pc@2x.1587442293.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://img-cf.kurly.com/shop/data/category/icon_pet_active_pc@2x.1587442294.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">반려동물</span> <!----></span></a> <ul class="sub_menu"><li><a class="sub"><span class="name">강아지 간식</span></a> <!----></li><li><a class="sub"><span class="name">강아지 주식</span></a> <!----></li><li><a class="sub"><span class="name">고양이 간식</span></a> <!----></li><li><a class="sub"><span class="name">고양이 주식</span></a> <!----></li><li><a class="sub"><span class="name">반려동물 용품</span></a> <!----></li><li><a class="sub"><span class="name">배변·위생</span></a> <!----></li><li><a class="sub"><span class="name">소용량·샘플</span></a> <!----></li></ul></li>
											<li><a class="menu"><span class="ico"><img src="https://res.kurly.com/pc/service/common/1908/ico_recommend_v2.png" alt="카테고리 아이콘" class="ico_off"> <img src="https://res.kurly.com/pc/service/common/1908/ico_recommend_on_v2.png" alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span class="txt">컬리의 추천</span> <!----></span></a> <ul class="sub_menu recommend"><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/9e201ca2-9b65-4615-a963-1c80327d1ba1&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">호텔 예약</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/291b013e-cad1-42f3-81db-d9ddb3c5db03&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">홈캉스</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_diet.1585551225.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">식단관리</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_breakfast.1585549149.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">간편한 아침식사</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_best_210402.1617341016.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">재구매 BEST</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_3000_210303.1614667552.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">3천원의 행복</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kp_210108_4.1610088265.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">컬리마트</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/37194cb5-e9c1-4492-ac5a-385a1ff2b624&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">대용량 상품</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_camping_210405.1617341339.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">캠핑</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_single.1594026881.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">1인 가구</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_vegan_210303.1614667589.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">비건</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_offline_210303.1614666430.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">오프라인 맛집</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kurly_s_210303.1614667608.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">컬리가 만든 상품</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_only_210303.1614667623.png&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">Kurly Only</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/f8cf5fe6-4123-4147-981e-d7f889f9e316&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">KF365</span></a></li><li><!----> <a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumb_kp_1PT_201222.1608611417.jpg&quot;);"><img src="https://res.kurly.com/pc/img/1810/bg_blink_236x179.png" alt=""></span> <span class="name">1% Table</span></a></li></ul></li>
											</ul>
										</div></div></div></div></div>
							<script src="/common_js/gnb_v1.js?ver=1.39.4"></script>
						<script type="text/javascript">
  //
  gnbMenu.update();

  // 검색창 클래스 추가/삭제
  var searchInputAction = (function(){
    var $target = {};

    var _searchInputAction = {
      setSeletor: function(){
        $target = {
          $parent: $('#gnb'),
          $search: $('#gnb [name=sword]'),
          $deleteBtn: $('#searchInit'),
          $edit: $('#edit')
        }

        this.setAction();
      },
      setAction: function(){
        var that = this;
        $target.$search.focus(function(){
          that.changeClass($target.$search, 'add', 'focus');
          that.deleteCheck();
        }).blur(function(){
          that.changeClass($target.$search, 'remove', 'focus');
          that.deleteCheck(false);
        }).on('keyup', function(){
          if($target.$edit.val() !== 'Y'){
            $target.$edit.val('Y');
          }
          that.deleteCheck();
        });

        $target.$deleteBtn.on('click', function(){
          $target.$search.val('');
          that.deleteCheck();
        });
      },
      deleteCheck: function(type){
        var that = this, count = $.trim($target.$search.val()).length;
        if(count === 0 || (typeof type !== 'undefined' &&  !type) ){
          that.changeClass($target.$deleteBtn, 'remove', 'on');
        }else{
          that.changeClass($target.$deleteBtn, 'add', 'on');
        }
      },
      changeClass: function(target, type, className){
        if(type === 'add'){
          target.addClass(className);
        }else{
          target.removeClass(className);
        }
      }
    }

    _searchInputAction.setSeletor();
  })();

  // 로고 클릭 이벤트
  $('#header .link_main').on('click', function(e){
    e.preventDefault();
    var url = $(this).attr('href');
    if (url.indexOf('/') === 0) {
      url = window.location.origin + url;
    }

    KurlyTracker.setAction('select_main_logo', {"url": url}).sendData();
    location.href = url;
  });

  $('#gnb .gnb .link').on('click', function(e){
    e.preventDefault();
    var _event_name, _event_info;
    if($(this).hasClass('new')){
      _event_name = 'select_new_product_subtab';
    }else if($(this).hasClass('best')){
      _event_name = 'select_popular_product_subtab';
    }else if($(this).hasClass('bargain')){
      _event_name = 'select_bargain_subtab';
    }else if($(this).hasClass('event')){
      _event_name = 'select_event_list_subtab';
    }
    _event_info = $(this).attr('href');

    KurlyTracker.setEventInfo(_event_info).setAction(_event_name).sendData();
    location.href = _event_info;
  });

  // 장바구니 아이콘 클릭이벤트
  $('#gnbMenu .btn_cart').on('click', function(e){
    e.preventDefault();
    KurlyTracker.setAction('select_cart').sendData();
    location.href = $(this).attr('href');
  });
  </script>
			</div>
			<div id="main">
				<div id="content">
					<div id="qnb" class="quick-navigation" style="top=: 70px;">
							</div>
					<div class="page_aticle aticle_type2">
						<div id="snb" class="snb_cc">
							<h2 class="tit_snb">고객센터</h2>
							<div class="inner_snb">
								<ul class="list_menu">
									<li class="on"><a href="#none"
										onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_service_notice_list')">공지사항</a>
									</li>
									<li><a href="#none"
										onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_service_frequently_qna')">자주하는
											질문</a></li>
									<li><a href="#none"
										onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_service_personal_inquiry_history')">1:1
											문의</a></li>
								</ul>
							</div>
							<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna"
								class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span>
								1:1 문의하기</a>
						</div>
						<div class="page_section">
							<div class="head_aticle">
								<h2 class="tit">
									공지사항 <span class="tit_sub">컬리의 새로운 소식들과 유용한 정보들을 한곳에서
										확인하세요.</span>
								</h2>
							</div>
							<form name=frmList action="/shop/board/list.php?&"
								onsubmit="return chkFormList(this)">
								<input type=hidden name=id value="notice">
								<style>
.notice .layout-pagination {
	margin: 0
}

.eng2 {
	color: #939393
}

.xans-board-listheader {
	font-size: 12px
}
</style>
								<table width=100% align=center cellpadding=0 cellspacing=0>
									<tr>
										<td>
											<div
												class="xans-element- xans-myshop xans-myshop-couponserial ">
												<table width=100% class="xans-board-listheader jh"
													cellpadding=0 cellspacing=0>
													<thead>
														<tr>
															<th>번호</th>
															<th>제목</th>
															<th>작성자</th>
															<th>작성일</th>
															<th>조회</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td width=50 nowrap align=center>공지</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1038"><b>[마켓컬리]
																		갤럭시 Z폴드/플립3 사전예약 & 찜하기 이벤트 당첨자 안내</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-08-31</td>
															<td width=30 nowrap align=center class=eng2>443</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>공지</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1014"><b>[마켓컬리]
																		유튜브 마켓컬리 수산 MD 완도 전복 브이로그' 댓글 이벤트 당첨자 안내</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-08-16</td>
															<td width=30 nowrap align=center class=eng2>918</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>공지</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=984"><b>[마켓컬리]
																		유튜브 ‘마켓컬리 신선 MD 고창 수박 브이로그’ 댓글 이벤트 당첨자 안내</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-07-20</td>
															<td width=30 nowrap align=center class=eng2>2651</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>공지</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=961"><b>[마켓컬리]
																		유튜브 컬리's TMI : 뷰티에 대한 모든 것 편' 댓글 이벤트 당첨자 안내</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-07-05</td>
															<td width=30 nowrap align=center class=eng2>2032</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>공지</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=931"><b>[마켓컬리]
																		종이박스 회수 서비스 안내</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-06-18</td>
															<td width=30 nowrap align=center class=eng2>13884</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>866</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1042">[가격인상공지] [네띠]
																	밴드형 기저귀 5종 (1팩) 외 5개 (2021. 9. 2 ~)</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-09-02</td>
															<td width=30 nowrap align=center class=eng2>9</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>865</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1041">[마켓컬리] 대전, 대구
																	우리집 샛별배송 인증 적립금 이벤트 안내 사항 (종료)</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-09-01</td>
															<td width=30 nowrap align=center class=eng2>56</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>864</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1040">[가격인상공지]
																	[everyday] 고사리 나물 등 9건 (2021. 9. 7 ~)</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-09-01</td>
															<td width=30 nowrap align=center class=eng2>29</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>863</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1039">[마켓컬리] 근무자
																	코로나19 확진 관련 안내</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-08-31</td>
															<td width=30 nowrap align=center class=eng2>306</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>862</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1037">[가격인상공지] [풀무원]
																	고소한 유부초밥 외 6건 (2021. 9. 2 ~)</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-08-31</td>
															<td width=30 nowrap align=center class=eng2>50</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>861</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1036">[가격인상공지]
																	[모어하우스] 130년 전통 홀스래디쉬 2건 (2021. 9. 2 ~)</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-08-31</td>
															<td width=30 nowrap align=center class=eng2>27</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>860</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1035">[가격인상공지] [오늘의
																	일상] 쌀로 만든 와플믹스 플레인 외 1건 (2021. 9. 1 ~)</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-08-30</td>
															<td width=30 nowrap align=center class=eng2>45</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>859</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1034">[가격인상공지] [삼양]
																	불닭볶음면 멀티 5입 외 9건 (2021. 9. 2 ~)</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-08-30</td>
															<td width=30 nowrap align=center class=eng2>44</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>858</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1033">[가격인하공지]
																	[신안더솔트] 3년 묵은 구운 천일염 5종 외 9건 (2021. 8. 30 ~)</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-08-30</td>
															<td width=30 nowrap align=center class=eng2>35</td>
														</tr>
														<tr>
															<td width=50 nowrap align=center>857</td>
															<td
																style="padding-left: 10px; text-align: left; color: #999">
																<a href="view.php?id=notice&no=1032">[가격인상공지] [오뚜기]
																	부침가루 1kg 외 49건 (2021. 8. 12 ~)</a>
															</td>
															<td width=100 nowrap align=center>MarketKurly</td>
															<td width=100 nowrap align=center class=eng2>2021-08-27</td>
															<td width=30 nowrap align=center class=eng2>94</td>
														</tr>
													</tbody>
												</table>
											</div>
										</td>
									</tr>
								</table>
								<div class="layout-pagination">
									<div class="pagediv">
										<a href="list.php?id=notice&page=1"
											class="layout-pagination-button layout-pagination-first-page">맨
											처음 페이지로 가기</a><a href="list.php?id=notice&page=1"
											class="layout-pagination-button layout-pagination-prev-page">이전
											페이지로 가기</a><strong
											class="layout-pagination-button layout-pagination-number __active">1</strong><a
											href="list.php?id=notice&page=2"
											class="layout-pagination-button layout-pagination-number">2</a><a
											href="list.php?id=notice&page=3"
											class="layout-pagination-button layout-pagination-number">3</a><a
											href="list.php?id=notice&page=4"
											class="layout-pagination-button layout-pagination-number">4</a><a
											href="list.php?id=notice&page=5"
											class="layout-pagination-button layout-pagination-number">5</a><a
											href="list.php?id=notice&page=6"
											class="layout-pagination-button layout-pagination-number">6</a><a
											href="list.php?id=notice&page=7"
											class="layout-pagination-button layout-pagination-number">7</a><a
											href="list.php?id=notice&page=8"
											class="layout-pagination-button layout-pagination-number">8</a><a
											href="list.php?id=notice&page=9"
											class="layout-pagination-button layout-pagination-number">9</a><a
											href="list.php?id=notice&page=10"
											class="layout-pagination-button layout-pagination-number">10</a><a
											href="list.php?id=notice&page=2"
											class="layout-pagination-button layout-pagination-next-page">다음
											페이지로 가기</a><a href="list.php?id=notice&page=87"
											class="layout-pagination-button layout-pagination-last-page">맨
											끝 페이지로 가기</a>
									</div>
								</div>
								<table class="xans-board-search xans-board-search2">
									<tr>
										<td class=input_txt><img
											src="/shop/data/skin/designgj/images/board/ico_function.gif">검색어</td>
										<td class=stxt><input type=checkbox name="search[name]">이름
											<input type=checkbox name="search[subject]">제목 <input
											type=checkbox name="search[contents]">내용&nbsp;</td>
										<td class=input_txt>&nbsp;</td>
										<td>
											<div class="search_bt">
												<a href="javascript:document.frmList.submit()"><img
													src="/shop/data/skin/designgj/images/board/search.png"
													align=absmiddle></a> <input type="text"
													name="search[word]" value="" required>
											</div>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<script>
// KM-1483 Amplitude
KurlyTracker.setScreenName('notice_list');
</script>
				</div>
			</div>

			<div id="layerDSR">
				<div class="bg_dim"></div>
				<div class="in_layer">
					<div class="inner_layer layer_star">
						<strong class="dsr_result">샛별배송 지역입니다.</strong>
						<div class="ani">
							<img
								data-src="https://res.kurly.com/mobile/img/1908/img_delivery_kurly.png"
								src="https://res.kurly.com/mobile/service/common/bg_1x1.png"
								alt="샛별배송 이미지">
						</div>
						<p class="dsr_desc default_cutoff_23_7">
							<strong class="emph">오늘 밤 11시 전</strong>까지 주문시<br> <strong
								class="emph">다음날 아침 7시</strong> 이전 도착합니다!
						</p>
						<p class="dsr_desc early_cutoff_20_8">
							<strong class="emph">오늘 밤 8시 전</strong>까지 주문시<br> <strong
								class="emph">다음날 아침 8시</strong> 이전 도착합니다!
						</p>
					</div>
					<div class="inner_layer layer_normal">
						<strong class="dsr_result">택배배송 지역입니다.</strong>
						<div class="ani">
							<img
								data-src="https://res.kurly.com/mobile/img/1908/img_delivery_car.png"
								src="https://res.kurly.com/mobile/service/common/bg_1x1.png"
								alt="택배배송 이미지">
						</div>
						<p class="dsr_desc">
							<strong class="emph">밤 10시 전</strong>까지 주문시<br> <strong
								class="emph">다음날</strong> 도착합니다!
						</p>
						<p class="dsr_notice">일요일은 배송 휴무로 토요일에는 주문 불가</p>
					</div>
					<div class="inner_layer layer_none">
						<strong class="dsr_result">배송 불가 지역입니다.</strong>
						<div class="ani">
							<img
								data-src="https://res.kurly.com/mobile/img/1908/img_delivery_none.png"
								src="https://res.kurly.com/mobile/service/common/bg_1x1.png"
								alt="배송불가 이미지">
						</div>
						<p class="dsr_desc">
							<strong class="emph">도로명 주소</strong>로 검색하셨다면,<br> <strong
								class="emph">지번 주소(구 주소)</strong>로 다시 시도해 주세요.
						</p>
						<p class="dsr_notice">배송지역을 확장하도록 노력하겠습니다!</p>
					</div>
					<div class="layer_btn1">
						<button type="button" class="btn_close"
							onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();">확인</button>
					</div>
					<button type="button" class="layer_close"
						onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
				</div>
			</div>
			<div id="footer" style="opacity: 1;">
				<div class="inner_footer">
					<div class="footer_cc">
						<h2 class="tit_cc">고객행복센터</h2>
						<div class="cc_view cc_call">
							<h3>
								<span class="tit">1644-1107</span>
							</h3>
							<dl class="list">
								<dt>365고객센터</dt>
								<dd>오전 7시 - 오후 7시</dd>
							</dl>
						</div>
						<div class="cc_view cc_kakao">
							<h3>
								<a class="tit" href="#none">카카오톡 문의</a>
							</h3>
							<script type="text/javascript">
							$('.cc_kakao .tit').on('click',function(e){
								e.preventDefault();
                KurlyTracker.setAction('select_bottom_kakao_button').sendData();
								$.ajax({
									type: "GET",
									url: apiDomain+'/v1/mypage/asks/confirm/kakao',
									dataType: 'json',
									success: function(data) {
										if(data.data.ok_button_action_url.indexOf('https://api.happytalk.io/') > -1){
											if(confirm('['+data.data.title+'] '+data.data.message)) window.open(data.data.ok_button_action_url,'_blank');
										}else{
											alert(data.data.title+'\n'+data.data.message);
										}
									}
								})
							});
						</script>
							<dl class="list">
								<dt>365고객센터</dt>
								<dd>오전 7시 - 오후 7시</dd>
							</dl>
						</div>
						<div class="cc_view cc_qna">
							<h3>
								<a href="#none"
									onclick="KurlyTrackerLink('/shop/mypage/mypage_qna_register.php?mode=add_qna', 'select_bottom_onebyone_button')"
									class="tit">1:1 문의</a>
							</h3>
							<dl class="list">
								<dt>24시간 접수 가능</dt>
								<dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
							</dl>
						</div>
						<div class="cc_view cc_bulkorder">
							<h3>
								<a href="/shop/main/html.php?htmid=mypage/bulk_order.htm"
									class="tit">대량주문 문의</a>
							</h3>
							<p class="txt">비회원의 경우 메일로 문의 바랍니다.</p>
						</div>
					</div>
					<div class="company">
						<ul class="list">
							<li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a></li>
							<li><a class="link"
								href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&showinfo=0&wmode=opaque&enablejsapi=1"
								onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a></li>
							<li><a class="link"
								href="https://marketkurly.recruiter.co.kr/appsite/company/index"
								target="_blank">인재채용</a></li>
							<li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
							<li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
							<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
						</ul>
						법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 :
						261-81-23567 <a
							href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&apv_perm_no="
							target="_blank" class="link">사업자정보 확인</a> <br> 통신판매업 : 제
						2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준 <br>
						주소 : 서울특별시 강남구 테헤란로 133, 18층(역삼동) <span class="bar">I</span> 대표이사
						: 김슬아 <br> 입점문의 : <a
							href="https://forms.gle/oKMAe1SaicqMX3SC9" target="_blank"
							class="link">입점문의하기</a> <span class="bar">I</span> 제휴문의 : <a
							href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
						<br> 채용문의 : <a href="mailto:recruit@kurlycorp.com"
							class="link">recruit@kurlycorp.com</a> <br> 팩스: 070 - 7500 -
						6098 <span class="bar">I</span> 이메일 : <a
							href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a>
						<br> 대량주문 문의 : <a href="mailto:kurlygift@kurlycorp.com"
							class="link">kurlygift@kurlycorp.com</a> <em class="copy">&copy;
							KURLY CORP. ALL RIGHTS RESERVED</em>
						<ul class="list_sns">
							<li><a href="https://instagram.com/marketkurly"
								class="link_sns" target="_blank"><img
									src="https://res.kurly.com/pc/ico/1810/ico_instagram.png"
									alt="마켓컬리 인스타그램 바로가기"></a></li>
							<li><a href="https://www.facebook.com/marketkurly"
								class="link_sns" target="_blank"><img
									src="https://res.kurly.com/pc/ico/1810/ico_fb.png"
									alt="마켓컬리 페이스북 바로가기"></a></li>
							<li><a href="http://blog.naver.com/marketkurly"
								class="link_sns" target="_blank"><img
									src="https://res.kurly.com/pc/ico/1810/ico_blog.png"
									alt="마켓컬리 네이버블로그 바로가기"></a></li>
							<li><a href="https://m.post.naver.com/marketkurly"
								class="link_sns" target="_blank"><img
									src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png"
									alt="마켓컬리 유튜브 바로가기"></a></li>
							<li><a
								href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg"
								class="link_sns lst" target="_blank"><img
									src="https://res.kurly.com/pc/ico/1810/ico_youtube.png"
									alt="마켓컬리 유튜브 바로가기"></a></li>
						</ul>
					</div>
				</div>
				<div class="footer_link">
					<div class="authentication">
						<a href="#none"
							onclick="popup('https://res.kurly.com/pc/img/1909/img_isms.jpg',550,700);return false;"
							class="mark" target="_blank"> <img
							src="https://res.kurly.com/pc/ico/2001/logo_isms.png"
							alt="isms 로고" class="logo">
							<p class="txt">
								[인증범위] 마켓컬리 쇼핑몰 서비스 개발 · 운영<br> [유효기간] 2019.04.01 ~
								2022.03.31
							</p>
						</a> <a href="#none"
							onclick="popup('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=EP&certNum=2021-EP-R003',527,720);return false;"
							class="mark" target="_blank"> <img
							src="https://res.kurly.com/pc/ico/2001/logo_eprivacyplus.png"
							alt="eprivacy plus 로고" class="logo">
							<p class="txt">
								개인정보보호 우수 웹사이트 ·<br> 개인정보처리시스템 인증 (ePRIVACY PLUS)
							</p>
						</a> <a href="#none"
							onclick="popup('http://pgweb.uplus.co.kr/ms/escrow/s_escrowYn.do?mertid=go_thefarmers',460,550);return false;"
							class="mark lguplus" target="_blank"> <img
							src="https://res.kurly.com/pc/service/main/2009/logo_payments.png"
							alt="payments 로고" class="logo">
							<p class="txt">
								고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한<br> 토스 페이먼츠
								구매안전(에스크로) 서비스를 이용하실 수 있습니다.
							</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<a href="#top" id="pageTop">맨 위로가기</a>
	<script>
	$(document).ready(function(){
		var pageTop = {
			$target : $('#pageTop'),
			$targetDefault : 0,
			$scrollTop : 0,
			$window : $(window),
			$windowHeight : 0,
			setTime : 500,
			saveHeight : 0,
			init:function(){
			},
			action:function(){
				var $self = this;
				$self.$windowHeight = parseInt($self.$window.height());
				$self.$window.on('scroll', function(){
					$self.$scrollTop = parseInt($self.$window.scrollTop());
					if($self.$scrollTop >= $self.$windowHeight){
						if(!$self.$target.hasClass('on')){
							$self.position();
							$self.$target.addClass('on');
							$self.showAction();
						}
					}else{
						if($self.$target.hasClass('on')){
							$self.position();
							$self.$target.removeClass('on');
							$self.hideAction();
						}
					}
				});

				$self.$target.on('click', function(e){
					e.preventDefault();
					$self.topAction();
				});
			},
			showAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:1,
					bottom:$self.saveHeight
				}, $self.setTime);
			},
			hideAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:0,
					bottom:-$self.$target.height()
				}, $self.setTime);
			},
			topAction:function(){
				var $self = this;
				$self.hideAction();
				$('html,body').animate({
					scrollTop:0
				}, $self.setTime);
			},
			position:function(){
				var $self = this;
				$self.saveHeight = 15;
				if($('#sectionView').length > 0){
					$self.saveHeight = 25;
				}
				if($('#branch-banner-iframe').length > 0 && parseInt( $('#branch-banner-iframe').css('bottom') ) > 0){
					$('#footer').addClass('bnr_app');
					$self.saveHeight += $('#branch-banner-iframe').height();
				}
			}
		}
		pageTop.action();
	});
</script>

	<script>
// 클릭인인경우(푸터에 있으나, 아직공용작업은 못함) => bgLoading 이부분 처리필요
var bodyScroll = {
	winScrollTop : 0,
	body : $('body'),
	gnb : $('#gnb'),
	bg : $('#bgLoading'),
	bodyFixed : function(){
		var $self = this;
		var gnbCheck = false;
		$self.gnb = $('#gnb');
		if($self.gnb.hasClass('gnb_stop')){
			gnbCheck = true;
		}
		$self.body = $('body');
		$self.bg = $('#bgLoading');
		$self.winScrollTop = $(window).scrollTop();
		$self.bg.show();
		$self.body.addClass('noBody').css({
			'top' : -$self.winScrollTop
		});
	},
	bodyDefault : function(type){
		var $self = this;
		$self.body.removeClass('noBody').removeAttr('style');
		$self.bg.hide();
		if(type === undefined){
			window.scrollTo(0, $self.winScrollTop);
		}
	}
}
</script>

	<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank"
		style="display: none; width: 100%; height: 600px;"></iframe>
	<script>
(function (theFrame) {
  theFrame.contentWindow.location.href = theFrame.src;
}(document.getElementById("ifrmHidden")));
</script>


	<script src="https://res.kurly.com/js/polifill/customeEvent.js"></script>
	<script>
	window.addEventListener('load', function () {
		// KM-1238 branch
		(function(b,r,a,n,c,h,_,s,d,k){if(!b[n]||!b[n]._q){for(;s<_.length;)c(h,_[s++]);d=r.createElement(a);d.async=1;d.src="https://cdn.branch.io/branch-latest.min.js";k=r.getElementsByTagName(a)[0];k.parentNode.insertBefore(d,k);b[n]=h}})(window,document,"script","branch",function(b,r){b[r]=function(){b._q.push([r,arguments])}},{_q:[],_v:1},"addListener applyCode autoAppIndex banner closeBanner closeJourney creditHistory credits data deepview deepviewCta first getCode init link logout redeem referrals removeListener sendSMS setBranchViewData setIdentity track validateCode trackCommerceEvent logEvent disableTracking".split(" "), 0);
    var BRANCHKEY = 'key_live_meOgzIdffiVWvdquf7Orkacksxa2LneN';
    if(!webStatus.is_release_build){
      BRANCHKEY = 'key_test_joIkrHgomhL3qaEreXL5QdigzEn6Ucd4';
    }
    branch.init(BRANCHKEY);
		branch.setIdentity(uuidCheck);
		branch.track("pageview");

		// branchReady
		var _eventBranchReady = new CustomEvent("branchReady", {
			detail:{ // 전달 할께 있으면 반드시 detail 오브젝트에 넣어야 함
				val:'1',
			}
		});
		document.dispatchEvent(_eventBranchReady);
		// END branchReady
	}, false);
</script>





	<script src="/asset/js/useKurly/event/imc202102.bundle.js?ver=1.39.4"></script>
</body>
</html>
<script src='../lib/js/board.js'></script>