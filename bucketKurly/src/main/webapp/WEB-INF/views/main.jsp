<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="title" content="버켓컬리 :: 내일의 장보기, 버켓컬리44" />
<meta name="description" content="Love Food, Love Life. 버켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<!--  
<meta property="og:title" content="버켓컬리 :: 내일의 장보기, 마켓컬리66" />
<meta property="og:description" content="Love Food, Love Life. 버켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg" />
<meta property="og:url" content="https://www.kurly.com/shop/main/index.php?" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="www.kurly.com" />-->
<meta name="keywords" content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식" />
<title>버켓컬리 :: 내일의 장보기, 버켓컬리</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<meta name="naver-site-verification" content="58ff7c242d41178131208256bfec0c2f93426a1d" />
<meta name="facebook-domain-verification" content="tyur3wmoos7t63tpkb7zosur6p98m1" />


<!-- 외부 스타일 시트 삽입 -- css만 따로 뻇습니다! -->
<link rel="stylesheet" href="resources/style.css">
<link rel="shortcut icon" href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp" type="image/x-icon">

</head>
<body class="main-index" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection" style="">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	
	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">
			<div id="header">
	
				<div class="bnr_header" id="top-message">
					<a
						href="https://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/join/join_210825"
						id="eventLanding"> 지금 가입하고 인기상품 <b>100원</b>에 받아가세요!<img
						src="https://res.kurly.com/pc/ico/1908/ico_arrow_fff_84x84.png"
						class="bnr_arr">
						<div class="bnr_top">
							<div class="inner_top_close">
								<button id="top-message-close" class="btn_top_bnr">가입하고 혜택받기</button>
							</div>
						</div>
					</a>
					
					<script>
						// PROM-476 장차석 : GA) 이벤트 트래킹
						$('#eventLanding').on(
								'click',
								function() {
									ga('send', 'event', 'click',
											'general_header_sighup',
											location.href);
								});
					</script>
				</div>
				<script type="text/javascript">
					$(document).ready(function() {
						$("#top-message-close").on("click", function() {
							setCookie('top_msg_banner2', 'set_cookie', 1)
						});
						if (getCookie('top_msg_banner2') == 'set_cookie') {
							$("#top-message").hide()
						} else {
							$("#top-message").show();
						}
					});

					function setCookie(cookieName, value, exdays) {
						var exdate = new Date();
						exdate.setDate(exdate.getDate() + exdays);
						var cookieValue = escape(value)
								+ ((exdays == null) ? "" : "; expires="
										+ exdate.toGMTString());
						document.cookie = cookieName + "=" + cookieValue
								+ "; path=/;"
					}

					function getCookie(cookieName) {
						cookieName = cookieName + '=';
						var cookieData = document.cookie;
						var start = cookieData.indexOf(cookieName);
						var cookieValue = '';
						if (start != -1) {
							start += cookieName.length;
							var end = cookieData.indexOf(';', start);
							if (end == -1)
								end = cookieData.length;
							cookieValue = cookieData.substring(start, end);
						}
						return unescape(cookieValue);
					}
				</script>
		
				<div id="userMenu">
					<ul class="list_menu">
						<li class="menu none_sub menu_join" >
						<a  href="/shop/member/join.php" class="link_menu">회원가입</a></li>
						<li class="menu none_sub menu_login">
						<a href="/shop/member/login.php" class="link_menu">로그인</a> <!----></li>
						<!---->
						<li  class="menu lst">
						<a href="/shop/board/list.php?id=notice" class="link_menu">고객센터</a>
							<ul class="sub">
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_my_kurly_notice_list')">공지사항</a></li>
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_my_kurly_frequently_qna')">자주하는
										질문</a></li>
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_my_kurly_personal_inquiry_history')">1:1
										문의</a></li>
								<!---->
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/mypage/offer.php', 'select_my_kurly_product_offer')">상품
										제안</a></li>
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/mypage/echo_packing.php', 'select_my_kurly_eco_packing_feedback')">에코포장
										피드백</a></li>
							</ul></li>
					</ul>
				</div>
				<script src="common_js/usermenu_v1.js"></script>
				<script>
					$(document).ready(function() {

						userMenu.loginCheck = false;
					});
				</script>

				<div id="headerLogo" class="layout-wrapper">
					<h1 class="logo">
						<a href="/" class="link_main"> <span id="gnbLogoContainer"></span>
							<img
							src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bucketKurly.png"
							alt="마켓컬리 로고" style="display: block;">
						</a>
					</h1>
					<a href="/shop/board/view.php?id=notice&amp;no=64"
						onclick="ga('send','event','etc','main_gif_btn_click');"
						class="bnr_delivery"> <img
						src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%83%9B%EB%B3%84_+%ED%83%9D%EB%B0%B0+%EB%B0%B0%EC%86%A1%EC%95%88%EB%82%B4.png"
						alt="샛별, 택배 배송안내" width="121" height="22">
					</a>
				</div>
				<div id="gnb" class="">
					<h2 class="screen_out">메뉴</h2>
					<div id="gnbMenu" class="gnb_kurly">
						<div class="inner_gnbkurly">
							<div class="gnb_main">
								<ul class="gnb">
									<li class="menu1"><a href="#none"><span class="ico"></span><span
											class="txt">전체 카테고리</span></a></li>
									<li class="menu2"><a
										href="/shop/goods/goods_list.php?category=038"
										class="link new "><span class="txt">신상품</span></a></li>
									<li class="menu3"><a
										href="/shop/goods/goods_list.php?category=029"
										class="link best "><span class="txt">베스트</span></a></li>
									<li class="menu4"><a
										href="/shop/goods/goods_list.php?list=sale"
										class="link bargain "><span class="txt">알뜰쇼핑</span></a></li>
									<li class="lst"><a href="/shop/goods/event.php?&amp;"
										class="link event "><span class="txt">특가/혜택</span></a></li>
								</ul>
								<div id="side_search" class="gnb_search">
									<form action="/shop/goods/goods_search.php?&amp;"
										onsubmit="return searchTracking(this)">
										<input type="hidden" name="searched" value="Y"> <input
											type="hidden" name="log" value="1"> <input
											type="hidden" name="skey" value="all"> <input
											type="hidden" name="hid_pr_text" value=""> <input
											type="hidden" name="hid_link_url" value=""> <input
											type="hidden" id="edit" name="edit" value=""> <input
											name="sword" type="text" id="sword" value=""
											required="required" label="검색어" placeholder="검색어를 입력해주세요."
											class="inp_search"> <input type="image"
											src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
											class="btn_search">
										<div class="init">
											<button type="button" id="searchInit" class="btn_delete">검색어 삭제하기</button>
										</div>
									</form>
								</div>
								<div class="cart_count">
									<div class="inner_cartcount">
										<a href="/shop/goods/goods_cart.php" class="btn_cart"><span
											class="screen_out">장바구니</span> <span id="cart_item_count"
											class="num realtime_cartcount" style="display: none;"></span></a>
									</div>
									<div id="addMsgCart" class="msg_cart">
										<span class="point"></span>
										<div class="inner_msgcart">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_1_1.gif"
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
											<span class="emph">배송지를 등록</span>하고<br> 구매 가능한 상품을
											확인하세요!
											<div class="group_button double">
												<button type="button" class="btn default login">로그인</button>
												<button type="button" class="btn active searchAddress">
													<span class="ico"></span>주소검색
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="gnb_sub">
								<div class="inner_sub">
									<ul data-default="219" data-min="219" data-max="731"
										class="gnb_menu" style="height: auto;">
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(2).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98.png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">추석 선물세트</span> <span class="ico_new"
													style="background-image: url(&quot;https://res.kurly.com/pc/service/common/1908/ico_new_42x42_v2.png&quot;);">new</span></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">===
															카테고리별 ===</span></a> <!----></li>
												<li><a class="sub"><span class="name">홍삼·즙·건강식품</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">정육·가공육·건육</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">수산·건어물·젓갈</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">과일·견과·곡류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">디저트·치즈·다과류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">면·양념·오일·캔류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">생활·주방·뷰티</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">간편식·반찬</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">===
															가격대별 ===</span></a> <!----></li>
												<li><a class="sub"><span class="name">20만원
															이상</span></a> <!----></li>
												<li><a class="sub"><span class="name">10-20만원</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">5-10만원</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">3-5만원</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">3만원 미만</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(1).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(3).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">채소</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">친환경</span></a> <!----></li>
												<li><a class="sub"><span class="name">고구마·감자·당근</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">시금치·쌈채소·나물</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">브로콜리·파프리카·양배추</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">양파·대파·마늘·배추</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">오이·호박·고추</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">냉동·이색·간편채소</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">콩나물·버섯</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(4).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(5).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">과일·견과·쌀</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">친환경</span></a> <!----></li>
												<li><a class="sub"><span class="name">제철과일</span></a> <!----></li>
												<li><a class="sub"><span class="name">국산과일</span></a> <!----></li>
												<li><a class="sub"><span class="name">수입과일</span></a> <!----></li>
												<li><a class="sub"><span class="name">간편과일</span></a> <!----></li>
												<li><a class="sub"><span class="name">냉동·건과일</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">견과류</span></a> <!----></li>
												<li><a class="sub"><span class="name">쌀·잡곡</span></a> <!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(6).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(7).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">수산·해산·건어물</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">제철수산</span></a> <!----></li>
												<li><a class="sub"><span class="name">생선류</span></a> <!----></li>
												<li><a class="sub"><span class="name">굴비·반건류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">오징어·낙지·문어</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">새우·게·랍스터</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">해산물·조개류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">수산가공품</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">김·미역·해조류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">건어물·다시팩</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(8).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(9).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">정육·계란</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">국내산
															소고기</span></a> <!----></li>
												<li><a class="sub"><span class="name">수입산
															소고기</span></a> <!----></li>
												<li><a class="sub"><span class="name">돼지고기</span></a> <!----></li>
												<li><a class="sub"><span class="name">계란류</span></a> <!----></li>
												<li><a class="sub"><span class="name">닭·오리고기</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">양념육·돈까스</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">양고기</span></a> <!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(10).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(12).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">국·반찬·메인요리</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">국·탕·찌개</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">밀키트·메인요리</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">밑반찬</span></a> <!----></li>
												<li><a class="sub"><span class="name">김치·젓갈·장류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">두부·어묵·부침개</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">베이컨·햄·통조림</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(11).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(13).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">샐러드·간편식</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">샐러드·닭가슴살</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">도시락·밥류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">파스타·면류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">떡볶이·튀김·순대</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">피자·핫도그·만두</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">폭립·떡갈비·안주</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">죽·스프·카레</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">선식·시리얼</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(14).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(15).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">면·양념·오일</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">파스타·면류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">식초·소스·드레싱</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">양념·액젓·장류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">식용유·참기름·오일</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">소금·설탕·향신료</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">밀가루·가루·믹스</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(16).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(17).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">생수·음료·우유·커피</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">생수·탄산수</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">음료·주스</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">우유·두유·요거트</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">커피</span></a> <!----></li>
												<li><a class="sub"><span class="name">차</span></a> <!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(18).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(19).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">간식·과자·떡</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">과자·스낵·쿠키</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">초콜릿·젤리·캔디</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">떡·한과</span></a> <!----></li>
												<li><a class="sub"><span class="name">아이스크림</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(20).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(21).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">베이커리·치즈·델리</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">식빵·빵류</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">잼·버터·스프레드</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">케이크·파이·디저트</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">치즈</span></a> <!----></li>
												<li><a class="sub"><span class="name">델리</span></a> <!----></li>
												<li><a class="sub"><span class="name">올리브·피클</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(22).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(23).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">건강식품</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">영양제</span></a> <!----></li>
												<li><a class="sub"><span class="name">유산균</span></a> <!----></li>
												<li><a class="sub"><span class="name">홍삼·인삼·꿀</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">건강즙·건강음료</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">건강분말·건강환</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">다이어트·이너뷰티</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">유아동</span></a> <!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(24).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(25).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">생활용품·리빙</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">휴지·티슈</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">여성·위생용품</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">세제·청소용품</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">화훼·인테리어소품</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">의약외품·마스크</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">생활잡화·문구</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">캠핑용품</span></a> <!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(26).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(27).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">스킨케어·메이크업</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">스킨·미스트·패드</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">에센스·앰플·로션</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">크림·오일</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">클렌징</span></a> <!----></li>
												<li><a class="sub"><span class="name">마스크팩</span></a> <!----></li>
												<li><a class="sub"><span class="name">선케어</span></a> <!----></li>
												<li><a class="sub"><span class="name">메이크업</span></a> <!----></li>
												<li><a class="sub"><span class="name">맨즈케어</span></a> <!----></li>
												<li><a class="sub"><span class="name">뷰티소품·기기</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(28).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(29).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">헤어·바디·구강</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">구강·면도</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">샴푸·컨디셔너</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">트리트먼트·팩</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">헤어에센스·염모</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">바디워시·스크럽</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">바디로션·크림</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">핸드·립·데오</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">헤어·바디소품</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(30).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(31).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">주방용품</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">주방소모품·잡화</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">주방·조리도구</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">냄비·팬·솥</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">보관용기·텀블러</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">식기·테이블웨어</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">컵·잔·커피도구</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(32).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(33).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">가전제품</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">주방가전</span></a> <!----></li>
												<li><a class="sub"><span class="name">생활가전</span></a> <!----></li>
												<li><a class="sub"><span class="name">계절가전</span></a> <!----></li>
												<li><a class="sub"><span class="name">디지털·PC</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">대형·설치가전</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(34).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(35).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">베이비·키즈</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">분유·간편
															이유식</span></a> <!----></li>
												<li><a class="sub"><span class="name">이유식 재료</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">간식·음식·음료</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">건강식품</span></a> <!----></li>
												<li><a class="sub"><span class="name">이유·수유용품</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">기저귀·물티슈</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">세제·위생용품</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">스킨·구강케어</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">완구·잡화류</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(36).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(37).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">반려동물</span> <!----></span></a>
											<ul class="sub_menu">
												<li><a class="sub"><span class="name">강아지 간식</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">강아지 주식</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">고양이 간식</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">고양이 주식</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">반려동물
															용품</span></a> <!----></li>
												<li><a class="sub"><span class="name">배변·위생</span></a>
													<!----></li>
												<li><a class="sub"><span class="name">소용량·샘플</span></a>
													<!----></li>
											</ul></li>
										<li><a class="menu"><span class="ico"><img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(38).png"
													alt="카테고리 아이콘" class="ico_off"> <img
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(39).png"
													alt="카테고리 아이콘" class="ico_on"></span> <span class="tit"><span
													class="txt">컬리의 추천</span> <!----></span></a>
											<ul class="sub_menu recommend">
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/category/image/f1fbbe98-127b-4586-b653-9caa932fa238&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">호텔 예약</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_cool_summer.1621587831.png&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">시원한 여름</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_diet.1585551225.jpg&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">식단관리</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_breakfast.1585549149.jpg&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">간편한 아침식사</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_best_210402.1617341016.png&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">재구매 BEST</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_3000_210303.1614667552.png&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">3천원의 행복</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kp_210108_4.1610088265.jpg&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">컬리마트</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/category/image/37194cb5-e9c1-4492-ac5a-385a1ff2b624&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">대용량 상품</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_camping_210405.1617341339.png&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">캠핑</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_single.1594026881.jpg&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">1인 가구</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_vegan_210303.1614667589.png&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">비건</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_offline_210303.1614666430.png&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">오프라인 맛집</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kurly_s_210303.1614667608.png&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">컬리가 만든 상품</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_only_210303.1614667623.png&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">Kurly Only</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/category/image/f8cf5fe6-4123-4147-981e-d7f889f9e316&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">KF365</span></a>
												</li>
												<li>
													<!----> <a class="sub"><span class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumb_kp_1PT_201222.1608611417.jpg&quot;);"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"
															alt=""></span> <span class="name">1% Table</span></a>
												</li>
											</ul></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script src="/common_js/gnb_v1.js?ver=1.38.2"></script>
				<script type="text/javascript">
					//
					gnbMenu.update();

					// 검색창 클래스 추가/삭제
					var searchInputAction = (function() {
						var $target = {};

						var _searchInputAction = {
							setSeletor : function() {
								$target = {
									$parent : $('#gnb'),
									$search : $('#gnb [name=sword]'),
									$deleteBtn : $('#searchInit'),
									$edit : $('#edit')
								}

								this.setAction();
							},
							setAction : function() {
								var that = this;
								$target.$search.focus(
										function() {
											that.changeClass($target.$search,
													'add', 'focus');
											that.deleteCheck();
										}).blur(
										function() {
											that.changeClass($target.$search,
													'remove', 'focus');
											that.deleteCheck(false);
										}).on('keyup', function() {
									if ($target.$edit.val() !== 'Y') {
										$target.$edit.val('Y');
									}
									that.deleteCheck();
								});

								$target.$deleteBtn.on('click', function() {
									$target.$search.val('');
									that.deleteCheck();
								});
							},
							deleteCheck : function(type) {
								var that = this, count = $.trim($target.$search
										.val()).length;
								if (count === 0
										|| (typeof type !== 'undefined' && !type)) {
									that.changeClass($target.$deleteBtn,
											'remove', 'on');
								} else {
									that.changeClass($target.$deleteBtn, 'add',
											'on');
								}
							},
							changeClass : function(target, type, className) {
								if (type === 'add') {
									target.addClass(className);
								} else {
									target.removeClass(className);
								}
							}
						}

						_searchInputAction.setSeletor();
					})();

					// 로고 클릭 이벤트
					$('#header .link_main').on('click', function(e) {
						e.preventDefault();
						var url = $(this).attr('href');
						if (url.indexOf('/') === 0) {
							url = window.location.origin + url;
						}

						KurlyTracker.setAction('select_main_logo', {
							"url" : url
						}).sendData();
						location.href = url;
					});

					$('#gnb .gnb .link')
							.on(
									'click',
									function(e) {
										e.preventDefault();
										var _event_name, _event_info;
										if ($(this).hasClass('new')) {
											_event_name = 'select_new_product_subtab';
										} else if ($(this).hasClass('best')) {
											_event_name = 'select_popular_product_subtab';
										} else if ($(this).hasClass('bargain')) {
											_event_name = 'select_bargain_subtab';
										} else if ($(this).hasClass('event')) {
											_event_name = 'select_event_list_subtab';
										}
										_event_info = $(this).attr('href');

										KurlyTracker.setEventInfo(_event_info)
												.setAction(_event_name)
												.sendData();
										location.href = _event_info;
									});

					// 장바구니 아이콘 클릭이벤트
					$('#gnbMenu .btn_cart').on('click', function(e) {
						e.preventDefault();
						KurlyTracker.setAction('select_cart').sendData();
						location.href = $(this).attr('href');
					});
				</script>
			</div>
			<div id="main">
				<div id="content">

					<div id="qnb" class="quick-navigation" style="top: 516px;height: 215px;">
					<script>
					  var quick_navigation = $('#quick-navigation');
					  var quick_top = 470;
					  
					  quick_navigation.css('top', $(window).height());
					  $(document).ready(fuction(){
						  quick_navigation.animate({"top": $(document).scrollTop() + quick_top + "px"}, 200);
						  $(window).scroll(function(){
							  quick_navigation.stop();
							  quick_navigation.animate({"top": $(document).scrollTop() + quick_top + "px"}, 500)
						  });
					  });
					</script>

						<div class="bnr_qnb" id="brnQuick">
							<a href="/shop/board/view.php?id=notice&amp;no=64"
								id="brnQuickObj"> <img class="thumb"
								src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%ED%80%84%EB%A6%AC%ED%8B%B0%EC%9E%88%EA%B2%8C+%EC%83%9B%EB%B3%84%EB%B0%B0%EC%86%A1.png"
								alt="퀄리티있게 샛별배송">
							</a>
							<script>
								var brnQuickScript = (function() {
									var $target = $('#brnQuickObj'), $targetThumb = $('#brnQuickObj .thumb');
									// 시간체크
									function timeCheck() {
										var now = brnQuick.nowTime; // 호출 하는 js에서 변수선언되어 가져다 사용
										if (new Date(
												'2020-12-31T11:00:00+09:00')
												.getTime() <= now
												&& now < new Date(
														'2021-01-15T11:00:00+09:00')
														.getTime()) {
											$target
													.attr('href',
															'/shop/event/kurlyEvent.php?htmid=event/2020/1231/newyearsday');
											$targetThumb
													.attr('src',
															'https://res.kurly.com/pc/service/main/2012/bnr_quick.png');
											$targetThumb.attr('alt',
													'2021 설 선물');
										} else if (new Date(
												'2021-01-15T11:00:00+09:00')
												.getTime() <= now
												&& now <= new Date(
														'2021-02-10T23:00:00+09:00')
														.getTime()) {
											$target
													.attr('href',
															'/shop/event/kurlyEvent.php?htmid=event/2021/0115/newyearsday');
											$targetThumb
													.attr('src',
															'https://res.kurly.com/pc/service/main/2101/bnr_quick.png');
											$targetThumb.attr('alt',
													'2021 설 선물');
										}
									}
									return {
										timeCheck : timeCheck
									}
								})();
								brnQuickScript.timeCheck();
							</script>


						</div>
						<script>
							var brnQuick = {
								nowTime : '1630222562334',
								update : function() {
									$
											.ajax(
													{
														url : campaginUrl
																+ 'pc/service/bnr_quick.html'
													}).done(function(result) {
												$('#brnQuick').html(result);
											});
								}
							}
							brnQuick.update();
						</script>

						<div class="side_menu">
							<a
								href="/shop/main/html.php?htmid=event/kurly.htm&amp;name=lovers"
								class="link_menu ">등급별 혜택</a> <a
								href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a>
							<a href="/shop/goods/goods_review_best.php" class="link_menu ">베스트
								후기</a>
						</div>
						<div class="side_recent" style="display: none">
							<strong class="tit">최근 본 상품</strong>
							<div class="list_goods" data-height="209" style="height: 0px;">
								<ul class="list"></ul>
							</div>
							<button type="button" class="btn btn_up off">최근 본 상품 위로
								올리기</button>
							<button type="button" class="btn btn_down off">최근 본 상품
								아래로 내리기</button>
						</div>
						<script>
							/**
							 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
							 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
							 */
							var getGoodsRecent = (function() {
								var i, len, getGoodsRecent, item, _nowTime = '1630222562334';

								_goodsRecent();
								function _goodsRecent() {
									if (localStorage.getItem('goodsRecent') === null) {
										return false;
									}

									try {
										getGoodsRecent = JSON
												.parse(localStorage
														.getItem("goodsRecent"));
										len = getGoodsRecent.length;
										if (addDays(
												getGoodsRecent[len - 1].time, 1) < _nowTime) {
											localStorage
													.removeItem('goodsRecent');
										} else {
											for (i = 0; i < len; i++) {
												item = '<li><a class="link_goods" href="/shop/goods/goods_view.php?goodsno='
														+ getGoodsRecent[i].no
														+ '"><img src="' + getGoodsRecent[i].thumb + '" alt=""></a></li>';
												$('.side_recent .list').append(
														item);
											}
											$('.side_recent').show();
										}
									} catch (e) {
										console
												.log(
														"JSON parse error from the Quick menu goods list!!!",
														e);
									}
								}

								function addDays(date, days) {
									var result = new Date(date);
									result.setDate(result.getDate() + days);
									return result.getTime();
								}

								// return {
								// }
							})();
						</script>
					</div>

					<div id="mainNotice">
						<div id="mainNoticePop"></div>
					</div>
					<script src="/common_js/main_notice_v1.js?ver=1.38.2"></script>
					<script>
						mainNotice.type = 'pc';
					</script>



					<div id="kurlyMain" class="page_aticle page_main"
						style="opacity: 1;">
						<h2 class="screen_out">마켓컬리 메인</h2>
						<div>
							<div class="main_type1">
								<div class="list_goods">
									<div class="bx-wrapper"
										style="max-width: 100%; margin: 0px auto;">
										<div class="bx-viewport"
											style="width: 100%; overflow: hidden; position: relative; height: 370px;">
											<ul data-section="main_banner" class="list"
												style="width: 1515%; position: relative; transition-timing-function: ease-in-out; transition-duration: 0.5s; transform: translate3d(-6456px, 0px, 0px);">
												<li data-index="13"
													style="float: left; list-style: none; position: relative; width: 1076px;"
													class="bx-clone" data-name="main_banner"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1596164134.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="1"
													style="float: left; list-style: none; position: relative; width: 1076px;"
													data-name="main_banner"><a class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1628814309.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="2" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629898688.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="3" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629798099.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="4" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629681452.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="5" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1630056496.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="6" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629421493.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="7" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629027622.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="8" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629878990.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="9" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1628583839.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="10" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1628814309.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="11" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1621561009.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="12" data-name="main_banner"
													style="float: left; list-style: none; position: relative; width: 1076px;"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1583112495.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="13"
													style="float: left; list-style: none; position: relative; width: 1076px;"
													data-name="main_banner"><a class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1596164134.jpg&quot;);">메인배너</a>
													<!----></li>
												<li data-index="1"
													style="float: left; list-style: none; position: relative; width: 1076px;"
													class="bx-clone" data-name="main_banner"><a
													class="thumb_goods"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629880774.jpg&quot;);">메인배너</a>
													<!----></li>
											</ul>
										</div>
										<div
											class="bx-controls bx-has-controls-direction bx-has-controls-auto">
											<div class="bx-controls-direction">
												<a class="bx-prev" href="">Prev</a><a class="bx-next"
													href="">Next</a>
											</div>
											<div class="bx-controls-auto">
												<div class="bx-controls-auto-item">
													<a class="bx-start active" href="">Start</a>
												</div>
												<div class="bx-controls-auto-item">
													<a class="bx-stop" href="">Stop</a>
												</div>
											</div>
										</div>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div>
							<div class="main_type2">
								<div class="product_list">
									<div class="tit_goods">
										<h3 class="tit">
											<!---->
											<span class="name"> 이 상품 어때요? <!----></span>
										</h3>
									</div>
									<!---->
									<div class="list_goods">
										<div class="bx-wrapper"
											style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 506px;">
												<ul data-title="이 상품 어때요?"
													data-section="today_recommendation" class="list"
													style="width: 2215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li data-index="1" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1456402788121l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">감자</a></span> <span class="price"><span class="dc">35%</span>21,450원
															</span> <span class="cost">0원</span>
														</div></li>
													<li data-index="2" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1472727892110l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">닭가슴살 200g</a></span> <span
																class="price"><span class="dc">5%</span>0원 </span> <span
																class="cost">0원</span>
														</div></li>
													<li data-index="3" class="cut"
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1487148793685l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">모짜렐라 치즈</a></span> <span class="price">
																<!---->0원
															</span>
															<!---->
														</div></li>
													<li data-index="4" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1489978895649l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">비트</a></span> <span class="price"><span
																class="dc">20%</span>0원 </span> <span class="cost">0원</span>
														</div></li>
													<li data-index="5" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1502159554437l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">캠핑 어묵탕</a></span> <span class="price">
																<!---->4,990원
															</span>
															<!---->
														</div></li>
													<li data-index="6" class="cut"
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1503380535966l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">소고기 양지살</a></span> <span class="price"><span class="dc">5%</span>0원
															</span> <span class="cost">0원</span>
														</div></li>
													<li data-index="7" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1503380553152l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">소 불고기</a></span> <span class="price"><span class="dc">5%</span>0원
															</span> <span class="cost">0원</span>
														</div></li>
													<li data-index="8" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1518501305566l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">추억의 오란다</a></span> <span class="price">
																<!---->0원
															</span>
															<!---->
														</div></li>
													<li data-index="9" class="cut"
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1518511404883l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">참깨 꼬소봉</a></span> <span class="price"><span class="dc">5%</span>0원
															</span> <span class="cost">0원</span>
														</div></li>
													<li data-index="10" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1622166405389l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[상하목장] 마시는
																	유기농 요구르트 5개입</a></span> <span class="price"><span
																class="dc">8%</span>2,208원 </span> <span class="cost">2,400원</span>
														</div></li>
													<li data-index="11" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1623996225704l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">친환경 햇 양파
																	350g</a></span> <span class="price"><span class="dc">5%</span>1,605원
															</span> <span class="cost">1,690원</span>
														</div></li>
													<li data-index="12" class="cut"
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1590727808213l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[풀무원] 생면식감
																	꽃게탕면</a></span> <span class="price"><span class="dc">12%</span>4,760원
															</span> <span class="cost">5,450원</span>
														</div></li>
													<li data-index="13" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1605689066515l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">유기농 달수 고구마
																	1.5kg</a></span> <span class="price"><span class="dc">5%</span>13,205원
															</span> <span class="cost">13,900원</span>
														</div></li>
													<li data-index="14" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1593752126181l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">저탄소 GAP 백도
																	복숭아 1.8kg 내외 (5~7입)</a></span> <span class="price"><span
																class="dc">5%</span>17,955원 </span> <span class="cost">18,900원</span>
														</div></li>
													<li data-index="15" class="cut"
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1618379552204l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[솔가] 오메가-3
																	700 (60일분)</a></span> <span class="price"><span class="dc">35%</span>29,900원
															</span> <span class="cost">46,000원</span>
														</div></li>
													<li data-index="16" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1609141385434l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">친환경 얼갈이 300g</a></span>
															<span class="price"><span class="dc">5%</span>1,890원
															</span> <span class="cost">1,990원</span>
														</div></li>
													<li data-index="17" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1628558475434l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[상하목장] 유기농
																	우유</a></span> <span class="price"><span class="dc">30%</span>4,900원
															</span> <span class="cost">7,100원</span>
														</div></li>
													<li data-index="18" class="cut"
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1456401122225l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">친환경 적양배추
																	1/2개</a></span> <span class="price"><span class="dc">5%</span>2,650원
															</span> <span class="cost">2,790원</span>
														</div></li>
													<li data-index="19" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1607935549902l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[돈마루] 한돈
																	앞다리살 2종 (냉장)</a></span> <span class="price">
																<!---->5,300원
															</span>
															<!---->
														</div></li>
													<li data-index="20" class=""
														data-name="today_recommendation"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1463996906146l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">친환경 파채 200g</a></span>
															<span class="price"><span class="dc">5%</span>3,135원
															</span> <span class="cost">3,300원</span>
														</div></li>
													<!---->
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<a class="bx-prev disabled" href="">Prev</a><a
														class="bx-next" href="">Next</a>
												</div>
											</div>
										</div>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div>
							<div class="main_type3 bg">
								<div class="main_event">
									<div class="tit_goods">
										<h3 class="tit">
											<a class="name"><span class="ico">특가/혜택</span> <!----></a>
											<!---->
										</h3>
									</div>
									<div class="list_goods">
										<ul data-title="특가/혜택" data-section="event" class="list">
											<li data-index="1"><a class="thumb_goods"><img
													src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF4AAABeCAQAAAAA22vlAAAAAXNSR0IArs4c6QAAACdJREFUeAHtwQENAAAAwiD7p34PBwwAAAAAAAAAAAAAAAAAAAAA4FpFZgABkfKClwAAAABJRU5ErkJggg=="
													alt="상품이미지" class="thumb"
													style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1526289808717l0.jpg&quot;);"></a>
												<div class="info_goods">
													<!---->
													<div class="inner_info">
														<span class="name"><a class="txt">돼지고기 최대 8%
																할인</a></span> <span class="desc"><a class="txt">우리돼지 한돈</a></span>
													</div>
												</div></li>
											<li data-index="2"><a class="thumb_goods"><img
													src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF4AAABeCAQAAAAA22vlAAAAAXNSR0IArs4c6QAAACdJREFUeAHtwQENAAAAwiD7p34PBwwAAAAAAAAAAAAAAAAAAAAA4FpFZgABkfKClwAAAABJRU5ErkJggg=="
													alt="상품이미지" class="thumb"
													style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/main/3/pc_img_1629888864.jpg&quot;);"></a>
												<div class="info_goods">
													<!---->
													<div class="inner_info">
														<span class="name"><a class="txt">녹색한우 최대 15%
																할인</a></span> <span class="desc"><a class="txt">국내 최대 규모
																한우 브랜드</a></span>
													</div>
												</div></li>
											<li data-index="3"><a class="thumb_goods"><img
													src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF4AAABeCAQAAAAA22vlAAAAAXNSR0IArs4c6QAAACdJREFUeAHtwQENAAAAwiD7p34PBwwAAAAAAAAAAAAAAAAAAAAA4FpFZgABkfKClwAAAABJRU5ErkJggg=="
													alt="상품이미지" class="thumb"
													style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/main/3/pc_img_1629890307.jpg&quot;);"></a>
												<div class="info_goods">
													<!---->
													<div class="inner_info">
														<span class="name"><a class="txt">매일유업 최대 30%
																할인</a></span> <span class="desc"><a class="txt">믿고 먹는
																유제품</a></span>
													</div>
												</div></li>
											<!---->
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div class="main_type2">
								<div class="product_list">
									<div class="tit_goods">
										<h3 class="tit">
											<a class="name"><span class="ico">놓치면 후회할 가격</span> <!----></a>
											<!---->
										</h3>
									</div>
									<!---->
									<div class="list_goods">
										<div class="bx-wrapper"
											style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 506px;">
												<ul data-title="놓치면 후회할 가격" data-section="theme_goods_20"
													class="list"
													style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li data-index="1" class="" data-name="theme_goods_20"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1608174435642l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[안원당] 특설렁탕</a></span> <span
																class="price"><span class="dc">30%</span>6,230원 </span>
															<span class="cost">8,900원</span>
														</div></li>
													<li data-index="2" class="" data-name="theme_goods_20"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%쿠폰</span> <!----></span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1628752314739l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">[기획특가] [바븐]
																	완도산 전복 1kg내외(생물)</a></span> <span class="price"><span
																class="dc">30%</span>29,900원 </span> <span class="cost">43,000원</span>
														</div></li>
													<li data-index="3" class="cut" data-name="theme_goods_20"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1626341348405l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[이고진] 마사지볼
																	3종</a></span> <span class="price"><span class="dc">15%</span>4,165원
															</span> <span class="cost">4,900원</span>
														</div></li>
													<li data-index="4" class="" data-name="theme_goods_20"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1582018750937l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[햇반] 백미밥
																	210g (1입/6입)</a></span> <span class="price"><span
																class="dc">10%</span>6,120원 </span> <span class="cost">6,800원</span>
														</div></li>
													<li data-index="5" class="" data-name="theme_goods_20"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1590470191843l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[브리도] 크로아상
																	냉동 생지 2종</a></span> <span class="price"><span class="dc">20%</span>4,080원
															</span> <span class="cost">5,100원</span>
														</div></li>
													<li data-index="6" class="cut" data-name="theme_goods_20"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1585888980538l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">냉동 [우주]
																	은빛제주통갈치(특대) 600g 내외(냉동)_국내산</a></span> <span class="price"><span
																class="dc">22%</span>31,122원 </span> <span class="cost">39,900원</span>
														</div></li>
													<!---->
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<a class="bx-prev disabled" href="">Prev</a><a
														class="bx-next" href="">Next</a>
												</div>
											</div>
										</div>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div>
							<div class="bnr_main">
								<a class="link"
									style="background-image: url(&quot;//img-cf.kurly.com/shop/data/main/5/pc_img_1629681489.jpg&quot;);"><span
									class="inner_link">
										<!----> <!----> <img
										src="//img-cf.kurly.com/shop/data/main/5/pc_img_1629681489.jpg"
										onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
								</span> <!----></a>
							</div>
						</div>
						<div>
							<div class="main_type2">
								<div class="category_type">
									<div class="tit_goods">
										<h3 class="tit">
											<!---->
											<span class="name"> MD의 추천 <!----></span>
										</h3>
									</div>
									<div class="category_menu">
										<div class="bg_category">
											<span class="bg_shadow shadow_before"></span> <span
												class="bg_shadow shadow_after"></span>
										</div>
										<div class="category">
											<ul class="list_category">
												<li data-start="33" data-end="129"><a data-no="522"
													href="#none" class="menu"> 추석 선물세트 </a></li>
												<li data-start="155" data-end="196"><a data-no="907"
													href="#none" class="menu"> 채소 </a></li>
												<li data-start="221" data-end="317"><a data-no="908"
													href="#none" class="menu"> 과일·견과·쌀 </a></li>
												<li data-start="343" data-end="464"><a data-no="909"
													href="#none" class="menu"> 수산·해산·건어물 </a></li>
												<li data-start="489" data-end="564"><a data-no="910"
													href="#none" class="menu"> 정육·계란 </a></li>
												<li data-start="590" data-end="711"><a data-no="911"
													href="#none" class="menu"> 국·반찬·메인요리 </a></li>
												<li data-start="737" data-end="838"><a data-no="912"
													href="#none" class="menu"> 샐러드·간편식 </a></li>
												<li data-start="862" data-end="958"><a data-no="913"
													href="#none" class="menu cut"> 면·양념·오일 </a></li>
												<li data-start="984" data-end="1126"><a data-no="914"
													href="#none" class="menu"> 생수·음료·우유·커피 </a></li>
												<li data-start="1151" data-end="1247"><a data-no="249"
													href="#none" class="menu on"> 간식·과자·떡 </a></li>
												<li data-start="1273" data-end="1407"><a data-no="915"
													href="#none" class="menu"> 베이커리·치즈·델리 </a></li>
												<li data-start="1432" data-end="1499"><a data-no="032"
													href="#none" class="menu"> 건강식품 </a></li>
												<li data-start="1525" data-end="1626"><a data-no="918"
													href="#none" class="menu"> 생활용품·리빙 </a></li>
												<li data-start="1652" data-end="1778"><a data-no="233"
													href="#none" class="menu"> 스킨케어·메이크업 </a></li>
												<li data-start="1803" data-end="1912"><a data-no="012"
													href="#none" class="menu"> 헤어·바디·구강 </a></li>
												<li data-start="1937" data-end="2004"><a data-no="916"
													href="#none" class="menu"> 주방용품 </a></li>
												<li data-start="2029" data-end="2096"><a data-no="085"
													href="#none" class="menu"> 가전제품 </a></li>
												<li data-start="2121" data-end="2209"><a data-no="919"
													href="#none" class="menu"> 베이비·키즈 </a></li>
												<li data-start="2235" data-end="2302"><a data-no="991"
													href="#none" class="menu"> 반려동물 </a></li>
												<!---->
											</ul>
										</div>
									</div>
									<div class="list_goods">
										<div class="bx-wrapper"
											style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 462px;">
												<ul data-title="MD의 추천" data-section="md_choice"
													class="list"
													style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li data-index="1" class="" data-name="md_choice"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1604387610751l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[더슬로우메이드] 쫀득
																	찰호팡 3종</a></span> <span class="price"><span class="dc">35%</span>4,290원
															</span> <span class="cost">6,600원</span>
														</div></li>
													<li data-index="2" class="" data-name="md_choice"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/153750968679l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[하겐다즈] 파인트
																	피넛버터 크런치</a></span> <span class="price">
																<!---->7,900원
															</span>
															<!---->
														</div></li>
													<li data-index="3" class="cut" data-name="md_choice"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1507700947181l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[하겐다즈] 파인트
																	7종</a></span> <span class="price">
																<!---->7,900원
															</span>
															<!---->
														</div></li>
													<li data-index="4" class="" data-name="md_choice"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1614922858183l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[라고] 이탈리안 도넛
																	4종</a></span> <span class="price">
																<!---->3,180원
															</span>
															<!---->
														</div></li>
													<li data-index="5" class="" data-name="md_choice"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1549602414483l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[기라델리] 인텐스다크
																	바 5종</a></span> <span class="price">
																<!---->6,000원
															</span>
															<!---->
														</div></li>
													<li data-index="6" class="cut" data-name="md_choice"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1590044732503l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[창억] 찰떡 3종</a></span> <span
																class="price">
																<!---->6,600원
															</span>
															<!---->
														</div></li>
													<!---->
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<a class="bx-prev disabled" href="">Prev</a><a
														class="bx-next" href="">Next</a>
												</div>
											</div>
										</div>
									</div>
									<div class="link_cate">
										<a class="link"><span class="ico">간식·과자·떡 전체보기</span></a>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div class="bnr_main">
								<a class="link"
									style="background-image: url(&quot;//img-cf.kurly.com/shop/data/main/7/pc_img_1629448784.jpg&quot;);"><span
									class="inner_link">
										<!----> <!----> <img
										src="//img-cf.kurly.com/shop/data/main/7/pc_img_1629448784.jpg"
										onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
								</span> <!----></a>
							</div>
						</div>
						<div>
							<div class="main_type2">
								<div class="product_list">
									<div class="tit_goods">
										<h3 class="tit">
											<a class="name"><span class="ico">지금 가장 핫한 상품</span> <!----></a>
											<!---->
										</h3>
									</div>
									<!---->
									<div class="list_goods">
										<div class="bx-wrapper"
											style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 506px;">
												<ul data-title="지금 가장 핫한 상품" data-section="theme_goods_21"
													class="list"
													style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li data-index="1" class="" data-name="theme_goods_21"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1544496906306l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[사미헌] 양념
																	소갈빗살</a></span> <span class="price">
																<!---->23,900원
															</span>
															<!---->
														</div></li>
													<li data-index="2" class="" data-name="theme_goods_21"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1530775904997l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[LOTS OF
																	LOVE] 차돌듬뿍 묵은지 볶음밥</a></span> <span class="price"><span
																class="dc">10%</span>7,020원 </span> <span class="cost">7,800원</span>
														</div></li>
													<li data-index="3" class="cut" data-name="theme_goods_21"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1593752126181l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">저탄소 GAP 백도
																	복숭아 1.8kg 내외 (5~7입)</a></span> <span class="price"><span
																class="dc">5%</span>17,955원 </span> <span class="cost">18,900원</span>
														</div></li>
													<li data-index="4" class="" data-name="theme_goods_21"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1582250277209l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[엄마밥상] 청국장</a></span> <span
																class="price">
																<!---->6,500원
															</span>
															<!---->
														</div></li>
													<li data-index="5" class="" data-name="theme_goods_21"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1628835067268l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[KF365] 생 등심
																	돈까스 8입 1kg (냉장)</a></span> <span class="price">
																<!---->12,900원
															</span>
															<!---->
														</div></li>
													<li data-index="6" class="cut" data-name="theme_goods_21"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1625724652747l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[에머이] 쌀국수 키트
																	2종 (2인분)</a></span> <span class="price">
																<!---->9,500원
															</span>
															<!---->
														</div></li>
													<!---->
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<a class="bx-prev disabled" href="">Prev</a><a
														class="bx-next" href="">Next</a>
												</div>
											</div>
										</div>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div>
							<div class="main_type2 bg"
								style="background-color: rgb(247, 247, 247);">
								<div class="product_list">
									<div class="tit_goods">
										<h3 class="tit">
											<a class="name"><span class="ico">필요한 것만 딱, 주방용품
													특가</span> <!----></a>
											<!---->
										</h3>
									</div>
									<!---->
									<div class="list_goods">
										<div class="bx-wrapper"
											style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 506px;">
												<ul data-title="필요한 것만 딱, 주방용품 특가"
													data-section="theme_goods_9" class="list"
													style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li data-index="1" class="" data-name="theme_goods_9"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1580881505571l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[네오플램] New
																	FIKA 쿡웨어 팬 7종</a></span> <span class="price"><span
																class="dc">5%</span>28,405원 </span> <span class="cost">29,900원</span>
														</div></li>
													<li data-index="2" class="" data-name="theme_goods_9"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+얼리버드쿠폰</span> <!----></span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1594637593342l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">[선물세트] 도블레
																	칼집이 나지 않는 도마 세트 그린</a></span> <span class="price"><span
																class="dc">15%</span>42,330원 </span> <span class="cost">49,800원</span>
														</div></li>
													<li data-index="3" class="cut" data-name="theme_goods_9"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1603177699664l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[쿠진아트] 실리콘툴
																	10P 세트</a></span> <span class="price"><span class="dc">7%</span>37,107원
															</span> <span class="cost">39,900원</span>
														</div></li>
													<li data-index="4" class="" data-name="theme_goods_9"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1597761847133l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[그린팬] 그린쉐프
																	토콰즈 프라이팬 6종</a></span> <span class="price"><span class="dc">20%</span>29,520원
															</span> <span class="cost">36,900원</span>
														</div></li>
													<li data-index="5" class="" data-name="theme_goods_9"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1627546063804l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[락앤락] 마카롱
																	주방가위 2종</a></span> <span class="price"><span class="dc">5%</span>2,755원
															</span> <span class="cost">2,900원</span>
														</div></li>
													<li data-index="6" class="cut" data-name="theme_goods_9"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1600769905701l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[선물세트]
																	마켓컬리X실리만 실리콘 조리도구 4종</a></span> <span class="price"><span
																class="dc">30%</span>7,630원 </span> <span class="cost">10,900원</span>
														</div></li>
													<!---->
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<a class="bx-prev disabled" href="">Prev</a><a
														class="bx-next" href="">Next</a>
												</div>
											</div>
										</div>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div>
							<div class="main_type2">
								<div class="product_list">
									<div class="tit_goods">
										<h3 class="tit">
											<a class="name"><span class="ico">마감세일</span> <!----></a>
											<!---->
										</h3>
									</div>
									<!---->
									<div class="list_goods">
										<div class="bx-wrapper"
											style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 506px;">
												<ul data-title="마감세일" data-section="deadline_sales"
													class="list"
													style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li data-index="1" class=""
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1621842566799l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">제주 하우스 감귤 2종</a></span>
															<span class="price"><span class="dc">5%</span>9,310원
															</span> <span class="cost">9,800원</span>
														</div></li>
													<li data-index="2" class=""
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1580878680982l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[Kurly's]
																	동물복지 우유 900ml</a></span> <span class="price"><span
																class="dc">5%</span>2,802원 </span> <span class="cost">2,950원</span>
														</div></li>
													<li data-index="3" class="cut"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1609303083272l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">[KF365]
																	대추방울토마토 750g</a></span> <span class="price"><span
																class="dc">9%</span>5,400원 </span> <span class="cost">5,980원</span>
														</div></li>
													<li data-index="4" class=""
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1620017776155l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[김구원선생] 흑임자
																	콩물 430ml</a></span> <span class="price"><span class="dc">10%</span>4,005원
															</span> <span class="cost">4,450원</span>
														</div></li>
													<li data-index="5" class=""
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1622450202617l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[종가집] 담백한
																	나박김치 1.2kg</a></span> <span class="price"><span class="dc">10%</span>6,750원
															</span> <span class="cost">7,500원</span>
														</div></li>
													<li data-index="6" class="cut"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1528354300775l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[우리땅오리] 무항생제
																	오리 다리살 슬라이스</a></span> <span class="price"><span class="dc">12%</span>6,072원
															</span> <span class="cost">6,900원</span>
														</div></li>
													<!---->
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<a class="bx-prev disabled" href="">Prev</a><a
														class="bx-next" href="">Next</a>
												</div>
											</div>
										</div>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div>
							<div class="main_type2 bg"
								style="background-color: rgb(247, 247, 247);">
								<div class="product_list">
									<div class="tit_goods">
										<h3 class="tit">
											<a class="name"><span class="ico">365일 최저가 도전</span> <span
												class="tit_desc">최저가 도전, 365일 언제나 알뜰하게</span></a>
											<!---->
										</h3>
									</div>
									<!---->
									<div class="list_goods">
										<div class="bx-wrapper"
											style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 506px;">
												<ul data-title="365일 최저가 도전" data-section="theme_goods_11"
													class="list"
													style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li data-index="1" class="" data-name="theme_goods_11"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">기획특가</span> <!----></span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/153543279519l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">[기획특가] 친환경
																	감자 2kg</a></span> <span class="price">
																<!---->4,990원
															</span>
															<!---->
														</div></li>
													<li data-index="2" class="" data-name="theme_goods_11"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1628823505473l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[한트바커] 그릴드
																	냉장 닭가슴살 2종</a></span> <span class="price">
																<!---->13,250원
															</span>
															<!---->
														</div></li>
													<li data-index="3" class="cut" data-name="theme_goods_11"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1627880571518l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[서울우유 x
																	마켓컬리] 치즈다운 치즈</a></span> <span class="price">
																<!---->1,980원
															</span>
															<!---->
														</div></li>
													<li data-index="4" class="" data-name="theme_goods_11"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1617858663754l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[농심] 신라면 멀티
																	5입</a></span> <span class="price">
																<!---->3,680원
															</span>
															<!---->
														</div></li>
													<li data-index="5" class="" data-name="theme_goods_11"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1617171550430l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[KF365]
																	김구원선생 국내산 무농약 콩나물 300g</a></span> <span class="price">
																<!---->900원
															</span>
															<!---->
														</div></li>
													<li data-index="6" class="cut" data-name="theme_goods_11"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1628054735975l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[KF365] 양념
																	소불고기 1kg (냉장)</a></span> <span class="price">
																<!---->15,900원
															</span>
															<!---->
														</div></li>
													<!---->
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<a class="bx-prev disabled" href="">Prev</a><a
														class="bx-next" href="">Next</a>
												</div>
											</div>
										</div>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div>
							<div class="main_type2">
								<div class="product_list">
									<div class="tit_goods">
										<h3 class="tit">
											<a class="name"><span class="ico">설레는 캠핑</span> <span
												class="tit_desc">캠핑 식재료부터 용품까지 맞춤 제안</span></a>
											<!---->
										</h3>
									</div>
									<!---->
									<div class="list_goods">
										<div class="bx-wrapper"
											style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 506px;">
												<ul data-title="설레는 캠핑" data-section="theme_goods_12"
													class="list"
													style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li data-index="1" class="" data-name="theme_goods_12"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1605152714137l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[더플랜] 왕의안주 -
																	모듬 꼬치 세트</a></span> <span class="price">
																<!---->9,900원
															</span>
															<!---->
														</div></li>
													<li data-index="2" class="" data-name="theme_goods_12"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1502159554437l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[삼진어묵] 캠핑
																	어묵탕 2종</a></span> <span class="price">
																<!---->8,400원
															</span>
															<!---->
														</div></li>
													<li data-index="3" class="cut" data-name="theme_goods_12"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1609826308259l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[VIDAL] 베지
																	마쉬멜로우</a></span> <span class="price">
																<!---->2,500원
															</span>
															<!---->
														</div></li>
													<li data-index="4" class="" data-name="theme_goods_12"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><span class="global_sticker"><span
																class="inner_sticker"><span class="bg_sticker"
																	style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span><span
																			class="emph_sticker">+20%</span> <!----></span><span>
																			<!----> <span>쿠폰</span>
																	</span></span></span></span> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1616400779348l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">구이용 모둠 버섯
																	200g</a></span> <span class="price"><span class="dc">5%</span>2,270원
															</span> <span class="cost">2,390원</span>
														</div></li>
													<li data-index="5" class="" data-name="theme_goods_12"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/161976377431l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[클라우드] 클리어
																	제로 6개입</a></span> <span class="price">
																<!---->5,980원
															</span>
															<!---->
														</div></li>
													<li data-index="6" class="cut" data-name="theme_goods_12"
														style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1620031911870l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[SAC] 캠핑 컵
																	4P L</a></span> <span class="price">
																<!---->9,900원
															</span>
															<!---->
														</div></li>
													<!---->
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<a class="bx-prev disabled" href="">Prev</a><a
														class="bx-next" href="">Next</a>
												</div>
											</div>
										</div>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div>
							<div class="main_type3">
								<div class="main_recipe">
									<div class="tit_goods">
										<h3 class="tit">
											<a class="name"><span class="ico">컬리의 레시피</span> <!----></a>
											<!---->
										</h3>
									</div>
									<div class="list_goods">
										<div class="bx-wrapper"
											style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport"
												style="width: 100%; overflow: hidden; position: relative; height: 303px;">
												<ul data-title="컬리의 레시피" data-section="kurly_recipe"
													class="list"
													style="width: 715%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li
														style="float: left; list-style: none; position: relative; width: 338px; margin-right: 18px;"><a
														class="thumb_goods"><img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAACgCAQAAACY0inuAAAAAXNSR0IArs4c6QAAAGFJREFUeNrtwTEBAAAAwqD1T20JT6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOBnLK8AAfZFFloAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/board/recipe/m/main_v2_d84cc1aba13fb460.jpg&quot;);"></a>
														<div class="info_goods">
															<div class="inner_info">
																<span class="name"><a class="txt">레이어드 초밥</a></span>
															</div>
														</div></li>
													<li
														style="float: left; list-style: none; position: relative; width: 338px; margin-right: 18px;"><a
														class="thumb_goods"><img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAACgCAQAAACY0inuAAAAAXNSR0IArs4c6QAAAGFJREFUeNrtwTEBAAAAwqD1T20JT6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOBnLK8AAfZFFloAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/board/recipe/m/main_v2_f62a63d6a8542337.jpg&quot;);"></a>
														<div class="info_goods">
															<div class="inner_info">
																<span class="name"><a class="txt">어묵면볶이</a></span>
															</div>
														</div></li>
													<li
														style="float: left; list-style: none; position: relative; width: 338px; margin-right: 18px;"><a
														class="thumb_goods"><img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAACgCAQAAACY0inuAAAAAXNSR0IArs4c6QAAAGFJREFUeNrtwTEBAAAAwqD1T20JT6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOBnLK8AAfZFFloAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/board/recipe/m/main_v2_8ba32a3f9bb39517.jpg&quot;);"></a>
														<div class="info_goods">
															<div class="inner_info">
																<span class="name"><a class="txt">바질 토마토 에그인헬</a></span>
															</div>
														</div></li>
													<li
														style="float: left; list-style: none; position: relative; width: 338px; margin-right: 18px;"><a
														class="thumb_goods"><img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAACgCAQAAACY0inuAAAAAXNSR0IArs4c6QAAAGFJREFUeNrtwTEBAAAAwqD1T20JT6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOBnLK8AAfZFFloAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/board/recipe/m/main_v2_1f00c200359df1a0.jpg&quot;);"></a>
														<div class="info_goods">
															<div class="inner_info">
																<span class="name"><a class="txt">백김치말이 밥</a></span>
															</div>
														</div></li>
													<li
														style="float: left; list-style: none; position: relative; width: 338px; margin-right: 18px;"><a
														class="thumb_goods"><img
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAACgCAQAAACY0inuAAAAAXNSR0IArs4c6QAAAGFJREFUeNrtwTEBAAAAwqD1T20JT6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOBnLK8AAfZFFloAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb"
															style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/board/recipe/m/main_v2_38d7dec1b338849e.jpg&quot;);"></a>
														<div class="info_goods">
															<div class="inner_info">
																<span class="name"><a class="txt">단호박 곤약 콩국수</a></span>
															</div>
														</div></li>
													<!---->
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<a class="bx-prev disabled" href="">Prev</a><a
														class="bx-next" href="">Next</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div class="main_type4">
								<div class="tit_goods">
									<h3 class="tit">인스타그램 고객 후기</h3>
								</div>
								<div class="list_goods">
									<div class="bx-wrapper"
										style="max-width: 1050px; margin: 0px auto;">
										<div class="bx-viewport"
											style="width: 100%; overflow: hidden; position: relative; height: 175px;">
											<ul data-title="인스타그램 고객 후기" data-section="instagram"
												class="list"
												style="width: 2715%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
												<li data-index="1" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/240648216_166751782201623_3685789328031896190_n.jpg?_nc_cat=100&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=q2FDw_8NxWcAX-QAdtd&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=8dd86c1a455ffc1985d792bea755d505&amp;oe=612F5195"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="2" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/240532990_233005771941811_3617078964819492812_n.jpg?_nc_cat=102&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=6k1hl3lJ1PgAX-IvG0l&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=ac21e8131b313f760f6331f095d6921d&amp;oe=61302A95"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="3" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/240414686_611491329834980_5155301532047198022_n.jpg?_nc_cat=106&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=NAuGF9ZgVNIAX_rWx9H&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=188d4b88a5b6813af6da7b304ed4325e&amp;oe=612FBEF3"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="4" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/239296860_381315540183895_595037948610156442_n.jpg?_nc_cat=106&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=bRA6RS-NIWMAX_WKIKd&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=5d8f95c4f3b43f5af02ff4183276f492&amp;oe=612FE055"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="5" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/238530466_234992441850952_8385904255498313927_n.jpg?_nc_cat=111&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=ZZXpzRbLcAUAX9iFu5x&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;oh=d0890572d9eb850b7fff6b3cf01c93ad&amp;oe=612FCB6A"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="6" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/235932349_553644345760967_5847295247988988427_n.jpg?_nc_cat=108&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=KLrU-Pw8n1MAX_v4Cwn&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=7bdcefcc5581d7774788da40995e2f83&amp;oe=612FAD18"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="7" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/235227763_4866992839982770_2634565998121911396_n.jpg?_nc_cat=109&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=GapDn_QrpisAX8N2eFk&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=6b32843e44af85fdc4b069b65b1465e2&amp;oe=612F67B9"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="8" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/235558039_219631856752469_7327138132659084052_n.jpg?_nc_cat=108&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=Vy1w0sd2LUIAX_7YNkl&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=5dc3105685d0d063f4fc071c57ee485c&amp;oe=61306F26"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="9" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/230829426_458870008903926_4605274243767380912_n.jpg?_nc_cat=111&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=Pi7_y_HuIBcAX_p727I&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=429ebb9528cba70f2a424ab7866d8f73&amp;oe=612F4539"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="10" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/232245424_177194214361620_8311284171251663581_n.jpg?_nc_cat=105&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=ICrh9-0Ds8wAX9D6758&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=63ac5adf958141b6252826d2d610b7a5&amp;oe=613033FC"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="11" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/230088284_840235113595331_4382460276953216457_n.jpg?_nc_cat=104&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=unIRrsVkYvQAX9xApoF&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=1117cf98e6800f4628c27cadb5d93caa&amp;oe=6130E3AF"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="12" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/227014212_573495974020632_8667452063060419617_n.jpg?_nc_cat=107&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=v5jBpBEyCkwAX-VQmmZ&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=f28a35de8675373c8389aeeaa0c7e60d&amp;oe=6130A321"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="13" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/226162524_2649038852069345_4128135240248499446_n.jpg?_nc_cat=100&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=vt1AcWxMEtwAX8wIAEY&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=83867c53684a113e00b5661e24d4d6eb&amp;oe=612F1143"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="14" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/224184679_1967095883466297_6044729879282741755_n.jpg?_nc_cat=103&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=UDX6zH8oxIEAX884IXM&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=1782f06e2745006096956f5c55e9fe90&amp;oe=612F8008"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="15" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/220069148_364654291692382_3856995472436217255_n.jpg?_nc_cat=111&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=80m-FmbbK4YAX-Poryr&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=da62c8891afe4c746181af8b6f6143b1&amp;oe=612F18FE"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="16" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/221838037_518072189492442_7444713915094350355_n.jpg?_nc_cat=101&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=-8U_trO8O7QAX-iPper&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=17c0afdb413a54c8c6e52246938a4949&amp;oe=6130E8AC"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="17" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/220501279_1641775179546247_6602651260966680436_n.jpg?_nc_cat=103&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=pZuey_IfAQQAX-rSKl7&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=46e4d63a2dfe0354eb2d47cb20d1e798&amp;oe=612F1EA2"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="18" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/217787090_4421425621208945_2623964379085059202_n.jpg?_nc_cat=101&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=uG5KFfhVX5sAX97Pf--&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=e2d75a17624d6ffe4e7ca6c0f4c4b54c&amp;oe=612FD3A7"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="19" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/217880860_1065421947196970_8878709286796371299_n.jpg?_nc_cat=102&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=MPDfNNws2WgAX_EL7Wn&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=8667cf200b3b0241537cc4675dfab154&amp;oe=6130ECAA"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="20" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/210551988_178324497604795_5373716652515546316_n.jpg?_nc_cat=102&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=HiK0rwWtH5MAX9lK7OD&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=59831048edbf42feb295cb1246577eab&amp;oe=61308945"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="21" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/212050929_2611951445776357_6717020443434314024_n.jpg?_nc_cat=105&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=JF7nb6iFJ5gAX-G5juz&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=20a1929d68f299757ca719364da6ab3a&amp;oe=612FFFA3"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="22" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/210868990_123643839840233_3997342401212751663_n.jpg?_nc_cat=101&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=PJNoVQqVdfcAX92ktX1&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=48e89efca7b7b09dd12ea0e9484f0eac&amp;oe=61302CFE"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="23" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/209256934_563682511307839_6439455020536109910_n.jpg?_nc_cat=103&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=XAZtINhPbKgAX-Clphz&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;oh=fae5b20446a72cba3a148ccc55bdcd31&amp;oe=61302F08"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="24" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/208970613_331053075355894_1607974875794718739_n.jpg?_nc_cat=105&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=YDQwCXSjNJMAX_l34La&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;oh=2ed6860126a689f3ba05b59de9b0abdb&amp;oe=612F7AFD"
														alt="상품이미지" class="thumb"></a></li>
												<li data-index="25" data-name="instagram"
													style="float: left; list-style: none; position: relative; width: 175px;"><a
													target="_blank" class="thumb_goods"><img
														src="https://scontent-nrt1-1.cdninstagram.com/v/t51.29350-15/208594682_391246255639368_2930906952563692905_n.jpg?_nc_cat=111&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=06hP7SkNjA8AX8pKIBB&amp;_nc_ht=scontent-nrt1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=d6e32c992d8b56aa6c773a344357a865&amp;oe=612F34BB"
														alt="상품이미지" class="thumb"></a></li>
											</ul>
										</div>
										<div class="bx-controls bx-has-controls-direction">
											<div class="bx-controls-direction">
												<a class="bx-prev disabled" href="">Prev</a><a
													class="bx-next" href="">Next</a>
											</div>
										</div>
									</div>
								</div>
								<div class="bnr">
									<span class="txt">더 많은 고객 후기가 궁금하다면?</span> <a
										href="https://www.instagram.com/marketkurly_regram/"
										target="_blank">@BucketKurly_gram</a>
								</div>
							</div>
						</div>
						<div>
							<div class="bnr_main">
								<a class="link"
									style="background-image: url(&quot;//img-cf.kurly.com/shop/data/main/15/pc_img_1629447526.jpg&quot;);"><span
									class="inner_link">
										<!----> <!----> <img
										src="//img-cf.kurly.com/shop/data/main/15/pc_img_1629447526.jpg"
										onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
								</span> <!----></a>
							</div>
						</div>
					</div>
					<div class="bg_loading" id="bgLoading" style="display: none;">
						<div class="loading_show"></div>
					</div>
					<script src="https://res.kurly.com/js/lib/moment.min.js"></script>
					<script src="https://res.kurly.com/js/lib/jquery.bxslider.min.js"></script>
					<script src="/common_js/common_filter.js?ver=1.38.2"></script>
					<script src="/common_js/main_v1.js?ver=1.38.2"></script>
					<script>
