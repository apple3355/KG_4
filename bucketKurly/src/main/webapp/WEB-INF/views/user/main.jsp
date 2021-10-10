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

<!-- fonts : 근데 안먹는거 같음 
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
-->
<link rel="shortcut icon" href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">


<!-- 우측 quick-navi 플로팅배너 -->
<script>
$(document).ready(function(){
	$(function(){
	    $(window).scroll(function() {
	      var position = $(window).scrollTop(); // 현재 스크롤바의 위치
	      if (position == 0) {
	        $(".quick-navigation").stop().animate({"top":position+580 + "px"},500);//높이 580부터 시작 
	      }else if(position > 580 && position < 3500){
	        $(".quick-navigation").stop().animate({"top":position+580 - 500 + "px"},500);//가운데쯤으로 고정
	      }else if (position < 3500) { //total 페이지에서 어디까지 내려갈지 (현재 컬리 배송 배너까지로 해놓음)
	        $(".quick-navigation").stop().animate({"top":"px"},500);
	      }
	    });
	});
})	
</script>

<!-- main 슬라이딩 배너 -->
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
	//.swiper1 : 이 상품 어때요?
    //initialize swiper when document ready
     var mySwiper = new Swiper('.swiper1 .swiper-container', {
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
            el: '.swiper1 .swiper-pagination',
            clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
            type: 'progressbar', // And if we need scrollbar 진행바
        },       
        // Navigation arrows 
        navigation: {
            nextEl: '.swiper1 #nextBtn2',
            prevEl: '.swiper1 #prevBtn2',
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
     //.swiper2 : 놓치면 후회할 가격   
     var mySwiper = new Swiper('.swiper2 .swiper-container', { 
        direction: 'horizontal', 
        slidesPerView: 4, 
        slidesPerGroup : 2, 
        spaceBetween: 20, 

        loopFillGroupWithBlank : true,
        loop: false, 

        pagination: {
            el: '.swiper2 .swiper-pagination',
            clickable : true, 
            type: 'progressbar', 
        },
        navigation: {
            nextEl: '.swiper2 #nextBtn2',
            prevEl: '.swiper2 #prevBtn2',
        },  
    })
    
   //.swiper3 : MD의 추천   
     var mySwiper = new Swiper('.swiper3 .swiper-container', { 
        direction: 'horizontal', 
        slidesPerView: 4, 
        slidesPerGroup : 2, 
        spaceBetween: 20, 

        loopFillGroupWithBlank : true,
        loop: false, 

        pagination: {
            el: '.swiper3 .swiper-pagination',
            clickable : true, 
            type: 'progressbar', 
        },
        navigation: {
            nextEl: '.swiper3 #nextBtn2',
            prevEl: '.swiper3 #prevBtn2',
        },  
    })
    
    
});
</script>



					
<style>

