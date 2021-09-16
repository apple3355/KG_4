<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버켓컬리 :: 내일의 장보기, 버켓컬리</title>
<!-- 1. 제이쿼리 라이브러리 파일을 먼저 연동하고,  -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 2. 이어서 bxSlider 플러그인 파일을 연동시켜야 한다. -->
<script src="resources/js/jquery.bxslider.min.js"></script>

<!-- Swiper -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css"> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<link rel="shortcut icon" href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<link rel="stylesheet" type="text/css" href="resources/mainstyle.css">
<link rel="stylesheet" type="text/css" href="resources/productstyle.css">




<script>
    $(function(){
        var mySlider = $("#slideBanner").bxSlider({
            mode:"horizontal",    // 가로 수평으로 슬라이드된다.
            speed:500,        // 이동 속도를 설정한다.
            pager:false,    // 현재 위치 페이지 표시 여부를 설정한다.
            moveSlides:1,    // 슬라이드 이동 시 개수를 설정한다.
            slideWidth:1550,    // 슬라이드 너비를 설정한다.
            minSlides:1,    // 최소 노출 개수를 설정한다.
            maxSlides:1,    // 최대 노출 개수를 설정한다.
            slideMargin:10, // 슬라이드 간의 간격을 설정한다.
            auto:true,         // 자동으로 흐를지 여부를 설정한다.
            autoHover:true, // 마우스오버 시 정지할지를 설정한다.
            controls:false    // 이전 버튼, 다음 버튼 노출 여부를 설정한다.
        });
        
        // 이전 버튼을 클릭하면 이전 슬라이드로 전환된다.
        $("#prevBtn").on("click", function(){
            // 이전 슬라이드 배너로 이동된다.
            mySlider.goToPrevSlide();
            // <a>의 링크를 차단한다.
            return false;
        });
        
        // 다음 버튼을 클릭하면 다음 슬라이드로 전환한다.
        $("#nextBtn").on("click", function(){
            // 다음 슬라이드 배너로 이동된다.
            mySlider.goToNextSlide();
            // <a>의 링크를 차단한다.
            return false;
        });
    }); 
</script>

<!-- main_type2 4개 상품 슬라이드 -->
<script>
$(function(){
    //initialize swiper when document ready
     var mySwiper = new Swiper('.swiper-container', {
        // Optional parameters 
        direction: 'horizontal', // 방향
        slidesPerView: 4, // 슬라이드를 한번에 3개를 보여준다
        slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
        spaceBetween: 20, // 슬라이드간 padding 값 30px 씩 떨어뜨려줌
        
        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
        loopFillGroupWithBlank : true,

        loop: false, // loop 를 true 로 할경우 무한반복 슬라이드, false 로 할경우 슬라이드의 끝에서 더보여지지 않음

        // If we need pagination 
        pagination: {
            el: '.swiper-pagination',
            clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
            type: 'progressbar', // And if we need scrollbar 진행바
        },
        
        // Navigation arrows 
        navigation: {
            nextEl: '#nextBtn2',
            prevEl: '#prevBtn2',
        },
        
        // 반응형
        /*
        breakpoints: {
            1280: {
                slidesPerView: 4,
                slidesPerGroup: 4,
            },
            720: {
                slidesPerView: 4,
                slidesPerGroup: 4,
            },
        }
        */
        
    })
    
    
     //initialize swiper when document ready
     var mySwiper = new Swiper('.swiper-container', {
        // Optional parameters 
        direction: 'horizontal', // 방향
        slidesPerView: 4, // 슬라이드를 한번에 3개를 보여준다
        slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
        spaceBetween: 20, // 슬라이드간 padding 값 30px 씩 떨어뜨려줌
        
        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
        loopFillGroupWithBlank : true,

        loop: false, // loop 를 true 로 할경우 무한반복 슬라이드, false 로 할경우 슬라이드의 끝에서 더보여지지 않음

        // If we need pagination 
        pagination: {
            el: '.swiper-pagination',
            clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
            type: 'progressbar', // And if we need scrollbar 진행바
        },
        
        // Navigation arrows 
        navigation: {
            nextEl: '#nextBtn2',
            prevEl: '#prevBtn2',
        },
        
        // 반응형
        /*
        breakpoints: {
            1280: {
                slidesPerView: 4,
                slidesPerGroup: 4,
            },
            720: {
                slidesPerView: 4,
                slidesPerGroup: 4,
            },
        }
        */
        
    })
    
    
});




