<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓컬리">
<meta name="description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!">
<meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리">
<meta property="og:description" content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!">
<meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg">
<meta property="og:url" content="https://www.kurly.com/shop/goods/goods_cart.php?">
<meta property="og:type" content="website">
<meta property="og:site_name" content="www.kurly.com">
<meta name="keywords" content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식">

<title>버켓컬리 :: 내일의 장보기, 버켓컬리</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<meta name="naver-site-verification" content="58ff7c242d41178131208256bfec0c2f93426a1d">
<meta name="facebook-domain-verification" content="tyur3wmoos7t63tpkb7zosur6p98m1">

<link rel="shortcut icon" href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/goods_cart.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
</head>
<body>
<!-- header 시작 -->
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<!-- header 끝-->

<!-- main 시작 -->
<div id="header">
	<div class="tit_page">
		<h2 class="tit">장바구니</h2>
	</div>
	<div id="main">
		<div id="content">
			<div id="qnb" class="quick-navigation" style="top: 330.7px;">
				
			<div class="bnr_qnb" id="brnQuick">
				<a href="/shop/board/view.php?id=notice&amp;no=64" id="brnQuickObj">
   			 		<img class="thumb" src="https://res.kurly.com/pc/service/main/1904/bnr_quick_20190403.png" alt="퀄리티있게 샛별배송">
				</a>
			</div>

			<div class="side_menu">
				<a href="/shop/main/html.php?htmid=event/kurly.htm&amp;name=lovers" class="link_menu ">등급별 혜택</a>
				<a href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a>
				<a href="/shop/goods/goods_review_best.php" class="link_menu ">베스트 후기</a>
			</div>
			<div class="side_recent" style="display:none">
				<strong class="tit">최근 본 상품</strong>
				<div class="list_goods" data-height="209" style="height: 0px;">
					<ul class="list"></ul>
				</div>
			<button type="button" class="btn btn_up off">최근 본 상품 위로 올리기</button>
			<button type="button" class="btn btn_down off">최근 본 상품 아래로 내리기</button>
			</div>

			/**
			 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
			 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
			 */
			
			</div>
			
			<link rel="stylesheet" type="text/css" href="/asset/css/cart/list.bundle.css?ver=1.39.11">
			<link rel="preload" as="script" href="/asset/js/cart/list.bundle.js?ver=1.39.11">
			<h3 class="screen_out">장바구니 상품 목록</h3>
			
			<form>
				<div id="cartItemList" class="only_pc" style="min-height: 561px;">
					<div class="empty"><!-- class empty or "" 시작 -->
					<!-- 이곳에 장바구니 페이지 코드 입력 -->
				<div class="cart_result">
					<div class="inner_result" style="top: 60px;">
						<div class="cart_delivery">
							<h3 class="tit">배송지</h3>
							<div class="no_address">
							<span class="emph">배송지를 입력</span>하고<br>배송유형을 확인해 보세요!
							<a href="#" class="btn default">
							<span class="ico"></span>주소 검색</a>
							</div>
						</div>
						<div class="amount_view">
							<dl class="amount">
								<dt class="tit">상품금액</dt>
								<dd class="price">
								<span class="num">0</span>
								<span class="won">원</span>
								</dd>
							</dl>
							<dl class="amount">
								<dt class="tit">상품할인금액</dt>
								<dd class="price">
								<span class="num">0</span>
								<span class="won">원</span>
								</dd>
							</dl>
							<dl class="amount">
								<dt class="tit">배송비</dt>
								<dd class="price">
								<span class="num">0</span>
								<span class="won">원</span>
								</dd>
							</dl>
							<dl class="amount lst">
								<dt class="tit">결제예정금액</dt>
								<dd class="price">
								<span class="num">0</span>
								<span class="won">원</span>
								</dd>
							</dl>
							<div class="reserve"></div>
						</div>
						<div class="btn_submit ">
							<button type="submit" class="btn disabled">상품을 담아주세요</button>
						</div>
						<div class="notice">
							<span class="txt">
							<span class="ico">·</span>‘입금확인’ 상태일 때는 주문 내역 상세에서 직접 주문취소가 가능합니다.</span>
							<span class="txt">
							<span class="ico">·</span>‘입금확인’ 이후 상태에는 고객센터로 문의해주세요.</span>
						</div>
					</div>
				</div>
				</div><!-- class empty or "" 끝 -->
				</div>
			</form>

			<form id="viewCart" name="frmCart" method="post" action="/shop/order/order.php">
				<input type="hidden" name="mode" value="setOrder">
			</form>
			
			<script src="/appProxy/appData.php?ver=1.39.11"></script>
			<script src="/asset/js/cart/list.bundle.js?ver=1.39.11"></script>
			<script>
			  _cart.showItemList('pc');
			
			  /**
			   * 스크롤 이벤트 : CartContainer.jsx 에서 호출
			   * 스크립트 재시작 요건
			   * 아이템 삭제시
			   * 주소가 변경시
			   * 목록접을때
			   * 위치 값이 달라지는 경우
			   * .off('scroll') 을 사용할수 없음. gnb 때문에
			   */
			  function resultPosition() {
			    var objTarget = {};
			
			    objTarget = {
			      winHeight: $(window).height(),
			      gnbHeight: $('#gnbMenu').height(),
			      moveBox: $('.cart_result').find('.inner_result'),
			      boxHeight: $('.cart_result').find('.inner_result').height(),
			      baseTop: $('#cartItemList').offset().top - $('#gnbMenu').height()
			    }
			
			    var _position = {
			      scroll: function(){
			        var that = this, num = 0;
			        $(window).scroll(function () {
			          num = $(this).scrollTop().toFixed(0);
			          that.scrollEvent(num);
			        }).scroll();
			        if(num === 0){
			          that.scrollEvent(num);
			        }
			      },
			      scrollEvent: function(num){
			        num = num - objTarget.baseTop + objTarget.gnbHeight;
			        var baseHeight = $('#cartItemList').height();
			        var resultBox = baseHeight - objTarget.boxHeight;
			        if(objTarget.boxHeight > objTarget.winHeight || baseHeight <= objTarget.boxHeight){
			          num = 0;
			          $('#cartItemList').css({'minHeight' : objTarget.boxHeight});
			        }
			        if(num > resultBox){
			          num = resultBox;
			        }
			        objTarget.moveBox.css({ top: num <= 60 ? 60 : num });
			      }
			    }
			
			    _position.scroll();
			  }
			
			  KurlyTracker.setScreenName('cart');
			
			  function reloadAction(){
			    location.reload();
			  }
			</script>
		</div>
	</div>
</div>
<!-- main 끝 -->

<!-- layerDSR -->
<%@ include file="/WEB-INF/views/layout/layerDSR.jsp"%>


<!-- footer -->
<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>