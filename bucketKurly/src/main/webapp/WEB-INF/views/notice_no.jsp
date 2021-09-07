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
<link rel="stylesheet" href="resources/notice_no.css">
<!-- 공통 스타일 시트 -->
<link rel="stylesheet" href="resources/common.css">
<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp" type="image/x-icon">

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
<script type="text/javascript" src="https://res.kurly.com/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
history.back = function() {
    var step = (document.location.protocol == 'https:' ? 2 : 1) * -1;
    history.go( step );
}
</script>
<link rel="shortcut icon" href="https://res.kurly.com/images/marketkurly/logo/favicon_v2.png" type="image/x-icon">
<link rel="apple-touch-icon" sizes="57x57" href="https://res.kurly.com/images/marketkurly/logo/ico_57.png">
<link rel="apple-touch-icon" sizes="60x60" href="https://res.kurly.com/images/marketkurly/logo/ico_60.png">
<link rel="apple-touch-icon" sizes="72x72" href="https://res.kurly.com/images/marketkurly/logo/ico_72.png">
<link rel="apple-touch-icon" sizes="76x76" href="https://res.kurly.com/images/marketkurly/logo/ico_76.png">
<link rel="apple-touch-icon" sizes="114x114" href="https://res.kurly.com/images/marketkurly/logo/ico_114.png">
<link rel="apple-touch-icon" sizes="120x120" href="https://res.kurly.com/images/marketkurly/logo/ico_120.png">
<link rel="apple-touch-icon" sizes="144x144" href="https://res.kurly.com/images/marketkurly/logo/ico_144.png">
<link rel="apple-touch-icon" sizes="152x152" href="https://res.kurly.com/images/marketkurly/logo/ico_152.png">
<link rel="apple-touch-icon" sizes="180x180" href="https://res.kurly.com/images/marketkurly/logo/ico_180.png">
<link rel="icon" type="image/png" sizes="32x32" href="https://res.kurly.com/images/marketkurly/logo/ico_32.png">
<link rel="icon" type="image/png" sizes="192x192" href="https://res.kurly.com/images/marketkurly/logo/ico_192.png">
<link rel="icon" type="image/png" sizes="16x16" href="https://res.kurly.com/images/marketkurly/logo/ico_16.png">
<script>
sessionStorage.setItem('user_no', '')
sessionStorage.setItem('apiDomainV2', '')

var jwtToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiNzA2ZDViYzctOTcyYS00ZGY0LTllOTEtZDAxZDA3NTkyMDgzIiwiaXNfZ3Vlc3QiOnRydWUsInV1aWQiOm51bGwsIm1fbm8iOm51bGwsIm1faWQiOm51bGwsImxldmVsIjpudWxsLCJzdWIiOm51bGwsImlzcyI6Imh0dHA6Ly9ta3dlYi5hcGkua3VybHkuc2VydmljZXMvdjMvYXV0aC9ndWVzdCIsImlhdCI6MTYzMDg0MDM5OSwiZXhwIjoxNjMwODQzOTk5LCJuYmYiOjE2MzA4NDAzOTksImp0aSI6IlNPRFNkNlE5ejFLOHhSUGkifQ.iYAIBh-VBXzu-e5e8iFJMJlUjp53eeWJTHaJ8NI3GkM';
var apiDomain = 'https://api.kurly.com';
var GD_ISMEMBER = !!Number('0');
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
<script type="text/javascript" src="/shop/lib/js/naverCommonInflowScript.js?Path=board/view.php&amp;Referer=&amp;AccountID=s_4f41b5625072&amp;Inflow=" id="naver-common-inflow-script"></script>


<script async src="https://www.googletagmanager.com/gtag/js?id=G-2K2GN0FFY0"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-2K2GN0FFY0', {
    'user_id' : '706d5bc7-972a-4df4-9e91-d01d07592083'
  });
</script>