</script>



<style>
/* 메인 배너의 좌측 화살표버튼 */
#prevBtn{cursor: pointer; overflow:hidden;position:absolute;bottom:316px;width:60px;height:60px;border:0 none;font-size:0;line-height:0;text-indent:-9999px;transition:opacity 0.5s ease; user-select: none}
#prevBtn{left:-30px;background:url(https://res.kurly.com/pc/service/main/1908/btn_prev_default.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#prevBtn:hover{background:url(https://res.kurly.com/pc/service/main/1908/btn_prev_gray_hover_x1.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#prevBtn{left:-30px;background:url(https://res.kurly.com/pc/service/main/1908/btn_prev_gray_x1.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#prevBtn:hover{background:url(https://res.kurly.com/pc/service/main/1908/btn_prev_gray_hover_x1.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#prevBtn {position: absolute;left: 30px;top: 150px;}
/* 메인 배너의 우측 화살표버튼 */
#nextBtn{cursor: pointer; overflow:hidden;position:absolute;bottom:316px;width:60px;height:60px;border:0 none;font-size:0;line-height:0;text-indent:-9999px;transition:opacity 0.5s ease; user-select: none}
#nextBtn{right:-30px;background:url(https://res.kurly.com/pc/service/main/1908/btn_next_default.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#nextBtn:hover{background:url(https://res.kurly.com/pc/service/main/1908/btn_next_default_hover_x1.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#nextBtn{right:-30px;background:url(https://res.kurly.com/pc/service/main/1908/btn_next_gray_x1.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#nextBtn:hover{background:url(https://res.kurly.com/pc/service/main/1908/btn_next_gray_hover_x1.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#nextBtn {position: absolute;right: 30px;top: 150px;}


  /* 공통 */
