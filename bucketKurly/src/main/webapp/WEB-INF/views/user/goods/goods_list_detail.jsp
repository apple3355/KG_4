<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
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

<link rel="stylesheet" type="text/css" href="resources/css/goods_list_detail.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">

<script src="resources/js/goods_list_detail.js"></script>
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

	/*썸네일 우측 상품 정보 부분*/
	.name  {font-size: 14px; font-weight: 700;}
	#sectionView .goods_info .list {padding: 1px 0px 11px;}
	#sectionView .goods_name .short_desc {  padding: 4px 10px 0 0;}
	#sectionView .goods_name {padding: 0px 0 0px;}
	#sectionView .goods_dcinfo {line-height: 0px;}	

	/* 상품 수량 관련*/
   #cartPut .cart_option .list .up.on { background-image: url(https://res.kurly.com/pc/ico/2010/ico_plus_on.svg);}
   #cartPut .cart_option .list .up {    float: right;    margin-left: -1px;    background: #fff url(https://res.kurly.com/pc/ico/2010/ico_plus.svg) no-repeat 50% 50%;    background-size: 30px 30px;}
   #cartPut .cart_option .list .btn {    overflow: hidden;    float: left;    width: 28px;    height: 28px;    border: 0;    font-size: 0;    line-height: 0;    text-indent: -9999px;}
   #cartPut .cart_option .list .inp {    float: left;    width: 30px;    height: 30px;    margin-right: -1px;    padding: 0 0 4px;    border: 0;    background-color: #fff;    font-size: 14px;    color: #000;    line-height: 18px;    text-align: center;}
   #cartPut .cart_option .list .count {    overflow: hidden;    float: left;    width: 88px;    height: 30px;    border: 1px solid #dddfe1;    border-radius: 3px;}
   #cartPut * {    font-family: 'Noto Sans KR', sans-serif;    color: #333;    letter-spacing: 0;}
   #cartPut .cart_option .list .down.on {    background-image: url(https://res.kurly.com/pc/ico/2010/ico_minus_on.svg);}
   #cartPut .cart_option .list .down {    background: #fff url(https://res.kurly.com/pc/ico/2010/ico_minus.svg) no-repeat 50% 50%;    background-size: 30px 30px;}
   #cartPut .cart_type2 .list_nopackage li {    float: none;    width: 100%;    padding: 0 0 5px;    margin: 0; border: 0;}

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
      <%@ include file="/WEB-INF/views/layout/header.jsp"%>  								
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
								<img src="${goods_sellVO.goodsvo.category_goods_image_thumb}" alt="상품 대표 이미지" class="bg"></div> 
							<p class="goods_name">
								<span class="btn_share"><button id="btnShare" class="btnShare" data-goodsno="6016">공유하기</button></span> 
								<strong class="name">${goods_sellVO.goodsvo.category_goods_name}</strong> 
								<span class="short_desc">${goods_sellVO.goodsvo.category_goods_name_sub}</span></p> 
								
								
								<c:set var="discount" value="${goods_sellVO.goods_sell_discount}" />
								<c:if test="${discount == 0}">
									<p class="goods_dcinfo"></p> 
								    <p class="goods_price">
										<span class="position">
											<span class="dc"><!----> 
												<span class="dc_price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sellVO.goods_sell_price - (goods_sellVO.goods_sell_price * goods_sellVO.goods_sell_discount) / 100}" /><span class="won">원</span></span> 
											</span> 
										</span>
									</p> 
								</c:if>
								
								<c:if test="${discount != 0}">
									<p class="goods_dcinfo">회원할인가</p> 
									<p class="goods_price">
										<span class="position">
											<span class="dc"><!----> 
												<span class="dc_price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sellVO.goods_sell_price - (goods_sellVO.goods_sell_price * goods_sellVO.goods_sell_discount) / 100}" /><span class="won">원</span></span> 
												<span class="dc_percent" id="dc_percent">${goods_sellVO.goods_sell_discount}<span class="per">%</span></span></span> 
											<a class="original_price">
												<span class="price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sellVO.goods_sell_price}"/><span class="won">원</span></span>
												<img src="https://res.kurly.com/kurly/ico/2021/question_24_24_c999.svg" alt="물음표" class="ico">
											</a> 
											
										</span> 
										<c:if test="${empty sessionScope.id }"> 
											<span class="not_login">
												<span>로그인 후, 회원할인가와 적립혜택이 제공됩니다.</span> 
												<!---->
											</span>
										</c:if>
									</p> 
								</c:if>
							
								<div class="goods_info">
																		
									<c:if test="${not empty goods_sellVO.goodsvo.category_goods_unit }"> 
										<dl class="list">
											<dt class="tit"><b>판매단위</b></dt> 
											<dd class="desc">${goods_sellVO.goodsvo.category_goods_unit }</dd>
										</dl> 
									</c:if>
									
									
									<c:if test="${not empty goods_sellVO.goodsvo.category_goods_weight }"> 
										<dl class="list">
											<dt class="tit"><b>중량/용량</b></dt> 
											<dd class="desc">${goods_sellVO.goodsvo.category_goods_weight }</dd>
										</dl> 
									</c:if>
									
									<c:if test="${not empty goods_sellVO.goodsvo.category_goods_delivery_type }"> 
										<dl class="list">
											<dt class="tit"><b>배송구분</b></dt> 
											<dd class="desc"> ${goods_sellVO.goodsvo.category_goods_delivery_type }</dd>
										</dl> 
									</c:if>
									
									
									<c:if test="${not empty goods_sellVO.goodsvo.category_goods_from }"> 
										<dl class="list">
											<dt class="tit"><b>원산지</b></dt> 
											<dd class="desc"> ${goods_sellVO.goodsvo.category_goods_from }</dd>
										</dl> 
									</c:if>
									
									<c:if test="${not empty goods_sellVO.goodsvo.category_goods_packaging_type}"> 
										<dl class="list">
											<dt class="tit"><b>포장타입</b></dt> 
											<dd class="desc"> ${goods_sellVO.goodsvo.category_goods_packaging_type }</dd>
										</dl> 
									</c:if>
									
									<c:if test="${not empty goods_sellVO.goodsvo.category_goods_exp_date}"> 
										<dl class="list">
											<dt class="tit"><b>유통기한</b></dt> 
											<dd class="desc">${goods_sellVO.goodsvo.category_goods_exp_date}</dd>
										</dl> 
									</c:if>
									
									
									<c:if test="${not empty goods_sellVO.goodsvo.category_goods_info }"> 
										<dl class="list">
											<dt class="tit"><b>안내사항</b></dt> 
											<dd class="desc">${goods_sellVO.goodsvo.category_goods_info }</dd>
										</dl> 
									</c:if>
									
									<c:if test="${not empty goods_sellVO.goodsvo.category_goods_ref}"> 
										<dl class="list">
											<dt class="tit"><b>참고사항</b></dt> 
											<dd class="desc">${goods_sellVO.goodsvo.category_goods_ref}</dd>
										</dl> 
									</c:if>
									
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
											<!--  
											<span class="name">
											<!--                                 
											${goods_sellVO.goodsvo.category_goods_name }                                  
											<!--
											</span> 
											-->
											<span class="tit_item" style="font-weight: 700; color: #333;"><b>구매수량</b></span> 
											<div class="option">
												 <span class="count">
						                              <button type="button" class="btn down on">수량내리기</button> 
						                              <input type="number" readonly="readonly" class="inp" value="1" id="inp" onchange="inp_change(this)"> 
						                              <button type="button" class="btn up on">수량올리기</button>
						                           </span>
						                    
												<span class="price">
													<input type="hidden" class="dc_price" id="dc_price" value="${goods_sellVO.goods_sell_price}"/>
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
											<span class="num" id="num"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sellVO.goods_sell_price - (goods_sellVO.goods_sell_price * goods_sellVO.goods_sell_discount) / 100}" />	</span> 
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
							<!--  이 부분 아래에 또 있음 --> 
							<div class="group_btn off">
								<div class="view_function">
									<button type="button" class="btn btn_alarm">재입고 알림</button>
								</div> 
								<span class="btn_type1">
									<button type="button" class="txt_type" onclick="fnCart(${goods_sellVO.goods_sell_no})">                        
									장바구니 담기                      
									</button> 
									<!---->
									<script type="text/javascript">
									function fnCart(good_sell_no){
										var count = document.getElementById("inp").value;
		                                 if(confirm("장바구니에 담으시겠습니까?")){
		                                	alert("해당 상품이 장바구니에 담겼습니다.");
		                                    var url = "${pageContext.request.contextPath}/insertGoods_cart.do";
		                                    url = url + "?goods_sell_no=" + good_sell_no;
		                                    url = url + "&count=" + count;
		                                    location.href = url;
		                                 }
		                              }
									</script>
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
									<button type="button" class="txt_type" onclick="fnCart(${goods_sellVO.goods_sell_no})">                        
									장바구니 담기                      
									</button> 
									<!---->
									<script type="text/javascript">
									function fnCart(good_sell_no){
										var count = document.getElementById("inp").value;
		                                 if(confirm("장바구니에 담으시겠습니까?")){
		                                    var url = "${pageContext.request.contextPath}/insertGoods_cart.do";
		                                    url = url + "?goods_sell_no=" + good_sell_no;
		                                    url = url + "&count=" + count;
		                                    location.href = url;
		                                 }
		                              }
									</script>
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
							<p class="name_deal">${goods_sellVO.goodsvo.category_goods_name }</p> 
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
			  
			  <!-- 상품 컨텐츠 -->
			  <div class="layout-wrapper goods-view-area">
			  	<div class="goods-view-infomation detail_wrap_outer" id="goods-view-infomation">
			  		<div class="goods-view-tab">
						<ul class="goods-view-infomation-tab-group">
							<li class="goods-view-infomation-tab"><a href="#goods-description" class="goods-view-infomation-tab-anchor __active">상품설명</a></li>
							<li class="goods-view-infomation-tab"><a href="#goods-infomation" class="goods-view-infomation-tab-anchor">상세정보</a></li>
							<li class="goods-view-infomation-tab goods-view-review-tab"><a href="#goods-review" class="goods-view-infomation-tab-anchor">후기 <span class="count_review"></span></a></li>
							<li class="goods-view-infomation-tab qna-show"><a href="#goods-qna" class="goods-view-infomation-tab-anchor">문의</a></li>
						</ul>
					</div>
					<div class="goods-view-infomation-content __active fixed_tab" id="goods-description">
						<div class="goods_wrap">
							<div class="goods_intro">
								<div class="pic">
									<img src="${goods_sellVO.goodsvo.category_goods_image_head }">
								</div>
								<div class="context last">
									<h3>
										<small>${goods_sellVO.goodsvo.category_goods_contents_tit_main}</small>
										<br>${goods_sellVO.goodsvo.category_goods_contents_tit_sub}
									</h3>
									<p class="words">
										${goods_sellVO.goodsvo.category_goods_contents_intro }
									</p>
									<div class="goods_point">
										<img src="${goods_sellVO.goodsvo.category_goods_image_contents}">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="goods-view-infomation-content" id="goods-infomation">
						<div id="goods_image">
							<div id="goods_pi">
								<p class="pic">
									<img src="${goods_sellVO.goodsvo.category_goods_image_contents_detail }">
								</p>
							</div>
						</div>
					</div>
					
					<!-- 상품 후기(리뷰) -->
					<div class="goods-view-infomation-content" id="goods-review" data-load="0"></div>
						<div class="goods-view-infomation-content" id="goods-qna">
							<div class="board-container">
								<div id="productInquiryBoard" data-productNo=4364 data-boardPageSize="10" data-boardType="product" data-deviceType="pc"></div>
								</div>
							</div>
						</div>
					</div>

						<script src="/appProxy/appData.php?ver=1.39.16" defer></script>
						<script src="/asset/js/product/inquiry/pc.bundle.js?ver=1.39.16" defer></script>
						<script src="/shop/data/skin/designgj/js/mk_goods.js?ver=1.39.16"></script>
						<script src="/common_js/common_filter.js?ver=1.39.16"></script>
						<script src="/common_js/view_v1.js?ver=1.39.16"></script>
						<script src="/common_js/cartput_v1.js?ver=1.39.16"></script>
						<script>
						// 상품상세상단호출
						var sectionViewDefault = {
						    'login' : false,
						    'no' : '4364',
						    'type' : 'pc'
						}
						sectionView.userInfoGet(sectionViewDefault);

						function cartPutLayerTypeShow(){
						    var winTop = 0, scrollCheckTop = 0;
						    var $target = $('#cartPut .cart_type1');
						    $(window).on('scroll', function(){
						        scrollCheckTop = Number( $('#goods-view-infomation').offset().top ); // 패키지상품치 위치가 바뀌므로 매번 체크
						        winTop = Number( $(this).scrollTop() );
						        if(winTop >=scrollCheckTop){
						            $target.addClass('on');
						        }else{
						            $target.removeClass('on');
						            if($target.find('.btn_close .ico').hasClass('open')){
						                $target.find('.btn_close').trigger('click');
						            }
						        }
						    }).scroll();
						}
						cartPutLayerTypeShow();
						</script>

						<script src="https://res.kurly.com/js/lib/jquery.inview.js"></script>
						<script>
						    // iframe에서 해당 height값가져오는 부분
						    function resizeFrameHeight(onm, height) {
						        document.getElementById(onm).height = height;
						    }
						    function resizeFrameWidth(onm, width) {
						        document.getElementById(onm).width = width;
						    }
						    jQuery(function ($) {
						        $("#goods-review").bind("inview", function(event,visible) {
						            if (visible == true) {
						                if ( $(this).data("load")==0 ) {
						                    $(this).data("load",1);
						                    $(this).html('<iframe id="inreview" src="${pageContext.request.contextPath}/goods_review_list.do" frameborder="0" class="goods-view-infomation-board"></iframe>');
						                }
						            }
						            $(function(){
						                $('#inreview').load(function () {
						                    var iframe = $('#inreview').contents();
						                    iframe.find(".layout-pagination-button").on('click', function(event) {
						                        $('html,body').animate({
						                            scrollTop: $("#goods-review").offset().top-115
						                        }, 300);
						                    });
						                });
						            });
						        });
						    });
						    // 해당 구역을 경과하면 보여주기 - 2016.01.03 junix
						    $( document ).ready(function() {
						        // $(window).height() 브라우저 내 창 높이
						        // $(document).scrollTop() 현재 스크롤 top 위치
						        if (($("#goods-review").offset().top - $(document).scrollTop()) < $(window).height())
						        {
						        	var goods_sell_no = getParameterByName('goods_sell_no'); // 1060192
						        	alert(goods_sell_no);
						        	let str = '<iframe id="inreview" src="http://localhost:8080/kurly/goods_list_review.do?goods_sell_no=';
						        	str+=goods_sell_no;
						        	str+='"frameborder="0" class="goods-view-infomation-board"></iframe>';
						        	alert(str);
						            
						            $("#goods-review").html(str);
						        }
						
						        // 170119 ey
						        var slideThumb = $('.goods-add-product-item');
						        var slideThumbCnt = 5;
						
						        if(slideThumb.length <= slideThumbCnt){
						            $('.goods-add-product-move-right').hide();
						            $('.goods-add-product-move-left').hide();
						        }
						    });
						
						    $(window).load(function(){
						        // KM-433 장차석 : 인증서기능추가
						        showCertify.pageMake();
						        showCertify.init();
						    });
						
						    // KMF-771 상품상세 과거 이벤트 페이지 랜더링 이슈
						    $('#goods-description a').on('click', function(){
						      var httpCheck = $(this).attr('href');
						      if(httpCheck.indexOf('http://www.kurly.com') > -1) {
						        $(this).attr('href', httpCheck.replace('http://www.kurly.com', ''));
						      }
						      return true;
						    });
						</script>

						<script src="https://res.kurly.com/js/vue/data/goods/whykurly.js?ver=1.39.16"></script>
						<script src="https://res.kurly.com/js/vue/components/listIconTitleDesc.js?ver=1.39.16"></script>

						<script src="/common_js/goods/exchangeRefundPolicyPC.js?ver=1.39.16"></script>
										
						<div class="bg_loading" id="bgLoading">
							<div class="loading_show"></div>
						</div>
							<script src="/common_js/product/productDetail.js?ver=1.39.16"></script>
				</div>
			</div>
		</div>