<style>.async-hide { opacity: 0 !important} </style>
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
	amplitudeUid = '706d5bc7-972a-4df4-9e91-d01d07592083';
}
var appResult = {
	is_release_build: false,
	is_sess: false, // 로그인 유무
  isSession: false,
	appCheck: false,
	device: 'pc',
  timestamp: parseInt("1630840399712", 10)
}

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
    membership_level: '',
    cust_no: Number(''),
  };
  KurlyTracker.setUserProperties(userProperties);
</script>



<script src="/common_js/kurlytracker/facebookConversions.js?ver=1.39.4"></script>

<script src="/asset/js/useKurly/kurlyAPI.bundle.js"></script>
</head>
<body class="board-view" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection">


<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<div id="wrap" class="">
<div id="pos_scroll"></div>
<div id="container">
<div id="header"><script>
  // ie10 이하 페이지 이동
  var ieCheckAgent = navigator.userAgent.toLowerCase();
  if ( (navigator.appName === 'Netscape' && navigator.userAgent.search('Trident') !== -1) || (ieCheckAgent.indexOf("msie") !== -1) ) {
    if(navigator.appName !== 'Netscape'){
      location.href = "/shop/event/browserUpdate.php";
    }
  }
</script>

<div class="bnr_header" id="top-message">