/*스티커 */
.global_sticker .inner_sticker {overflow: hidden;position: absolute;left: 0;top: 0; height: 32px;padding: 0 8px;text-align: center;white-space: nowrap;}
.global_sticker .bg_sticker {position: absolute;z-index: 1;left: 0;top: 0;width: 80px;height: 32px;background-color: #bd76ff;opacity: .9;} /*width: 100% -> 80px*/
.global_sticker .txt_sticker {position: relative;z-index: 1;}
.global_sticker .txt_sticker .emph_sticker {font-weight: 500;font-size: 14px;color: #fff;line-height: 30px;}

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
.page_aticle button, .page_aticle input, .page_aticle select, .page_aticle * {font-family: 'Noto Sans KR', sans-serif; font-weight: 400;letter-spacing: 0;}
.page_main .bg{background-color:#f7f7f7}
.page_main .tit_goods{padding:79px 0 35px}
.page_main .tit_goods.top_short{padding-top:21px}
.page_main .tit_goods .tit{font-weight:500;font-size:28px;line-height:32px;letter-spacing:-0.3px;text-align:center}
.page_main .tit_goods .name{position:relative;font-weight:500}
.page_main .tit_goods a{cursor:pointer}
.page_main .tit_goods .name .ico{padding:0 31px;background:url(https://res.kurly.com/pc/service/main/1908/ico_title_link_x1.png) no-repeat 100% 50%;font-weight:500}
.page_main .tit_goods .tit_desc{display:block;padding-top:10px;font-weight:400;font-size:16px;color:#999;line-height:20px;text-align:center}
.page_main .list_goods a{cursor:pointer}
.page_main .list_goods .thumb_goods{display:block;overflow:hidden}
.page_main .list_goods .thumb_goods .ico{z-index:1;transition:all 0.3s ease-in-out}
.page_main .list_goods .thumb_goods .thumb{display:block;margin:0 auto;background-position:50% 50%;background-size:cover;transform:scale(1);transition:all 0.3s ease-in-out}
.page_main .list_goods .thumb_goods:hover .thumb{transform:scale(1.02);transition:all 0.3s ease-in-out}
.bg_loading {position: fixed;z-index: 9998;left: 0;top: 0;width: 100%;height: 100%;background-color: #000;opacity: .5;}
.loading_show {position: fixed;z-index: 10000;top: 50%;left: 50%;margin: -16px 0 0 -16px;width: 32px;height: 32px;background: url(https://res.kurly.com/pc/img/1909/img_loading_128x128.gif) no-repeat 50% 50%;background-size: 16px 16px;}
  

.main_type1 .list_goods .thumb_goods{width:100%;height:370px;background-repeat:no-repeat;background-position:50% 50%;background-size:auto auto;font-size:0;line-height:0;text-indent:-9999px}


/*4개 상품 우측 화살표버튼 

#nextBtn2{cursor: pointer; overflow:hidden;position:absolute;bottom:316px;width:60px;height:60px;border:0 none;font-size:0;line-height:0;text-indent:-9999px;transition:opacity 0.5s ease; user-select: none}
.main_type2 .slider-controls-direction{right:-30px;background:url(https://res.kurly.com/pc/service/main/1908/btn_next_default.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#nextBtn2:hover{background:url(https://res.kurly.com/pc/service/main/1908/btn_next_default_hover_x1.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
#nextBtn2{right:-30px;background:url(https://res.kurly.com/pc/service/main/1908/btn_next_gray_x1.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
.main_type2 .slider-controls-direction:hover{background:url(https://res.kurly.com/pc/service/main/1908/btn_next_gray_hover_x1.png?v=1) no-repeat 50% 50%;transition:background 0.5s}
.main_type2 .slider-controls-direction {position: absolute;right:3px;top:550px;}
*/

/* /* 4종노출 */ */
/*  /* 4종노출+슬라이드 */ */
.global_sticker {display: block;position: relative;height: 0;} 
/* .main_type2 .global_sticker .inner_sticker{right:0;top:0}  */
.main_type2 .list_goods{width:1050px;height:506px;margin:0 auto} 
.main_type2 .list_goods .list{width:99999px} 
.main_type2 .list_goods li{float:left;width:249px;height:506px;margin-right:18px} 
.main_type2 .list_goods .thumb_goods{position:relative;background-color:#eee}  
.main_type2 .list_goods .ico{position:absolute;left:0;top:0;width:62px;height:54px} 
.main_type2 .list_goods .thumb{width:249px;height:370px} 
.main_type2 .list_goods .name{display:block;overflow:hidden;max-height:50px;margin-top:12px;text-overflow:ellipsis;display: -webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;word-wrap:break-word} 
.main_type2 .list_goods .txt{font-size:16px;line-height:23px} 
.main_type2 .list_goods .price{display:block;padding-top:9px;font-weight:500;font-size:16px;line-height:20px} 
.main_type2 .list_goods .dc{padding-right:8px;font-weight:500;font-size:16px;color:#fa622f;line-height:20px} 
.main_type2 .list_goods .cost{display:block;padding-top:5px;font-size:14px;color:#999;line-height:18px;text-decoration:line-through} 
   
#qnb{position:absolute;z-index:1;right:20px;top:70px;width:80px;font:normal 12px/16px "'Noto Sans KR', sans-serif";color:#333;letter-spacing:-0.3px;transition:top 0.2s}
.goods-goods_view #qnb{top:20px}
   
 /* 배너 */
#qnb .bnr_qnb{padding-bottom:7px}
#qnb .bnr_qnb .thumb{width:80px;height:120px;vertical-align:top}

/* 메뉴 */    
#qnb .side_menu{width:80px;border:1px solid #ddd;border-top:0 none;background-color:#fff}
#qnb .link_menu{display:block;height:29px;padding-top:5px;border-top:1px solid #ddd;text-align:center}
#qnb .link_menu:hover,
#qnb .link_menu.on{color:#5f0080}
   

/* 엠디의 추천 */
.category_type{padding-bottom:100px}
.category_type .list_goods{height:462px}
.category_type .list_goods.none{height:0}
.category_type .list_goods li{height:462px}
.category_type .bx-controls-direction .bx-next,
.category_type .bx-controls-direction .bx-prev{bottom:272px}
.category_type .category .list_category{width:1050px;max-width:1050px;padding:0 0 20px;margin:0 auto;text-align:center;font-size:0}
.category_type .category .list_category li{display:inline-block;padding:0 5px 20px}
.category_type .category .list_category .cut:before{content:"";display:block;overflow:hidden;width:100%;height:0}
.category_type .category .list_category .menu{display:inline-block;height:40px;padding:9px 20px 0 19px;border:1px solid #f7f7f6;border-radius:20px;background-color:#f7f7f7;font-size:14px;line-height:18px}
.category_type .category .list_category .menu:hover{border:1px solid #f7f3f7;background-color:#f7f3f8;color:#5f0080}
.category_type .category .list_category .clicked:hover,
.category_type .category .list_category .clicked{border:1px solid #5f0081;background-color:#5f0080;font-weight:600;color:#fff}
.category_type .link_cate{width:516px;margin:0 auto}
.category_type .link_cate .link{display:block;overflow:hidden;height:56px;padding-top:16px;border:1px solid #e3e3e3;border-radius:3px;font-size:16px;line-height:20px;text-align:center;letter-spacing:-0.3px;cursor:pointer}
.category_type .link_cate .ico{padding:0 18px;background:url(https://res.kurly.com/pc/service/main/1903/ico_more_link_x1.png) no-repeat 100% 3px}
.category_type .min .bx-controls{opacity:0}
.category_type .list_goods.over{overflow:hidden}
.category_type .list_goods.over .bx-controls{opacity:0}  
.global_sticker .txt_sticker span {
    display: inline-block;
    font-weight: 400;
    font-size: 14px;
    color: #fff;
    line-height: 30px;
    vertical-align: top;
    font-size: 0;
}

</style>


</head>

<body>
<div id="wrap" class="">
   <div id="pos_scroll"></div>
   <div id="container">
      <!-- header -->
      <%@ include file="/WEB-INF/views/layout/header.jsp"%>  	
	  <script src="http://code.jquery.com/jquery-latest.js"></script>
	  <script src="resources/js/jquery.bxslider.min.js"></script>							
      		<div id="main">
				<div id="content">
			
					<!-- 우측 플로팅 배너 -->
					<div id="qnb" class="quick-navigation" style="top: 516px;height: 215px;">		
						<div class="bnr_qnb" id="brnQuick">
							<a href="/shop/board/view.php?id=notice&amp;no=64" id="brnQuickObj"> 
								<img class="thumb" src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%ED%80%84%EB%A6%AC%ED%8B%B0%EC%9E%88%EA%B2%8C+%EC%83%9B%EB%B3%84%EB%B0%B0%EC%86%A1.png" alt="퀄리티있게 샛별배송">
							</a>
						</div>
						<div class="side_menu">
							<a href="#" class="link_menu ">등급별 혜택</a> 
							<a href="#" class="link_menu ">레시피</a>
							<a href="#" class="link_menu ">베스트 후기</a>
						</div>
					</div>
				
					<div id="kurlyMain" class="page_aticle page_main" style="opacity: 1;">
						<h2 class="screen_out">마켓컬리 메인</h2>
						
						<div class="main_type1" >
   							<div class="list_goods">
        						<div id="bannerWrap" class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 370px; ">											
										
									<ul data-section="main_banner" id="slideBanner" class="list" style="width:1515%; position: relative; transition-timing-function: ease-in-out; transition-duration: 0.5s; transform: translate3d(-2000px, 0px, 0px);">		 
										<!-- 배너 -->								
										<c:forEach items="${banner }" var="banner" >
											<div style="float: left; list-style: none; position: relative; width: 1076px;" class="bx-clone" data-name="main_banner">
												<img class="thumb_goods" alt="${banner.banner_title}" src="${banner.banner_filepath}" />
											</div>
										</c:forEach>
										<!-- 배너 끝 -->
	     							</ul>
        									
       								<!-- 메인 배너 화살표버튼 -->
									<div class="slider-controls-direction">
							            <a href="#" id="prevBtn"></a>
							            <a href="#" id="nextBtn"></a>
      								</div>
        						</div>
        					</div>
        				</div>		
						
						
						<div class="main_type2">
							<div class="product_list">
								<div class="tit_goods">
									<h3 class="tit"><span class="name"> 이 상품 어때요?</span></h3>
								</div>
								<!---->								
								<div class="list_goods">
									<div class="bx-wrapper" style="max-width: 1050px; margin: 0px auto;">
										<div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 506px;">
											<div class="swiper1"> <!-- class 새로 하나줌 -->	
												<div class="swiper-container">
													
													<ul data-title="이 상품 어때요?" class="swiper-wrapper" data-section="today_recommendation" class="list" style="width: 2215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
														<c:forEach items="${goods_sell_list1}" var="goods_sell_list1" varStatus="status">
															<li data-index="${status.count}" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
																
																<a class="thumb_goods"> 
																	<input type="hidden" value="${goods_sell_list1.goods_sell_no}">
																	<img src="${goods_sell_list1.goodsvo.category_goods_image_thumb}" class="thumb">
																</a>
																<div class="info_goods">
																	<input type="hidden" value="${goods_sell_list1.goods_sell_no}">
																	<span class="name"><a class="txt">${goods_sell_list1.goodsvo.category_goods_name}</a></span>

																	<c:set var="discount" value="${goods_sell_list1.goods_sell_discount}" />
																	<c:if test="${discount == 0}">
																	    <span class="price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sell_list1.goods_sell_price}"/><span class="won">원</span></span>
																	</c:if>
																	
																	<c:if test="${discount != 0}">
																	    <span class="price">
																	    	<span class="dc">${goods_sell_list1.goods_sell_discount}%</span>
																	    	<fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sell_list1.goods_sell_price - (goods_sell_list1.goods_sell_price * goods_sell_list1.goods_sell_discount) / 100}" /><span class="won">원</span>
																	    </span>
																		<span class="cost"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sell_list1.goods_sell_price}"/>원</span>
																	</c:if>
																</div>
															</li>
														</c:forEach>
													</ul>
													
												</div>
											
												<!--화살표 버튼-->
												<div class="slider-controls-direction">
										            <a href="#" id="prevBtn2" class="swiper-button-prev"></a>
										            <a href="#" id="nextBtn2" class="swiper-button-next"></a>
	        									</div>
        									</div>
										</div>
									</div><!--여기까지 bx-wrapper-->
								</div>
							</div>						
   						</div><!-- main_type2 end -->
    					
    					<!-- main_type2 start : 놓치면 후회할 가격 -->
    					
						<div class="main_type2" style="background-color: #f7f7f7;">
							<div class="product_list">
								<div class="tit_goods">
									<h3 class="tit">
										<a class="name" href="${pageContext.request.contextPath}/goods_list.do?type=sale"><span class="ico">놓치면 후회할 가격</span></a>
									</h3>
								</div>
								
								<div class="list_goods">
									<div class="bx-wrapper" style="max-width: 1050px; margin: 0px auto;">
										<div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 506px;">
											
											<div class="swiper2"> <!-- class 새로 하나줌 -->
												<div class="swiper-container">

													<ul data-title="놓치면 후회할 가격" data-section="theme_goods_20" class="swiper-wrapper" class="list" style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
														<c:forEach items="${goods_sell_list2}" var="goods_sell_list2" varStatus="status">
															<li data-index="${status.count}" class="swiper-slide" data-name="theme_goods_20" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
																<a class="thumb_goods">
																	<input type="hidden" value="${goods_sell_list2.goods_sell_no}">
																	<img src="${goods_sell_list2.goodsvo.category_goods_image_thumb}" class="thumb">
																</a>
																<div class="info_goods">
																	<input type="hidden" value="${goods_sell_list2.goods_sell_no}">
																	<span class="name"><a class="txt">${goods_sell_list2.goodsvo.category_goods_name}</a></span> 
																	
																	<c:set var="discount" value="${goods_sell_list2.goods_sell_discount}" />
																	<c:if test="${discount == 0}">
																	    <span class="price"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sell_list2.goods_sell_price}"/><span class="won">원</span></span>
																	</c:if>
																	
																	<c:if test="${discount != 0}">
																	    <span class="price">
																	    	<span class="dc">${goods_sell_list2.goods_sell_discount}%</span>
																	    	<fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sell_list2.goods_sell_price - (goods_sell_list2.goods_sell_price * goods_sell_list2.goods_sell_discount) / 100}" /><span class="won">원</span>
																	    </span>
																		<span class="cost"><fmt:formatNumber type="number" maxFractionDigits="0" value="${goods_sell_list2.goods_sell_price}"/>원</span>
																	</c:if>
																</div>
															</li>
														</c:forEach>
													</ul>
												
													<!--화살표 버튼-->
													<div class="slider-controls-direction">
											            <a href="#" id="prevBtn2" class="swiper-button-prev"></a>
											            <a href="#" id="nextBtn2" class="swiper-button-next"></a>
	       											</div>
	       											
												</div>										
       										</div>	<!-- swiper2 end -->						
										</div>
									</div><!--여기까지 bx-wrapper-->
								</div>
							</div>
							<br><br><br><br><br><br>
						</div> <!--main_type2 두번째 end-->
    					<br><br><br>
    					
    					<!-- 현재 여기까지 정리했습니다 10/10 17:50 --경원 -->
    					<div>
							<div class="bnr_main">
								<a class="link" style="background-image: url(&quot;//img-cf.kurly.com/shop/data/main/5/pc_img_1629681489.jpg&quot;);">
								<span class="inner_link"><!----> <!----> <img src="//img-cf.kurly.com/shop/data/main/5/pc_img_1629681489.jpg"
										onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
								</span> <!----></a>
							</div>
						</div>
						
						<!-- 메인 중간 카테고리 부분  -->
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
										<span class="bg_shadow shadow_before"></span> 
										<span class="bg_shadow shadow_after"></span>
									</div>
									<div class="category">
										<ul class="list_category">
											<li data-start="155" data-end="196">
												<a data-no="907" href="#none" class="menu"> 채소 </a></li>
											<li data-start="221" data-end="317">
												<a data-no="908" href="#none" class="menu"> 과일·견과·쌀 </a></li>
											<li data-start="343" data-end="464">
												<a data-no="909" href="#none" class="menu"> 수산·해산·건어물 </a></li>
											<li data-start="489" data-end="564">
												<a data-no="910" href="#none" class="menu"> 정육·계란 </a></li>
											<li data-start="590" data-end="711">
												<a data-no="911" href="#none" class="menu"> 국·반찬·메인요리 </a></li>
											<li data-start="737" data-end="838">
												<a data-no="912" href="#none" class="menu"> 샐러드·간편식 </a></li>
											<li data-start="862" data-end="958">
												<a data-no="913" href="#none" class="menu"> 면·양념·오일 </a></li>
											<li data-start="984" data-end="1126">
												<a data-no="914" href="#none" class="menu"> 생수·음료·우유·커피 </a></li>
											<li data-start="1151" data-end="1247">
												<a data-no="249" href="#none" class="menu"> 간식·과자·떡 </a></li>
											<li data-start="1273" data-end="1407">
												<a data-no="915" href="#none" class="menu"> 베이커리·치즈·델리 </a></li>
											<li data-start="1937" data-end="2004">
												<a data-no="916" href="#none" class="menu"> 주방용품 </a></li>
											<!---->
										</ul>
									</div>
								</div>
   								<!-- MD의 추천 밑 카테고리 클릭 이벤트 -->
											<script>
												var menu = document
														.getElementsByClassName("menu");

												function handleClick(event) {
													console
															.log(event.target);
													console
															.log(event.target.classList);

													if (event.target.classList[1] === "clicked") {
														event.target.classList
																.remove("clicked");
													} else {
														for (var i = 0; i < menu.length; i++) {
															menu[i].classList
																	.remove("clicked");
														}
														event.target.classList
																.add("clicked");
													}
												}

												function init() {
													for (var i = 0; i < menu.length; i++) {
														menu[i]
																.addEventListener(
																		"click",
																		handleClick);
													}
												}
												init();
											</script>

											<div class="list_goods">
									<div class="bx-wrapper" style="max-width: 1050px; margin: 0px auto;">
										<div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 462px;">
										
										<div class="swiper3"> <!-- swiper3 class 새로 하나줌 만드는 순간 기존 화살표 사라짐..-->
											<div class="swiper-container">
										
											<ul data-title="MD의 추천" data-section="md_choice" class="swiper-wrapper" class="list" style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
												<li data-index="1" class="swiper-slide" data-name="md_choice" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
												<a class="thumb_goods">
														<!---->
														<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII=" alt="상품이미지" class="thumb"
														style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1604387610751l0.jpg&quot;);">
												</a>
													<div class="info_goods">
														<span class="name"><a class="txt">[더슬로우메이드] 쫀득 찰호팡 3종</a></span> 
														<span class="price"><span class="dc">35%</span>4,290원</span> 
														<span class="cost">6,600원</span>
													</div>
												</li>
												<li data-index="2" class="swiper-slide" data-name="md_choice" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
												<a class="thumb_goods">
														<!---->
														<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
														alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/153750968679l0.jpg&quot;);">
												</a>
													<div class="info_goods">
														<span class="name"><a class="txt">[하겐다즈]파인트 피넛버터 크런치</a></span> 
														<span class="price"><!---->7,900원</span>
														<!---->
													</div></li>
												<li data-index="3" class="swiper-slide" class="cut" data-name="md_choice" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
												<a class="thumb_goods">
														<!----> 
														<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
														alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1507700947181l0.jpg&quot;);">
												</a>
													<div class="info_goods">
														<span class="name"><a class="txt">[하겐다즈] 파인트 7종</a></span> 
														<span class="price"><!---->7,900원</span>
														<!---->
													</div></li>
												<li data-index="4" class="swiper-slide" data-name="md_choice" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
												<a class="thumb_goods">
														<!----> 
														<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
														alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1614922858183l0.jpg&quot;);">
												</a>
													<div class="info_goods">
														<span class="name"><a class="txt">[라고] 이탈리안 도넛 4종</a></span> 
														<span class="price"><!---->3,180원</span>
														<!---->
													</div></li>
												<li data-index="5" class="swiper-slide" data-name="md_choice" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
												<a class="thumb_goods">
														<!----> 
														<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
														alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1549602414483l0.jpg&quot;);">
												</a>
													<div class="info_goods">
														<span class="name"><a class="txt">[기라델리] 인텐스다크바 5종</a></span> 
														<span class="price"><!---->6,000원</span>
														<!---->
													</div></li>
												<li data-index="6" class="swiper-slide" class="cut" data-name="md_choice" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
												<a class="thumb_goods">
														<!----> 
														<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
														alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1590044732503l0.jpg&quot;);">
												</a>
													<div class="info_goods">
														<span class="name"><a class="txt">[창억] 찰떡 3종</a></span> 
														<span class="price"><!---->6,600원</span>
														<!---->
													</div></li>
												<!---->
											</ul>
										</div>	
										<!--화살표 버튼-->
											<div class="slider-controls-direction">
								           		<a href="#" id="prevBtn2" class="swiper-button-prev"></a>
								            	<a href="#" id="nextBtn2" class="swiper-button-next"></a>
       										</div>
       									
										</div>
										</div> 		<!--swiper3 end-->	
										
										<!--  기존 화살표 버튼							
										<div class="bx-controls bx-has-controls-direction">
											<div class="bx-controls-direction">
												<a class="bx-prev disabled" href="">Prev</a>
												<a class="bx-next" href="">Next</a>
											</div>
										</div>
										-->		
									</div>
								</div><br><br>
									<div class="link_cate">
									<a class="link"><span class="ico">간식·과자·떡 전체보기</span></a>
								</div>
						
							
							
							</div>

						</div>
					</div>
					

						</div> <br><br>
						</div>
	    				</div>
				</div>
    		</div>
   			<div>					
							<!-- 여기부터 다음 슬라이드 카테고리 추가 -->
							
					<div>
							<div class="bnr_main">
								<a class="link" style="background-image: url(&quot;//img-cf.kurly.com/shop/data/main/15/pc_img_1629447526.jpg&quot;);">
								<span class="inner_link">
										<!----> <!----> 
										<img src="//img-cf.kurly.com/shop/data/main/15/pc_img_1629447526.jpg" onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
								</span> <!----></a>
							</div>
						</div>		
					</div><br><br><br><br> <br><br><br><br>
					
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
		
		//상위 카테고리 클릭시 상품 리스트 페이지 이동
		$(".swiper-container ul li").on("click", ".thumb_goods", function() {
		    var goods_sell_no = $(this).find('input').val();
		    
		    var url = "${pageContext.request.contextPath}/goods_list_detail.do";
			url = url + "?goods_sell_no=" + goods_sell_no;
			location.href = url;
		});
		
		//상위 카테고리 클릭시 상품 리스트 페이지 이동
		$(".swiper-container ul li").on("click", ".info_goods", function() {
		    var goods_sell_no = $(this).find('input').val();
		    
		    var url = "${pageContext.request.contextPath}/goods_list_detail.do";
			url = url + "?goods_sell_no=" + goods_sell_no;
			location.href = url;
		});
		
	});
	
</script>
    
	  <!-- layerDSR -->
      <%@ include file="/WEB-INF/views/layout/layerDSR.jsp"%>   
      <!-- footer -->
      <%@ include file="/WEB-INF/views/layout/footer.jsp"%>            
      </div> 
   </div>
   <a href="#top" id="pageTop">맨 위로가기</a>
</body>
</html>