</div>
	
	<!-- 수량관련 -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
	
	
	
	<!-- 화면 위로가기 버튼 & 수량 및 수량에 따른 합계 -->
    <script type="text/javascript">
    function getParameterByName(name) { 
    	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]"); 
    	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), 
    	results = regex.exec(location.search); 
    	return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " ")); 

    }
    $(document).ready(function(){
		
		function inp_change(obj) {
			  obj.value ='yellow';
			}

		 $(".btn.down.on").click(function(){
			 let EA = Number($("#inp").val());
	        	let num = Number($("#dc_price").val());
	        	let discount= Number($("#dc_percent").val());
	        	let Max = Number(10);
	        	
	           if(EA == 1){
	             alert("1 개 이하로 선택 할 수 없습니다. ");
	           }else{
	        		 // 수량 변경
	            	 EA = EA-1;
	            	 $("#inp").val(EA);
	            	 // 가격 계산
	            	 let calvalue = (num-(num*discount)/100)*EA;
	            	 console.log(calvalue);
	            	 calvalue = String(Math.round(calvalue));
	            	 console.log(calvalue);
	            	 // 숫자 포맷팅
	            	 var innerhtml = calvalue.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	            	 console.log(innerhtml);
	            	 $('#num').html(innerhtml);
	           }
	          
	        });
	        
	        $(".btn.up.on").click(function(){
	        	let EA = Number($("#inp").val());
	        	let num = Number($("#dc_price").val());
	        	let discount= Number($("#dc_percent").val());
	        	let Max = Number(10);
	        	
		  	        	
	        	if(EA == Max){
	              alert("해당 상품은 " + Max + "개 이상 선택할 수 없습니다");
	             }else{
	            	 // 수량 변경
	            	 EA = EA+1;
	            	 $("#inp").val(EA);
	            	 // 가격 계산
	            	 let calvalue = (num-(num*discount)/100)*EA;
	            	 console.log(calvalue);
	            	 calvalue = String(Math.round(calvalue));
	            	 console.log(calvalue);
	            	 // 숫자 포맷팅
	            	 var innerhtml = calvalue.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	            	 console.log(innerhtml);
	            	 $('#num').html(innerhtml);
	             }
	        });
		
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
    	<%@ include file="/WEB-INF/views/layout/layerDSR.jsp"%>   
      <!-- footer -->
      <%@ include file="/WEB-INF/views/layout/footer.jsp"%>            
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