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

<!-- 외부 스타일 시트 삽입 -->
<link rel="stylesheet" href="resources/faq.css">
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

<div id="qnb" class="quick-navigation">


<div class="bnr_qnb" id="brnQuick"></div>
<script>
    var brnQuick = {
        nowTime : '1630893740213',
        update : function(){
            $.ajax({
                url : campaginUrl + 'pc/service/bnr_quick.html'
            }).done(function(result){
                $('#brnQuick').html(result);
            });    
        }
    }
    brnQuick.update();
</script>

<div class="side_menu">
<a href="/shop/main/html.php?htmid=event/kurly.htm&name=lovers" class="link_menu ">등급별 혜택</a>
<a href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a>
<a href="/shop/goods/goods_review_best.php" class="link_menu ">베스트 후기</a>
</div>
<div class="side_recent" style="display:none">
<strong class="tit">최근 본 상품</strong>
<div class="list_goods" data-height="209">
<ul class="list"></ul>
</div>
<button type="button" class="btn btn_up off">최근 본 상품 위로 올리기</button>
<button type="button" class="btn btn_down">최근 본 상품 아래로 내리기</button>
</div>
<script>
/**
 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
 */
var getGoodsRecent = (function(){
    var i, len, getGoodsRecent, item, _nowTime = '1630893740213';

    _goodsRecent();
    function _goodsRecent(){
        if(localStorage.getItem('goodsRecent') === null){
            return false;
        }
        
        try{
            getGoodsRecent = JSON.parse(localStorage.getItem("goodsRecent"));
            len = getGoodsRecent.length;
            if(addDays(getGoodsRecent[len - 1].time, 1) < _nowTime){
                localStorage.removeItem('goodsRecent');
            }else{
                for(i = 0; i < len; i++){
                    item = '<li><a class="link_goods" href="/shop/goods/goods_view.php?goodsno=' + getGoodsRecent[i].no + '"><img src="' + getGoodsRecent[i].thumb + '" alt=""></a></li>';
                    $('.side_recent .list').append(item);
                }
                $('.side_recent').show();
            }
        } catch(e){
            console.log("JSON parse error from the Quick menu goods list!!!", e);
        }
    }

    function addDays(date, days){
        var result = new Date(date);
        result.setDate(result.getDate() + days);
        return result.getTime();
    }
    
    // return {
    // }
})();
</script>
</div>
<div class="page_aticle aticle_type2">
<div id="snb" class="snb_cc">
<h2 class="tit_snb">고객센터</h2>
<div class="inner_snb">
<ul class="list_menu">
<li>
<a href="#none" onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_service_notice_list')">공지사항</a>
</li>
<li class="on">
<a href="#none" onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_service_frequently_qna')">자주하는 질문</a>
</li>
<li>
<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_service_personal_inquiry_history')">1:1 문의</a>
</li>
</ul>
</div>
<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
</div>
<form name=frmList id="form" method="get" action="?">
<div class="page_section">
<div class="head_aticle">
<h2 class="tit">자주하는 질문 <span class="tit_sub">고객님들께서 가장 자주하시는 질문을 모두 모았습니다.</span></h2>
</div>
<div class="search_date">
<a href="#none" class="btn_layer">선택</a>
<ul class="layer_search">
<li>
<a href="#none" @click="searchResult" data-value="01" data-selected="">회원문의</a>
</li>
<li>
<a href="#none" @click="searchResult" data-value="02" data-selected="">주문/결제</a>
</li>
<li>
<a href="#none" @click="searchResult" data-value="03" data-selected="">취소/교환/반품</a>
</li>
<li>
<a href="#none" @click="searchResult" data-value="04" data-selected="">배송문의</a>
</li>
<li>
<a href="#none" @click="searchResult" data-value="05" data-selected="">쿠폰/적립금</a>
</li>
<li>
<a href="#none" @click="searchResult" data-value="07" data-selected="">서비스 이용 및 기타</a>
</li>
</ul>
<input type="hidden" name="sitemcd" value="">
<script>
          var $targetBtn = $('.search_date .btn_layer');
          var $targetLayer = $('.search_date .layer_search');
          var $targetSelector = $('.layer_search a');

          $targetSelector.each(function(){
            if($(this).data('selected')){
              $targetBtn.text($(this).data('selected'));
            }
          });
          $targetBtn.on('click',function(e){
            e.preventDefault();
            $(this).toggleClass('on');
            $targetLayer.slideToggle(100);
          });
          $targetSelector.on('click', function(e){
            e.preventDefault();
            var value = $(this).data('value');
            var text = $(this).text();
            $targetBtn.trigger('click').text(text);
            $('[name=sitemcd]').val(value);
            $('[name=frmList]').submit();
          });
        </script>