.page_main{overflow:hidden;width:100%;margin:0;opacity:0}
.page_aticle button, .page_aticle input, .page_aticle select, .page_aticle * {font-family: noto sans;font-weight: 400;letter-spacing: 0;}
.page_main .bg{background-color:#f7f7f7}
.page_main .tit_goods{padding:79px 0 35px}
.page_main .tit_goods.top_short{padding-top:21px}
.page_main .tit_goods .tit{font-weight:700;font-size:28px;line-height:32px;letter-spacing:-0.3px;text-align:center}
.page_main .tit_goods .name{position:relative;font-weight:700}
.page_main .tit_goods a{cursor:pointer}
.page_main .tit_goods .name .ico{padding:0 31px;background:url(https://res.kurly.com/pc/service/main/1908/ico_title_link_x1.png) no-repeat 100% 50%;font-weight:700}
.page_main .tit_goods .tit_desc{display:block;padding-top:10px;font-weight:400;font-size:16px;color:#999;line-height:20px;text-align:center}
.page_main .list_goods a{cursor:pointer}
.page_main .list_goods .thumb_goods{display:block;overflow:hidden}
.page_main .list_goods .thumb_goods .ico{z-index:1;transition:all 0.3s ease-in-out}
.page_main .list_goods .thumb_goods .thumb{display:block;margin:0 auto;background-position:50% 50%;background-size:cover;transform:scale(1);transition:all 0.3s ease-in-out}
.page_main .list_goods .thumb_goods:hover .thumb{transform:scale(1.02);transition:all 0.3s ease-in-out}
.bg_loading {position: fixed;z-index: 9998;left: 0;top: 0;width: 100%;height: 100%;background-color: #000;opacity: .5;}
.loading_show {position: fixed;z-index: 10000;top: 50%;left: 50%;margin: -16px 0 0 -16px;width: 32px;height: 32px;background: url(https://res.kurly.com/pc/img/1909/img_loading_128x128.gif) no-repeat 50% 50%;background-size: 16px 16px;}
  

.main_type1 .list_goods .thumb_goods{width:100%;height:370px;background-repeat:no-repeat;background-position:50% 50%;background-size:auto auto;font-size:0;line-height:0;text-indent:-9999px}

/*스티커*/
  .global_sticker .inner_sticker {overflow: hidden;position: absolute;left: 0;top: 0;height: 32px;padding: 0 8px;text-align: center;white-space: nowrap;}
  .global_sticker .bg_sticker {position: absolute;z-index: 1;left: 0;top: 0;width: 100%;height: 32px;background-color: #bd76ff;opacity: .9;}
  .global_sticker .txt_sticker {position: relative;z-index: 1;}
  .global_sticker .txt_sticker .emph_sticker {font-weight: 700;font-size: 14px;color: #fff;line-height: 30px;}

</style>


</head>

<body>
<div id="wrap" class="">
   <div id="pos_scroll"></div>
   	<div id="container">
      <!-- header -->
      <%@ include file="/WEB-INF/views/header.jsp"%>  								
	  <div id="main">
				<div id="content">
				<div class="section_view">

					<div id="shareLayer">
						<div class="layer_share" style="display: none;">
							<div class="inner_layersns">
							<h3 class="screen_out">SNS 공유하기</h3>
							<ul class="list_share">
								<li><a class="btn btn_fb" data-sns-name="페이스북" data-sns="facebook" href="#none"><img src="https://res.kurly.com/mobile/service/goodsview/1804/ico_facebook.png" alt="페이스북"><span class="txt">공유하기</span></a></li>
								<li><a class="btn btn_tw" data-sns-name="트위터" data-sns="twitter" href="#none"><img src="https://res.kurly.com/mobile/service/goodsview/1804/ico_twitter.png" alt="트위터"><span class="txt">트윗하기</span></a></li>
								<li class="btn_url">
									<input type="text" class="inp" value="https://ss37g.app.goo.gl/Zr2D" readonly="readonly">
									<a class="btn_copy off" data-sns-name="링크 복사" data-sns="copy" href="#none">URL 복사<img src="https://res.kurly.com/mobile/service/goodsview/1804/ico_checked_x2.png" alt=""></a>
								</li>
							</ul>
							</div>
						</div>
					</div>
					<div id="sectionView">
						<div class="inner_view">
							<div class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1607935872129y0.jpg&quot;);">
								<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAXcAAAHnCAQAAADpr9U2AAABeUlEQVR42u3BMQEAAADCoPVPbQ0PoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALg0lPQAATTM2xoAAAAASUVORK5CYII=" alt="상품 대표 이미지" class="bg"></div> 
							<p class="goods_name">
								<span class="btn_share"><button id="btnShare" class="btnShare" data-goodsno="6016">공유하기</button></span> 
								<strong class="name">[돈마루] 한돈 목살 구이용 300g</strong> 
								<span class="short_desc">100g 당 판매가: 3,300원</span></p> 
								<p class="goods_dcinfo">회원할인가</p> 
								<p class="goods_price">
									<span class="position">
										<span class="dc"><!----> 
											<span class="dc_price">8,910<span class="won">원</span></span> 
											<span class="dc_percent">10<span class="per">%</span></span></span> 
										<a class="original_price">
											<span class="price">9,900<span class="won">원</span></span>
											<img src="https://res.kurly.com/kurly/ico/2021/question_24_24_c999.svg" alt="물음표" class="ico">
										</a> 
										<span class="layer_position"><!----> 
											<span class="layer_price">
												<strong class="tit_layer">컬리판매가 기준 할인
												</strong>
												동일 품질 상품의 주요 온/오프라인 유통사 가격과 비교하여 컬리가 설정한 가격에서 할인된 가격입니다.
												<span class="bar"></span>                        
												적용된 할인가는 대표 상품의 가격으로 옵션에 따라 할인 혜택이 다를 수 있습니다. 할인 혜택은 당사 사정에 따라 변경될 수 있습니다.                    
											</span> 
											<button type="button" class="btn_close">
											레이어 닫기</button>
										</span>
									</span> 
									<!----> 
									<!----> 
									<!----> 
									<!----> 
									<span class="not_login">
										<span>로그인 후, 회원할인가와 적립혜택이 제공됩니다.</span> 
										<!---->
									</span>
								</p> 
								<div class="goods_benefit">
									<div class="benefit">
										<a class="btn link">                    
											정육 20% 쿠폰 받으러 가기                
										</a> 
										<!---->
									</div> 
									<!---->
								</div> 
								<div class="goods_info">
									<dl class="list fst">
										<dt class="tit">판매단위</dt> 
										<dd class="desc">1팩</dd>
									</dl> 
									<dl class="list">
										<dt class="tit">중량/용량</dt> 
										<dd class="desc">300g</dd>
									</dl> 
									<dl class="list">
										<dt class="tit">배송구분</dt> 
										<!----> 
										<dd class="desc">샛별배송/택배배송</dd>
									</dl> 
									<dl class="list">
										<dt class="tit">원산지</dt> 
										<dd class="desc">국내산</dd>
									</dl> 
									<dl class="list">
										<dt class="tit">포장타입</dt> 
										<dd class="desc">                    
											냉장/종이포장                    
											<strong class="emph">                      
											택배배송은 에코포장이 스티로폼으로 대체됩니다.                    
											</strong>
										</dd>
									</dl> 
									<dl class="list">
										<dt class="tit">알레르기정보</dt> 
										<dd class="desc">- 돼지고기 함유</dd>
									</dl> 
									<!----> 
									<dl class="list">
										<dt class="tit">유통기한</dt> 
										<dd class="desc">수령일 포함 최소 5일 이상 남은 제품을 보내드립니다. </dd>
									</dl> 
									<!----> 
									<!----> 
									<dl class="list">
										<dt class="tit">축산물이력정보</dt> 
										<dd class="desc">이력번호가 표시된 제품이며, 이력번호는 수령하시는 상품 패키지에서 확인 가능합니다.</dd>
									</dl> 
									<dl class="list">
										<dt class="tit">안내사항</dt> 
										<dd class="desc">
											<span class="txt">정육 상품의 특성상 중량은 3%내외의 차이가 발생할 수 있습니다.</span>
											<span class="txt">보관기간이 신선도에 많은 영향을 주는 정육식품이기 때문에 수령후 최대한 빠른 시일내에 섭취를 권장드립니다.</span>
											<span class="txt">기온이 내려감에 따라 운물에 지방비율이 증가할 가능성이 있사오니 구매시에 유의하시기 바랍니다.</span>
											<span class="txt">패키지가 변경되어 상품 안내와 패키지가 상이하며 상품페이지 작업중에 있습니다.</span>
										</dd>
									</dl> 
									<!----> 
									<!---->
								</div> 
								<!---->
						</div> 
						<!---->
					</div>
					<div id="cartPut">
						<div class="cart_option cartList cart_type2">
							<div class="inner_option">
							<!----> 
							<!----> 
							<div class="in_option">
								<div class="list_goods">
								<!----> 
								<!----> 
								<!----> 
									<ul class="list list_nopackage">
										<li class="on">
											<span class="btn_position">
												<button type="button" class="btn_del">
													<span class="txt">삭제하기</span>
												</button>
											</span> 
											<span class="name">
											<!---->                                 
											[돈마루] 한돈 목살 구이용 300g                                  
											<!---->
											</span> 
											<span class="tit_item">구매수량</span> 
											<div class="option">
												<span class="count">
													<button type="button" class="btn down on">수량내리기</button> 
													<input type="number" readonly="readonly" onfocus="this.blur()" class="inp"> 
													<button type="button" class="btn up on">수량올리기</button>
												</span> 
												<span class="price">
													<!----> 
													<span class="dc_price">9,900원</span>
												</span>
											</div>
										</li>
									</ul>
								</div> 
								<div class="total">
									<div class="price">
										<!----> 
										<strong class="tit">총 상품금액 :</strong> 
										<span class="sum">
											<span class="num">9,900</span> 
											<span class="won">원</span>
										</span>
									</div> 
									<p class="txt_point">
										<span class="ico">적립</span> 
										<span class="no_login">
											<span>로그인 후, 회원할인가와 적립혜택 제공</span> 
											<!---->
										</span> 
										<!---->
									</p>
								</div>
							</div> 
							<div class="group_btn off">
								<div class="view_function">
									<button type="button" class="btn btn_alarm">재입고 알림</button>
								</div> 
								<span class="btn_type1">
									<button type="button" class="txt_type">                        
									장바구니 담기                      
									</button> 
									<!---->
								</span> 
								<!----> 
								<!----> 
								<!----> 
								<!----> 
								<!----> 
								<!---->
							</div> 
							<!---->
						</div>
					</div> 
					<div class="cart_option cartList cart_type1">
						<div class="inner_option">
							<!----> 
							<!----> 
							<div class="in_option">
								<div class="list_goods">
									<div class="bar_open">
										<button type="button" class="btn_close">
											<span class="ico">상품 선택</span>
										</button>
									</div> 
									<!----> 
									<!----> 
									<!---->
								</div> 
								<!---->
							</div> 
							<div class="group_btn off">
								<div class="view_function">
									<button type="button" class="btn btn_alarm">재입고 알림</button>
								</div> 
								<span class="btn_type1">
									<button type="button" class="txt_type">                        
									장바구니 담기                      
									</button> 
									<!---->
								</span> 
								<!----> 
								<!----> 
								<!----> 
								<!----> 
								<!----> 
								<!---->
							</div> 
							<!---->
						</div>
					</div> 
					<div class="cart_option cart_type3 notify_option">
						<div class="inner_option">
							<strong class="tit">재입고 알림 신청</strong> 
							<p class="name_deal">[돈마루] 한돈 목살 구이용 300g</p> 
							<!----> 
							<!----> 
							<p class="notice">
								<span class="ico">·</span>
								상품이 입고되면 앱 푸시 또는 알림톡으로 알려 드립니다.
							</p> 
							<div class="group_btn layer_btn2">
								<span class="btn_type2">
									<button type="button" class="txt_type">취소</button>
								</span> 
								<span class="btn_type1">
									<button type="button" class="txt_type">신청하기</button>
								</span>
							</div>
						</div>
					</div> 
					<div class="cart_option cart_result cart_type3">
						<div class="inner_option">
							<button type="button" class="btn_close1">pc레이어닫기</button> 
							<p class="success">
								상품 구매를 위한 
								<span class="bar"></span>
								배송지를 설정해주세요
							</p> 
							<div class="group_btn layer_btn2">
								<span class="btn_type2">
									<button type="button" class="txt_type">취소</button>
								</span> 
								<span class="btn_type1">
									<button type="button" class="txt_type">
										<span class="ico_search"></span>
										주소 검색
									</button>
								</span>
							</div>
						</div>
					</div> 
					<form name="frmBuyNow" method="post" action="/shop/order/order.php">
						<input type="hidden" name="mode" value="addItem"> 
						<input type="hidden" name="goodsno" value="">
					</form> 
					<form name="frmWishlist" method="post"></form>
				</div>
				
				<!--상품설명, 장바구니 -->
			  </div>
			</div>
		</div>
	
	<!-- 화면 위로가기 버튼 -->
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


    
		<!-- layerDSR -->
    	<%@ include file="/WEB-INF/views/layerDSR.jsp"%>   
      <!-- footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>            
      </div> 
   </div>
   <a href="#top" id="pageTop">맨 위로가기</a>

<!-- sns공유하기 활성화 -->
<script>
	$("#btnShare").on("click", function checks(){
		$(".layer_share").css({'display' : 'block'});
	});
</script>

<!-- sns공유하기 비활성화 -->
<script>
$(document).on("click", function(e){
	if(e.target.className =="btnShare"){return false}
	$(".layer_share").css({'display' : 'none'});
});
</script>
</body>
</html>