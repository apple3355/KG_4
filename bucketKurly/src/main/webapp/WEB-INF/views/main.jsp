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
.global_sticker .txt_sticker .emph_sticker {font-weight: 700;font-size: 14px;color: #fff;line-height: 30px;}

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
.main_type2 .list_goods .price{display:block;padding-top:9px;font-weight:800;font-size:16px;line-height:20px} 
.main_type2 .list_goods .dc{padding-right:8px;font-weight:800;font-size:16px;color:#fa622f;line-height:20px} 
.main_type2 .list_goods .cost{display:block;padding-top:5px;font-size:14px;color:#999;line-height:18px;text-decoration:line-through} 
   
#qnb{position:absolute;z-index:1;right:20px;top:70px;width:80px;font:normal 12px/16px "Noto Sans";color:#333;letter-spacing:-0.3px;transition:top 0.2s}
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
.category_type .category .list_category .clicked{border:1px solid #5f0081;background-color:#5f0080;font-weight:700;color:#fff}
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
		<div id="main">
			<div id="content">
			
			<!-- 우측 플로팅 배너 -->
			<div id="qnb" class="quick-navigation" style="top: 516px;height: 215px;">		
						<div class="bnr_qnb" id="brnQuick">
							<a href="/shop/board/view.php?id=notice&amp;no=64" id="brnQuickObj"> 
							<img class="thumb" src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%ED%80%84%EB%A6%AC%ED%8B%B0%EC%9E%88%EA%B2%8C+%EC%83%9B%EB%B3%84%EB%B0%B0%EC%86%A1.png"
								alt="퀄리티있게 샛별배송">
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
												<li data-index="13" style="float: left; list-style: none; position: relative; width: 1076px;" class="bx-clone" data-name="main_banner">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1596164134.jpg&quot;);">메인배너</a>
												<!----> </li>
												<li data-index="1" style="float: left; list-style: none; position: relative; width: 1076px;" data-name="main_banner">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1628814309.jpg&quot;);">메인배너</a>
												<!----></li>												
												<li data-index="2" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629898688.jpg&quot;);">메인배너</a>
												<!----></li>						
												<li data-index="3" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629798099.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="4" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629681452.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="5" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1630056496.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="6" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629421493.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="7" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629027622.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="8" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629878990.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="9" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1628583839.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="10" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1628814309.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="11" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1621561009.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="12" data-name="main_banner" style="float: left; list-style: none; position: relative; width: 1076px;">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1583112495.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="13" style="float: left; list-style: none; position: relative; width: 1076px;" data-name="main_banner">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1596164134.jpg&quot;);">메인배너</a>
												<!----></li>
												<li data-index="1" style="float: left; list-style: none; position: relative; width: 1076px;" class="bx-clone" data-name="main_banner">
													<a class="thumb_goods" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/pc_img_1629880774.jpg&quot;);">메인배너</a>
												<!----></li>	
        									</ul>
        									<!-- 메인 배너 화살표버튼 -->
											<div class="slider-controls-direction">
									            <a href="#" id="prevBtn"></a>
									            <a href="#" id="nextBtn"></a>
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
										<div class="bx-wrapper" style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 506px;">
											<div class="swiper1"> <!-- class 새로 하나줌 -->	
											<div class="swiper-container">
											
												<ul data-title="이 상품 어때요?" class="swiper-wrapper" data-section="today_recommendation" class="list" style="width: 2215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li data-index="1" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
													<a class="thumb_goods"><!----> 
													<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII=" 
													alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1456402788121l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">감자</a></span><span class="price"><span class="dc">35%</span>21,450원</span>
															<span class="cost">2,300원</span>
														</div></li>
														
													<li data-index="2" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span> 
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1472727892110l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">닭가슴살 200g</a></span><span class="price"><span class="dc">5%</span>3,090원</span>
															<span class="cost">6,980원</span>
														</div></li>
														
													<li data-index="3" class="swiper-slide" class="cut" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
													<a class="thumb_goods"><!----> 
													<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1487148793685l0.jpg&quot;);">
													</a>
														<div class="info_goods"><span class="name"><a class="txt">모짜렐라 치즈</a></span><span class="price"><!---->6.900원</span><!---->
														</div></li>
														
													<li data-index="4" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
													<a class="thumb_goods"><!----> 
													<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
													alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1489978895649l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">비트</a></span><span class="price"><span class="dc">20%</span>4,590원 </span> 
															<span class="cost">7,000원</span>
														</div></li>
														
													<li data-index="5" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
													<a class="thumb_goods"><!----> 
													<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
													alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1502159554437l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">캠핑 어묵탕</a></span><span class="price"><!---->4,990원</span><!---->
														</div></li>
													<li data-index="6" class="swiper-slide" class="cut" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span> 
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1503380535966l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">소고기 양지살</a></span> <span class="price"><span class="dc">5%</span>0원</span> 
															<span class="cost">0원</span>
														</div></li>
														
													<li data-index="7" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span> 
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1503380553152l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">소 불고기</a></span> <span class="price"><span class="dc">5%</span>0원
															</span> <span class="cost">0원</span>
														</div></li>
														
													<li data-index="8" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods"><!----> 
															<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1518501305566l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">추억의 오란다</a></span> <span class="price">
																<!---->0원
															</span>
															<!---->
														</div></li>
														
													<li data-index="9" class="swiper-slide" class="cut" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span> 
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1518511404883l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">참깨 꼬소봉</a></span> <span class="price"><span class="dc">5%</span>0원
															</span> <span class="cost">0원</span>
														</div></li>
														
													<li data-index="10" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"> <!----> 
														<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1622166405389l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[상하목장] 마시는 유기농 요구르트 5개입</a></span> <span class="price"><span class="dc">8%</span>2,208원 
															</span> <span class="cost">2,400원</span>
														</div></li>
													<li data-index="11" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span> 
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1623996225704l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">친환경 햇 양파 350g</a></span> <span class="price"><span class="dc">5%</span>1,605원
															</span> <span class="cost">1,690원</span>
														</div></li>
														
													<li data-index="12" class="swiper-slide" class="cut" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><!----> 
														<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1590727808213l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[풀무원] 생면식감 꽃게탕면</a></span> <span class="price"><span class="dc">12%</span>4,760원
															</span> <span class="cost">5,450원</span>
														</div></li>
														

													<li data-index="13" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span> 
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1605689066515l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">유기농 달수 고구마 1.5kg</a></span> <span class="price"><span class="dc">5%</span>13,205원
															</span> <span class="cost">13,900원</span>
														</div></li>
														
													<li data-index="14" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span> 
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1593752126181l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">저탄소 GAP 백도 복숭아 1.8kg 내외 (5~7입)</a></span> <span class="price"><span
																class="dc">5%</span>17,955원 </span> <span class="cost">18,900원</span>
														</div></li>
														
													<li data-index="15" class="swiper-slide" class="cut" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
													<a class="thumb_goods"><!----> 
													<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
														alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1618379552204l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[솔가] 오메가-3 700 (60일분)</a></span> <span class="price"><span class="dc">35%</span>29,900원
															</span> <span class="cost">46,000원</span>
														</div></li>
														
													<li data-index="16" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
													<a class="thumb_goods"><!----> 
													<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
														alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1609141385434l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">친환경 얼갈이 300g</a></span>
															<span class="price"><span class="dc">5%</span>1,890원
															</span> <span class="cost">1,990원</span>
														</div></li>
														
														
													<li data-index="17" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><!----> 
														<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1628558475434l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[상하목장] 유기농 우유</a></span> <span class="price"><span class="dc">30%</span>4,900원
															</span> <span class="cost">7,100원</span>
														</div></li>
														
													<li data-index="18" class="swiper-slide"class="cut" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span>  
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1456401122225l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">친환경 적양배추 1/2개</a></span> <span class="price"><span class="dc">5%</span>2,650원
															</span> <span class="cost">2,790원</span>
														</div></li>
														
													<li data-index="19" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
													<a class="thumb_goods"><!----> 
													<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
														alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1607935549902l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[돈마루] 한돈 앞다리살 2종 (냉장)</a></span> <span class="price"><!---->5,300원
															</span>
															<!---->
														</div></li>
														
													<li data-index="20" class="swiper-slide" data-name="today_recommendation" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span> 
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1463996906146l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">친환경 파채 200g</a></span>
															<span class="price"><span class="dc">5%</span>3,135원
															</span> <span class="cost">3,300원</span>
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
										</div>
									</div>
									<!--여기까지 bx-wrapper-->
								</div>
							</div>						
    					</div>
    				</div> <!-- main_type2 end -->
    				
    				<!-- main_type3 start : 얘네는 안움직임 -->
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
											<li data-index="1"><a class="thumb_goods"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF4AAABeCAQAAAAA22vlAAAAAXNSR0IArs4c6QAAACdJREFUeAHtwQENAAAAwiD7p34PBwwAAAAAAAAAAAAAAAAAAAAA4FpFZgABkfKClwAAAABJRU5ErkJggg=="
													alt="상품이미지" class="thumb" style="background-image: url(&quot;https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/1526289808717l0.jpg&quot;);"></a>
												<div class="info_goods">
													<!---->
													<div class="inner_info">
														<span class="name"><a class="txt">돼지고기 최대 8% 할인</a></span> 
														<span class="desc"><a class="txt">우리돼지 한돈</a></span>
													</div>
												</div></li>
											<li data-index="2"><a class="thumb_goods"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF4AAABeCAQAAAAA22vlAAAAAXNSR0IArs4c6QAAACdJREFUeAHtwQENAAAAwiD7p34PBwwAAAAAAAAAAAAAAAAAAAAA4FpFZgABkfKClwAAAABJRU5ErkJggg=="
													alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/main/3/pc_img_1629888864.jpg&quot;);"></a>
												<div class="info_goods">
													<!---->
													<div class="inner_info">
														<span class="name"><a class="txt">녹색한우 최대 15% 할인</a></span> 
														<span class="desc"><a class="txt">국내 최대 규모 한우 브랜드</a></span>
													</div>
												</div></li>
											<li data-index="3"><a class="thumb_goods"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF4AAABeCAQAAAAA22vlAAAAAXNSR0IArs4c6QAAACdJREFUeAHtwQENAAAAwiD7p34PBwwAAAAAAAAAAAAAAAAAAAAA4FpFZgABkfKClwAAAABJRU5ErkJggg=="
													alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/main/3/pc_img_1629890307.jpg&quot;);"></a>
												<div class="info_goods">
													<!---->
													<div class="inner_info">
														<span class="name"><a class="txt">매일유업 최대 30% 할인</a></span> 
														<span class="desc"><a class="txt">믿고 먹는 유제품</a></span>
													</div>
												</div></li>
											<!---->
										</ul>
									</div>
								</div>
							</div>
						</div> <!-- main_type3 end -->
    				
    				<!-- main_type2 start : 놓치면 후회할 가격 -->
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
										<div class="bx-wrapper" style="max-width: 1050px; margin: 0px auto;">
											<div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 506px;">
												
												<div class="swiper2"> <!-- class 새로 하나줌 -->
												<div class="swiper-container">

												<ul data-title="놓치면 후회할 가격" data-section="theme_goods_20" class="swiper-wrapper" class="list" style="width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													
													<li data-index="1" class="swiper-slide" data-name="theme_goods_20" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
															<!----> <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1608174435642l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[안원당] 특설렁탕</a></span> 
															<span class="price"><span class="dc">30%</span>6,230원 </span>
															<span class="cost">8,900원</span>
														</div></li>
														
													<li data-index="2" class="swiper-slide" data-name="theme_goods_20" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span>  
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1628752314739l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">[기획특가] 완도산 전복 1kg내외(생물)</a></span> <span class="price">
															<span class="dc">30%</span>29,900원 </span> 
															<span class="cost">43,000원</span>
														</div></li>
														
													<li data-index="3" class="swiper-slide" class="cut" data-name="theme_goods_20" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods">
															<!----> <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1626341348405l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[이고진] 마사지볼 3종</a></span> 
															<span class="price"><span class="dc">15%</span>4,165원</span> 
															<span class="cost">4,900원</span>
														</div></li>
														
													<li data-index="4" class="swiper-slide" data-name="theme_goods_20" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><!----> <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1582018750937l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[햇반] 백미밥 210g (1입/6입)</a></span> 
															<span class="price"><span class="dc">10%</span>6,120원 </span> 
															<span class="cost">6,800원</span>
														</div></li>
														
														
													<li data-index="5" class="swiper-slide" data-name="theme_goods_20" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;"><a
														class="thumb_goods"><!----> <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1590470191843l0.jpg&quot;);">
													</a>
														<div class="info_goods">
															<span class="name"><a class="txt">[브리도] 크로아상 냉동 생지 2종</a></span> 
															<span class="price"><span class="dc">20%</span>4,080원</span> 
															<span class="cost">5,100원</span>
														</div></li>
														
													<li data-index="6" class="swiper-slide"  class="cut" data-name="theme_goods_20" style="float: left; list-style: none; position: relative; width: 249px; margin-right: 18px;">
														<a class="thumb_goods">
														  <span class="global_sticker">
														    <span class="inner_sticker">
														      <span class="bg_sticker" style="background-color: rgb(189, 118, 255); opacity: 0.9;"></span>
																	<span class="txt_sticker"><span>
																	  <span class="emph_sticker">+20%쿠폰</span> 
																	  <!---->
																	  </span>
																	 </span>
																  </span>
																</span> 
																<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAACRCAQAAABjof6/AAAANUlEQVR4Ae3BgQAAAADDoPtTT+AI1QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAnfAsAAe7+tYwAAAAASUVORK5CYII="
															alt="상품이미지" class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1585888980538l0.jpg&quot;);"></a>
														<div class="info_goods">
															<span class="name"><a class="txt">냉동 은빛제주통갈치(특대) 600g 내외(냉동)_국내산</a></span> 
															<span class="price"><span class="dc">22%</span>31,122원</span> 
															<span class="cost">39,900원</span>
														</div></li>
													<!---->
												</ul>
												
												<!--화살표 버튼-->
												<div class="slider-controls-direction">
									            <a href="#" id="prevBtn2" class="swiper-button-prev"></a>
									            <a href="#" id="nextBtn2" class="swiper-button-next"></a>
        									</div>
											</div>										
        									</div>	<!-- swiper2 end -->						
										</div>
									</div>
									<!---->
								</div>
							</div><br><br><br><br>
						</div> <!--main_type2 두번째 end-->
    				
    					<div>
							<div class="bnr_main">
								<a class="link" style="background-image: url(&quot;//img-cf.kurly.com/shop/data/main/5/pc_img_1629681489.jpg&quot;);">
								<span class="inner_link"><!----> <!----> <img src="//img-cf.kurly.com/shop/data/main/5/pc_img_1629681489.jpg"
										onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
								</span> <!----></a>
							</div>
						</div>
						
						<!-- 메인 중간 카테고리 부분  -->
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
											<span class="bg_shadow shadow_before"></span> 
											<span class="bg_shadow shadow_after"></span>
										</div>
										<div class="category">
											<ul class="list_category">
												<li data-start="33" data-end="129">
													<a data-no="522" href="#none" class="menu"> 추석 선물세트 </a></li>
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
												<li data-start="1432" data-end="1499">
													<a data-no="032" href="#none" class="menu"> 건강식품 </a></li>
												<li data-start="1525" data-end="1626">
													<a data-no="918" href="#none" class="menu"> 생활용품·리빙 </a></li>
												<li data-start="1652" data-end="1778">
													<a data-no="233" href="#none" class="menu"> 스킨케어·메이크업 </a></li>
												<li data-start="1803" data-end="1912">
													<a data-no="012" href="#none" class="menu"> 헤어·바디·구강 </a></li>
												<li data-start="1937" data-end="2004">
													<a data-no="916" href="#none" class="menu"> 주방용품 </a></li>
												<li data-start="2029" data-end="2096">
													<a data-no="085" href="#none" class="menu"> 가전제품 </a></li>
												<li data-start="2121" data-end="2209">
													<a data-no="919" href="#none" class="menu"> 베이비·키즈 </a></li>
												<li data-start="2235" data-end="2302">
													<a data-no="991" href="#none" class="menu"> 반려동물 </a></li>
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
														</div></li>
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