</div>

<div class="xans-element- xans-myshop xans-myshop-couponserial ">
<table width="100%" class="xans-board-listheader">
<tr>
<th width=70 class="input_txt">번호</th>
<th width=135 class="input_txt">카테고리</th>
<th class="input_txt">제목</th>
</tr>
</table>
<div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_7">
<tr>
<td width=70 align="center">68</td>
<td width=135 align="center">회원문의</td>
<td style="cursor:pointer">아이디와 비밀번호가 생각나지 않아요. 어떻게 찾을 수 있나요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>(PC) 오른쪽 위의 [로그인] > 화면 아래 [아이디 찾기] [비밀번호 찾기]<br />
<br />
(모바일) 아래 탭에서 [마이컬리] > 로그인 화면 아래 [아이디 찾기] [비밀번호 찾기]<br />
<br />
<br />
를 통해 확인이 가능하며, 임시 비밀번호의 경우 회원가입시 등록하신 메일로 발송이 됩니다.<br />
<br />
<br />
가입시 기재한 메일 주소가 기억나지 않으시거나 오류가 발생하는 경우, <br />
<br />
고객행복센터(1644-1107) 또는 카카오톡으로 문의 주시면 신속하게 도움 드리겠습니다.<br />
<br />
<br />
상담시에는 고객님의 개인정보보호를 위해 기존에 사용하시던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시비밀번호를 설정해드립니다.</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_31">
<tr>
<td width=70 align="center">67</td>
<td width=135 align="center">주문/결제</td>
<td style="cursor:pointer">(샛별배송) 어제 주문했는데 오늘 아침에 배송이 안 됐어요. 왜 그런가요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>주문 마감시간 이후의 샛별배송 주문건은 다다음날 새벽에 배송됩니다.<br />
[샛별배송 주문 마감시간]<br />
· 서울, 경기, 인천, 충청, 대전 : 밤 11시 <br />
· 대구 : 밤 8시<br />
<br />
<br />
<br />
(PC) 홈페이지 상단 고객님 성함 (마이컬리) > 나의 주문내역 > 주문내역상세<br />
(모바일) 마이컬리 > 주문 내역 > 주문내역상세<br />
에서 결제완료시간을 확인해주세요. <br />
<br />
<br />
※ 만일, 전일자 주문 마감시간 이전에 결제했음에도 불구하고 배송이 안 되었을 경우, 고객센터 (1644-1107) 또는 1:1 문의에 문의 남겨주세요.<br />
</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_97">
<tr>
<td width=70 align="center">66</td>
<td width=135 align="center">취소/교환/반품</td>
<td style="cursor:pointer">교환 또는 반품신청 시에 사진을 첨부해야 하나요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>상품의 하자 등의 사유로 교환 또는 반품을 신청하시는 경우, 1:1 문의 또는 카카오톡 문의에 해당 사항을 확인할 수 있는 사진 첨부를 부탁드립니다. <br />
<br />
<br />
구매하신 상품의 문제 상황을 확인할 수 있는 당시의 상세한 사진일 수록, 보다 신속하고 정확한 안내를 받으실수 있습니다. <br />
<br />
<br />
고객님의 소중한 말씀과 사진은 해당 담당부서로 공유되며, 이를 바탕으로 더 나은 품질의 상품으로 제공드리도록 하겠습니다. </td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_109">
<tr>
<td width=70 align="center">65</td>
<td width=135 align="center">서비스 이용 및 기타</td>
<td style="cursor:pointer">장바구니 상품은 언제까지 보관이 되나요? </td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>장바구니 상품은 최대 90일간 저장됩니다. <br />
<br />
90일동안 구매하지 않는다면, 해당 상품은 장바구니에서 소멸되오니, 이용에 참고 부탁드립니다. <br />
</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_118">
<tr>
<td width=70 align="center">64</td>
<td width=135 align="center">배송문의</td>
<td style="cursor:pointer">배송은 언제 되나요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>샛별배송의 경우 주문 마감시간 전까지 주문하시면 다음날 아침에 도착합니다. (주 7일 배송)<br />
-서울, 경기, 인천, 충청, 대전 샛별배송지역 : 밤 11시 전까지 주문시 다음날 아침 7시 전 수령<br />
-대구 샛별배송 지역 : 밤 8시 전까지 주문시 다음날 아침 8시 전 수령 <br />
<br />
택배배송의 경우 밤 8시 전까지 주문하시면 다음날 밤 12시 전에 도착합니다. (토요일 주문 불가) 월~토 배송 (일요일, 공휴일 휴무) <br />
<br />
*단, 배송 과정 중 기상 악화 및 도로 교통 상황에 따라 부득이하게 지연 배송이 발생될 수 있습니다. </td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_120">
<tr>
<td width=70 align="center">63</td>
<td width=135 align="center">쿠폰/적립금</td>
<td style="cursor:pointer">쿠폰은 어떻게 적용(결제시)/복원(환불시)되나요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>상품 주문시 일부 금액을 쿠폰으로 결제하실 경우, 쿠폰은 쿠폰이 적용되는 각 상품의 가격 비율에 따라 적용됩니다.<br />
주문 전체를 취소하시는 경우 사용하신 쿠폰은 자동으로 복원되나, 주문 중 일부를 취소 또는 환불 하시는 경우에는 자동으로 복원되지 않는 점 양해 부탁드립니다.<br />
<br />
(단, 주문 취소 후 쿠폰 유효 기간이 종료되었다면, 쿠폰 만료로 복원되지 않는 점 참고 부탁드립니다.)<br />
</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_13">
<tr>
<td width=70 align="center">62</td>
<td width=135 align="center">회원문의</td>
<td style="cursor:pointer">주문하지 않았는데, 주문완료 메시지 또는 배송완료 메시지를 받았습니다.</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>상품을 주문하신 고객님이 핸드폰 번호를 잘못 입력하시어 <br />
<br />
주문하지 않은 고객님께 문자가 발송되는 경우가 있으며,<br />
<br />
<br />
지인분께서 고객님께 선물하실 경우에는 수령자 번호로 배송완료 메세지가 발송되므로 선물배송일 가능성도 있습니다.<br />
<br />
<br />
자세한 사항은 고객행복센터(1644-1107)로 연락주시거나 [1:1문의] 또는 [카카오톡] 으로 문의바랍니다.<br />
<br />
(PC) 홈페이지 하단 [1:1문의]<br />
<br />
(모바일) 마이컬리 > 1:1 문의 또는 마이컬리 > 고객센터 > 카카오톡 문의</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_18">
<tr>
<td width=70 align="center">61</td>
<td width=135 align="center">취소/교환/반품</td>
<td style="cursor:pointer">상품을 반품했는데 아직 카드취소가 되지 않았어요. 어떻게 된 건가요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>카드환불의 경우 카드사 사정에 따라 환불 접수일로 부터 영업일 기준 3~7일 정도 소요될 수 있습니다. <br />
<br />
(취소완료시 카드사에서 안내드리는 SMS는 고객님의 수신 설정여부에 따라 미수신 될 수 있습니다)<br />
<br />
자세한 사항은 카드사에 문의 부탁드리며, 7일 이후에도 환불이 되지 않은 경우 1:1문의로 문의 부탁드립니다.</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_56">
<tr>
<td width=70 align="center">60</td>
<td width=135 align="center">서비스 이용 및 기타</td>
<td style="cursor:pointer">내가 주문한 내역은 어떻게 확인하나요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>1. 컬리 회원이신 경우<br />
<br />
<br />
로그인 후,<br />
<br />
(PC) 홈페이지 상단 고객님 성함 (마이컬리) > 주문내역<br />
<br />
(모바일) 마이컬리 > 주문내역<br />
<br />
에서 해당 주문번호를 눌러 확인 가능합니다.<br />
<br />
<br />
<br />
<br />
2. 비회원이신 경우<br />
<br />
<br />
비회원 주문확인 및 배송 조회는 모바일 앱과 웹, 혹은 고객센터 (1644-1107)에서 가능합니다.<br />
<br />
(모바일 앱) 마이컬리 > 비회원 주문 조회, <br />
<br />
(모바일 웹) 로그인 화면에서 비회원 탭을 누른 후 주문자명, 주문번호를 입력하여 조회하시면 됩니다.<br />
<br />
(PC) 조회 불가합니다.</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_98">
<tr>
<td width=70 align="center">59</td>
<td width=135 align="center">주문/결제</td>
<td style="cursor:pointer">(회원) 쿠폰 적용은 어떻게 하나요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>주문서에서 [4. 결제금액] 섹션 중 쿠폰칸을 눌러 조회하신 후 [확인] 버튼을 눌러 적용할 수 있습니다. <br />
<br />
한 주문건에 적립금과 쿠폰은 동시에 사용할 수 없으며 한 주문건에 쿠폰은 한 장만 사용가능합니다. <br />
<br />
쿠폰별로 사용법 및 조건이 다를 수 있으니, 사용법 문의는 1:1 문의에 남겨주세요.</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_117">
<tr>
<td width=70 align="center">58</td>
<td width=135 align="center">배송문의</td>
<td style="cursor:pointer">샛별배송이 지연된다고 연락을 받았어요!</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>이용에 불편을 드려 죄송합니다.<br />
<br />
컬리는 고객 님께 약속 드린 배송 시간을 준수하기 위하여 최선을 다하고 있으나, 배송 과정 중 악천후 및 도로 교통 상황 등의 이유로 부득이하게 지연이 발생되는 경우가 드물게 발생합니다. <br />
<br />
배송이 지연되는 경우 해당 사실과 도착 예정 시간을 고객님께 문자로 안내 드리고 있으며, 최대한 신속히 배송 드릴 수 있도록 노력하겠습니다. <br />
<br />
혹, 배송에 대한 조치나 배송 현황 확인이 필요하신 경우에는 컬리 고객행복센터, 1:1문의, 카카오톡 채팅 상담을 통해 문의 부탁 드립니다.</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_119">
<tr>
<td width=70 align="center">57</td>
<td width=135 align="center">쿠폰/적립금</td>
<td style="cursor:pointer">적립금은 어떻게 적용(결제시)/복원(환불시)되나요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>상품 주문시 일부 금액을 적립금으로 결제하실 경우, 적립금은 각 상품의 가격 비율에 따라 적용됩니다. <br />
일부 상품의 주문 취소 또는 환불의 경우에도 그에 따라 복원됩니다</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_26">
<tr>
<td width=70 align="center">56</td>
<td width=135 align="center">주문/결제</td>
<td style="cursor:pointer">(회원) 적립금 적용은 어떻게 하나요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>주문서에서 [4. 결제금액] 섹션 중 적립금 칸에 1원 단위로 적용이 가능합니다. <br />
<br />
보유 적립금 확인 후, 원하시는 금액 입력을 해주세요. <br />
<br />
한 주문건에 적립금과 쿠폰은 동시에 사용할 수 없습니다.</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_94">
<tr>
<td width=70 align="center">55</td>
<td width=135 align="center">취소/교환/반품</td>
<td style="cursor:pointer">교환/반품 기준이 어떻게 되나요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>■ 상품에 문제가 있는 경우 <br />
<br />
받으신 상품이 표시·광고 내용 또는 계약 내용과 다른 경우에는 상품을 받은 날부터 3개월 이내, 그 사실을 알게 된 날부터 30일 이내에 교환 및 환불을 요청하실 수 있습니다.<br />
상품의 정확한 상태를 확인할 수 있도록 사진을 함께 보내주시면 더 빠른 상담이 가능합니다. <br />
<br />
※ 상품에 문제가 있는 것으로 확인되면 배송비는 컬리가 부담합니다.<br />
<br />
<br />
■ 단순 변심, 주문 착오의 경우<br />
<br />
[신선/ 냉장/ 냉동 식품]<br />
재판매가 불가한 상품의 특성상, 단순 변심, 주문 착오 시 교환 및 반품이 어려운 점 양해 부탁드립니다. <br />
상품에 따라 조금씩 맛이 다를 수 있으며, 개인의 기호에 따라 같은 상품도 다르게 느끼실 수 있습니다.<br />
<br />
[유통기한 30일 이상 식품 (신선/ 냉장/ 냉동 제외) & 기타 식품] <br />
상품을 받은 날부터 7일 이내에 고객행복센터로 문의해주세요.<br />
<br />
※ 단순 변심으로 인한 교환 또는 환불의 경우 고객님께서 배송비 6,000원을 부담하셔야 합니다.<br />
(주문 건 배송비를 결제하셨을 경우 3,000원)<br />
<br />
<br />
<br />
■ 교환·반품이 불가한 경우<br />
<br />
※ 다음에 해당하는 교환·환불 신청은 처리가 어려울 수 있으니 양해 부탁드립니다.<br />
<br />
- 고객님의 책임 있는 사유로 상품이 멸실되거나 훼손된 경우<br />
(단, 상품의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)<br />
- 고객님의 사용 또는 일부 소비로 상품의 가치가 감소한 경우<br />
- 시간이 지나 다시 판매하기 곤란할 정도로 상품의가치가 감소한 경우<br />
- 복제가 가능한 상품의 포장이 훼손된 경우<br />
- 고객님의 주문에 따라 개별적으로 생산되는 상품의 제작이 이미 진행된 경우 <br />
</td>
</tr>
</table>
</div>
</div>
<div>
<table width=100% class="table_faq" onclick="view_content(this)" id="faq_96">
<tr>
<td width=70 align="center">54</td>
<td width=135 align="center">회원문의</td>
<td style="cursor:pointer">회원 탈퇴 후 동일한 연락처로 재가입이 가능한가요?</td>
</tr>
</table>
<div style="display:none;padding:30px; border-top:1px solid #e6e6e6">
<table cellpadding=0 cellspacing=0 border=0>
<tr valign="top">
<th style="color:#0000bf;width:40px; padding-top:1px;"><img src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
<td>회원탈퇴 후 30일 이내에는 동일한 연락처로 가입이 불가합니다.</td>
</tr>
</table>
</div>
</div>
</div>
<div style="padding:1px; border-top:1px solid #e6e6e6"></div>
<div class="layout-pagination"><div class="pagediv"><a href="/shop/service/faq.php?&page=1" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a><a href="/shop/service/faq.php?&page=1" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a><strong class="layout-pagination-button layout-pagination-number __active">1</strong><a href="/shop/service/faq.php?&page=2" class="layout-pagination-button layout-pagination-number">2</a><a href="/shop/service/faq.php?&page=3" class="layout-pagination-button layout-pagination-number">3</a><a href="/shop/service/faq.php?&page=4" class="layout-pagination-button layout-pagination-number">4</a><a href="/shop/service/faq.php?&page=5" class="layout-pagination-button layout-pagination-number">5</a><a href="/shop/service/faq.php?&page=2" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a><a href="/shop/service/faq.php?&page=5" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a></div></div>
<table class="xans-board-search xans-board-search2">
<tr>
<td class=input_txt>&nbsp;</td>
<td>
<div class="search_bt">
<input type="image" src="/shop/data/skin/designgj/images/board/search.png" align=absmiddle>
<input type="text" NAME="sword" value="" required>
</div>
</td>
</tr>
</table>
</div>