<a href="https://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/join/join_210825" id="eventLanding">
지금 가입하고 인기상품 <b>100원</b>에 받아가세요!<img src="https://res.kurly.com/pc/ico/1908/ico_arrow_fff_84x84.png" class="bnr_arr">
<div class="bnr_top">
<div class="inner_top_close">
<button id="top-message-close" class="btn_top_bnr">가입하고 혜택받기</button>
</div>
</div>
</a>
<script>
        // PROM-476 장차석 : GA) 이벤트 트래킹
        $('#eventLanding').on('click', function(){
          ga('send', 'event', 'click', 'general_header_sighup', location.href);
        });
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
<user-menu-pc :login-check="loginCheck" :notification-item="notificationItem" :user-info="userInfo" :return-url="returnUrl"></user-menu-pc>
</div>
<script src="/common_js/usermenu_v1.js?ver=1.39.4"></script>
<script>
    $(document).ready(function(){

      userMenu.loginCheck = false;

      // KMF-587 대량주문관련 개선 요청: 추후제거
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
<a href="/" class="link_main">
<span id="gnbLogoContainer"></span>
<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bucketKurly.png" alt="마켓컬리 로고">
</a>
</h1>
<a href="/shop/board/view.php?id=notice&no=64" onclick="ga('send','event','etc','main_gif_btn_click');" class="bnr_delivery">
<img src="https://res.kurly.com/pc/service/common/2011/delivery_210801.png" alt="샛별, 택배 배송안내" width="121" height="22">
</a>
</div>
<div id="gnb">
<h2 class="screen_out">메뉴</h2>
<div id="gnbMenu" class="gnb_kurly">
<div class="inner_gnbkurly">
<div class="gnb_main">
<ul class="gnb">
<li class="menu1"><a href="#none"><span class="ico"></span><span class="txt">전체 카테고리</span></a></li>
<li class="menu2"><a class="link new " href="/shop/goods/goods_list.php?category=038"><span class="txt">신상품</span></a></li>
<li class="menu3"><a class="link best " href="/shop/goods/goods_list.php?category=029"><span class="txt">베스트</span></a></li>
<li class="menu4"><a class="link bargain " href="/shop/goods/goods_list.php?list=sale"><span class="txt">알뜰쇼핑</span></a></li>
<li class="lst"><a class="link event " href="/shop/goods/event.php?&"><span class="txt">특가/혜택</span></a></li>
</ul>
<div id="side_search" class="gnb_search">
<form action="/shop/goods/goods_search.php?&" onsubmit="return searchTracking(this)">
<input type=hidden name=searched value="Y">
<input type=hidden name=log value="1">
<input type=hidden name=skey value="all">
<input type="hidden" name="hid_pr_text" value="">
<input type="hidden" name="hid_link_url" value="">
<input type="hidden" id="edit" name="edit" value="">
<input name="sword" type="text" id="sword" class="inp_search" value="" required label="검색어" placeholder="검색어를 입력해주세요.">
<input type=image src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png" class="btn_search">
<div class="init">
<button type="button" class="btn_delete" id="searchInit">검색어 삭제하기</button>
</div>
</form>
<script>
            // KM-1483 Amplitude 연동
            function searchTracking(form){
              var searchCharacter = $(form).find('[name = sword]').val();
              searchCharacter = searchCharacter.replace(/\"/gi, "");
              var _searchTrackingData = {
                selection_type : 'keyword',
                keyword : searchCharacter,
                package_id : null,
                package_name : null,
                position : null,
              }
              KurlyTracker.setEventInfo(_searchTrackingData.selection_type);
              KurlyTracker.setAction('select_search', _searchTrackingData).sendData();
              return chkForm(form);
            }
          </script>
</div>
<div class="cart_count">
<div class="inner_cartcount">
<a href="/shop/goods/goods_cart.php" class="btn_cart">
<span class="screen_out">장바구니</span>
<span class="num realtime_cartcount" id="cart_item_count"></span> </a>
</div>
<div id="addMsgCart" class="msg_cart">
<span class="point"></span>
<div class="inner_msgcart">
<img src="https://res.kurly.com/images/common/bg_1_1.gif" alt="" class="thumb">
<p id="msgReaddedItem" class="desc">
<span class="tit"></span>
<span class="txt">
장바구니에 상품을 담았습니다.
<span class="repeat">이미 담으신 상품이 있어 추가되었습니다.</span>
</span>
</p>
</div>
</div>
</div>
<div class="location_set">
<button type="button" class="btn_location on">배송지 설정하기</button>
<div class="layer_location" style="display:none"></div>
</div>
<script src="/asset/js/myp/destination/popup.bundle.js?ver=1.39.4"></script>
</div>
<div class="gnb_sub">
<div class="inner_sub">
<ul class="gnb_menu" data-default="219" data-min="219" data-max="731">
<gnb-menu-pc v-for="(item, idx) in dataGnb" :main-menu="item" :sub-menu="item.categories" :sub-open="item.subOpen" :get-category-num="getCategoryNum" :key="'gnb'+idx" :idx="idx"></gnb-menu-pc>
</ul>
</div>
</div>
</div>
</div>
</div>
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

<div class="tit_page">
<h2 class="tit">공지사항</h2>
<p class="sub">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</p>
</div>
</div>
<div id="main">
<div id="content">

<div id="qnb" class="quick-navigation">

<div class="bnr_qnb" id="brnQuick"></div>
<script>
    var brnQuick = {
        nowTime : '1630840399733',
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
    var i, len, getGoodsRecent, item, _nowTime = '1630840399733';

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
<div class="layout-wrapper">
<div class="xans-element- xans-myshop xans-myshop-couponserial ">
<table width=100% align=center cellpadding=0 cellspacing=0>
<tr>
<td>
<table width=100%>
<tr>
<td>
<table class="boardView" width=100%>
<tr>
<th scope="row" style="border:none;">제목</th>
<td>게시슬 상세 view 테스트 문구</td>
</tr>
<tr>
<th scope="row">작성자</th>
<td>test</td>
</tr>
<tr class="etcArea">
<td colspan="2">
<ul>
<li class="date ">
<strong class="th">작성일</strong> <span class="td">날짜</span>
<!-- <span class="td" fmt:formatDate value="${data.date}" pattern="yyyy-MM-dd" /> -->
</li>
<li class="hit ">
<strong class="th">조회수</strong> <span class="td">647</span>
</li>
</ul>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align=right class=eng style="padding:5px;">
</td>
</tr>
<tr>
<td style="padding:10px;" height=200 valign=top id=contents>
<table width=100% style="table-layout:fixed">
<tr>
<td class="board_view_content" style="word-wrap:break-word;word-break:break-all" valign=top>
<p>게시글 상세 내용 테스트 글입니다.</p>
</td>
</tr>
</table>
</td>
</tr>
<tr><td height=1 bgcolor="#f4f4f4"></td></tr>
</table><br>
<table width=100% style="table-layout:fixed" cellpadding=0 cellspacing=0>
<tr>
<td align=center style="padding-top:10px;">
<table width=100%>
<tr>
<td align=right>
<a href="list.php?id=notice"><span class="bhs_button yb" style="float:none;">목록</span></a>
</td>
</tr>
</table>
</td>
</tr>
</table>
<div class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 "><ul>
<li class="prev ">
<strong>이전글</strong><a href="/board/free/read.html?no=27121&amp;board_no=1&amp;page="><a href="view.php?id=notice&no=1037">[가격인상공지] [풀무원] 고소한 유부초밥 외 6건 (2021. 9. 2 ~)</a>
</li>
<li class="next ">
<strong>다음글</strong><a href="/board/free/read.html?no=22443&amp;board_no=1&amp;page="><a href="view.php?id=notice&no=1039">[마켓컬리] 근무자 코로나19 확진 관련 안내</a>
</li>
</ul>
</div>
<br><table width=100% cellpadding=5 cellspacing=0>
<col width=100 align=right bgcolor=#f7f7f7 style="padding-right:10px">
<col style="padding-left:10px">
</table><p>
<br><textarea id=examC_1038 style="display:none;width:100%;height:300px">&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;안녕하세요 고객님, 마켓컬리입니다.&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;; min-height: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;font face=&quot;Helvetica Neue&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;[마켓컬리] 갤럭시 Z폴드/플립3 사전예약 &amp;amp; 찜하기 이벤트에 참여해주신 모든 고객님들께 감사의 말씀 전하며, 아래와 같이 당첨자와 당첨 제공품 안내 드립니다.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;■&amp;nbsp;&lt;/span&gt;&lt;b&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;당첨자&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;명단&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;&lt;img src=&quot;//img-cf.kurly.com/shop/data/editor/9a4a81774406d22d.png&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;■&amp;nbsp;&lt;/span&gt;&lt;b&gt;상품&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;안내&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;font face=&quot;Helvetica Neue&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;상품 당첨자께는 금주(~9/3) 중 개별 연락으로 경품 발송 관련 내용을 안내해 드리겠습니다.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;font face=&quot;Helvetica Neue&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;적립금 당첨자께는 익일(9/1) 내로 적립금 별도 지급 예정입니다.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;font face=&quot;Helvetica Neue&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;다시&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;한&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;번&amp;nbsp;&lt;/span&gt;&lt;font face=&quot;Apple SD Gothic Neo&quot;&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;[마켓컬리] 갤럭시 Z폴드/플립3 사전예약 &amp;amp; 찜하기 이벤트&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;에&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;참여해주신&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;모든&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;고객님들께&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;감사드립니다&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;;&quot;&gt;마켓컬리&lt;span style=&quot;font-stretch: normal; line-height: normal; font-family: &amp;quot;Helvetica Neue&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;드림&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; min-height: 14px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Apple SD Gothic Neo&amp;quot;; font-size: 12px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;br&gt;</textarea>
</td></tr></table>
</div>
<script>
// KM-1483 Amplitude
KurlyTracker.setScreenName('notice_detail');
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
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"NRJS-5dec146893a58b07e31","applicationID":"602251426","transactionName":"MlZUZhdUXkoCAkBQDQscY0AMGkNRDBEbWw0EQVIdE1xVTk0RXEk=","queueTime":0,"applicationTime":91,"atts":"HhFXEF9OTUQ=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html><script>
    if (document.getElementById('examC_1038') && document.getElementById('contents_1038') ) document.getElementById('contents_1038').innerHTML = document.getElementById('examC_1038').value;
</script>