$(document).ready(function(){
    kurlyMain.type = 'pc';
    kurlyMain.update();

    // GNB Logo checking
    chkGNBLogo('pc');
});
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
							<strong class="emph">밤 8시 전</strong>까지 주문시<br> <strong
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
							<p class="txt">비회원의 경우 메일로 문의 바랍니다</p>
						</div>
					</div>
					<div class="company">
						<ul class="list">
							<li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a></li>
							<li><a class="link"
								href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&amp;showinfo=0&amp;wmode=opaque&amp;enablejsapi=1"
								onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a></li>
							<li><a class="link"
								href="https://marketkurly.recruiter.co.kr/appsite/company/index"
								target="_blank">인재채용</a></li>
							<li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
							<li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
							<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
						</ul>
						법인명 (상호) : 주식회사 버켓 <span class="bar">I</span> 사업자등록번호 :
						123-45-67890 <a
							href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&amp;apv_perm_no="
							target="_blank" class="link">사업자정보 확인</a> <br> 통신판매업 : 제
						2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : Bucket <br>
						주소 : 서울특별시 종로구 돈화문로 26 단성사 4층 <span class="bar">I</span> 대표이사
						: Kurly <br> 입점문의 : <a
							href="https://forms.gle/oKMAe1SaicqMX3SC9" target="_blank"
							class="link">입점문의하기</a> <span class="bar">I</span> 제휴문의 : <a
							href="mailto:business@kurlycorp.com" class="link">business@BucketKurly.com</a>
						<br> 채용문의 : <a href="mailto:recruit@kurlycorp.com"
							class="link">recruit@BucketKurly.com</a> <br> 팩스: 070 - 1234 -
						5678 <span class="bar">I</span> 이메일 : <a
							href="mailto:help@kurlycorp.com" class="link">help@BucketKurly.com</a>
						<br> 대량주문 문의 : <a href="mailto:help@Kurlycorp.com" class="link">help@BucketKurly.com</a>
						<em class="copy">© KURLY CORP. ALL RIGHTS RESERVED</em>
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
								[인증범위] 버켓컬리 쇼핑몰 서비스 개발 · 운영<br> [유효기간] 2021.09.06 ~
								2022.09.05
							</p>
						</a> <a href="#none"
							onclick="popup('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=EP&amp;certNum=2021-EP-R003',527,720);return false;"
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
	<iframe name="xdomain-b27e8305" id="xdomain-b27e8305"
		src="https://api.kurly.com/xdomain?ver=1" style="display: none;"></iframe>

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

	<script src="/asset/js/useKurly/event/imc202102.bundle.js?ver=1.38.2"></script>

</body>
</html>