</div>
</form>
</div>
<script>
  var preContent;

  function view_content(obj)
  {
    var div = obj.parentNode;

    for (var i=1, m=div.childNodes.length;i<m;i++) {
      if (div.childNodes[i].nodeType != 1) continue;	// text node.
      else if (obj == div.childNodes[ i ]) continue;

      obj = div.childNodes[ i ];
      break;
    }

    if (preContent && obj!=preContent){
      obj.style.display = "block";
      preContent.style.display = "none";
    }
    else if (preContent && obj==preContent) preContent.style.display = ( preContent.style.display == "none" ? "block" : "none" );
    else if (preContent == null ) obj.style.display = "block";

    preContent = obj;
  }

  { // 초기출력
    var no = "faq_";
    if ( document.getElementById( no ) ) view_content( document.getElementById( no ) );
  }

  // KM-1483 Amplitude 연동
  KurlyTracker.setScreenName('frequently_ask_question')
</script>
</div>
</div>

<div id="layerDSR">
<div class="bg_dim"></div>
<div class="in_layer">
<div class="inner_layer layer_star">
<strong class="dsr_result">샛별배송 지역입니다.</strong>
<div class="ani">
<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_kurly.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="샛별배송 이미지">
</div>
<p class="dsr_desc default_cutoff_23_7">
<strong class="emph">오늘 밤 11시 전</strong>까지 주문시<br>
<strong class="emph">다음날 아침 7시</strong> 이전 도착합니다!
</p>
<p class="dsr_desc early_cutoff_20_8">
<strong class="emph">오늘 밤 8시 전</strong>까지 주문시<br>
<strong class="emph">다음날 아침 8시</strong> 이전 도착합니다!
</p>
</div>
<div class="inner_layer layer_normal">
<strong class="dsr_result">택배배송 지역입니다.</strong>
<div class="ani">
<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_car.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="택배배송 이미지">
</div>
<p class="dsr_desc">
<strong class="emph">밤 10시 전</strong>까지 주문시<br>
<strong class="emph">다음날</strong> 도착합니다!
</p>
<p class="dsr_notice">일요일은 배송 휴무로 토요일에는 주문 불가</p>
</div>
<div class="inner_layer layer_none">
<strong class="dsr_result">배송 불가 지역입니다.</strong>
<div class="ani">
<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_none.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="배송불가 이미지">
</div>
<p class="dsr_desc">
<strong class="emph">도로명 주소</strong>로 검색하셨다면,<br>
<strong class="emph">지번 주소(구 주소)</strong>로 다시 시도해 주세요.
</p>
<p class="dsr_notice">배송지역을 확장하도록 노력하겠습니다!</p>
</div>
<div class="layer_btn1">
<button type="button" class="btn_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();">확인</button>
</div>
<button type="button" class="layer_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
</div>
</div>
<div id="footer">
<div class="inner_footer">
<div class="footer_cc">
<h2 class="tit_cc">고객행복센터</h2>
<div class="cc_view cc_call">
<h3><span class="tit">1644-1107</span></h3>
<dl class="list">
<dt>365고객센터</dt>
<dd>오전 7시 - 오후 7시</dd>
</dl>
</div>
<div class="cc_view cc_kakao">
<h3><a class="tit" href="#none">카카오톡 문의</a></h3>
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
<h3><a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_qna_register.php?mode=add_qna', 'select_bottom_onebyone_button')" class="tit">1:1 문의</a></h3>
<dl class="list">
<dt>24시간 접수 가능</dt>
<dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
</dl>
</div>
<div class="cc_view cc_bulkorder">
<h3><a href="/shop/main/html.php?htmid=mypage/bulk_order.htm" class="tit">대량주문 문의</a></h3>
<p class="txt">비회원의 경우 메일로 문의 바랍니다.</p>
</div>
</div>
<div class="company">
<ul class="list">
<li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a></li>
<li><a class="link" href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&showinfo=0&wmode=opaque&enablejsapi=1" onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a></li>
<li><a class="link" href="https://marketkurly.recruiter.co.kr/appsite/company/index" target="_blank">인재채용</a></li>
<li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
<li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
</ul>
법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 : 261-81-23567 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&apv_perm_no=" target="_blank" class="link">사업자정보 확인</a>
<br>
통신판매업 : 제 2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준
<br>
주소 : 서울특별시 강남구 테헤란로 133, 18층(역삼동) <span class="bar">I</span> 대표이사 : 김슬아
<br>
입점문의 : <a href="https://forms.gle/oKMAe1SaicqMX3SC9" target="_blank" class="link">입점문의하기</a> <span class="bar">I</span> 제휴문의 : <a href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
<br>
채용문의 : <a href="mailto:recruit@kurlycorp.com" class="link">recruit@kurlycorp.com</a>
<br>
팩스: 070 - 7500 - 6098 <span class="bar">I</span> 이메일 : <a href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a>
<br>
대량주문 문의 : <a href="mailto:kurlygift@kurlycorp.com" class="link">kurlygift@kurlycorp.com</a>
<em class="copy">&copy; KURLY CORP. ALL RIGHTS RESERVED</em>
<ul class="list_sns">
<li>
<a href="https://instagram.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_instagram.png" alt="마켓컬리 인스타그램 바로가기"></a>
</li>
<li>
<a href="https://www.facebook.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_fb.png" alt="마켓컬리 페이스북 바로가기"></a>
</li>
<li>
<a href="http://blog.naver.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_blog.png" alt="마켓컬리 네이버블로그 바로가기"></a>
</li>
<li>
<a href="https://m.post.naver.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png" alt="마켓컬리 유튜브 바로가기"></a>
</li>
<li>
<a href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg" class="link_sns lst" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_youtube.png" alt="마켓컬리 유튜브 바로가기"></a>
</li>
</ul>
</div>
</div>
<div class="footer_link">
<div class="authentication">
<a href="#none" onclick="popup('https://res.kurly.com/pc/img/1909/img_isms.jpg',550,700);return false;" class="mark" target="_blank">
<img src="https://res.kurly.com/pc/ico/2001/logo_isms.png" alt="isms 로고" class="logo">
<p class="txt">
[인증범위] 마켓컬리 쇼핑몰 서비스 개발 · 운영<br>
[유효기간] 2019.04.01 ~ 2022.03.31
</p>
</a>
<a href="#none" onclick="popup('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=EP&certNum=2021-EP-R003',527,720);return false;" class="mark" target="_blank">
<img src="https://res.kurly.com/pc/ico/2001/logo_eprivacyplus.png" alt="eprivacy plus 로고" class="logo">
<p class="txt">
개인정보보호 우수 웹사이트 ·<br>
개인정보처리시스템 인증 (ePRIVACY PLUS)
</p>
</a>
<a href="#none" onclick="popup('http://pgweb.uplus.co.kr/ms/escrow/s_escrowYn.do?mertid=go_thefarmers',460,550);return false;" class="mark lguplus" target="_blank">
<img src="https://res.kurly.com/pc/service/main/2009/logo_payments.png" alt="payments 로고" class="logo">
<p class="txt">
고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한<br>
토스 페이먼츠 구매안전(에스크로) 서비스를 이용하실 수 있습니다.
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

<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank" style="display:none;width:100%;height:600px;"></iframe>
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
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"NRJS-5dec146893a58b07e31","applicationID":"602251426","transactionName":"MlZUZhdUXkoCAkBQDQscY0AMGkNRDBEbSgcXRV9RABpWWBJPRFES","queueTime":0,"applicationTime":38,"atts":"HhFXEF9OTUQ=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>