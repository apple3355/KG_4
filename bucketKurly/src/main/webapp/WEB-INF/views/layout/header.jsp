<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 외부 스타일 시트 삽입 -->
<link rel="stylesheet" href="resources/common.css">
<title>header</title>


<script>
  $(document).ready(function(){
	  $('.menu1').hover(function(){
			$(".menu1").children().first().addClass("on");
			$(".gnb_sub").css("display","block");
		}, function() {
			$(".menu1").children().first().removeClass("on");
			$(".gnb_sub").css("display","none");
		});
		
		$('.gnb_sub').hover(function(){
			$(".menu1").children().first().addClass("on");
			$(".gnb_sub").css("display","block");
		}, function() {
			$(".menu1").children().first().removeClass("on");
			$(".gnb_sub").css("display","none");
		});

		$('.inner_sub ul li').hover(function(){
			$(this).addClass("current");
			$(".gnb_sub").css("width","438px" );
			$(".inner_sub ul").css("height","800px");	
		}, function() {
		    $(this).removeClass("current");
		    $(".gnb_sub").css("width","219px");
		});

	
	
	//스크롤 내렸을때 메뉴 고정
    var topBar = $("#main").offset(); //header 밑 main의 맨윗부분 절대위치
    
    $(window).scroll(function(){
        var docScrollY = $(document).scrollTop()
 		//스크롤 내린 위치가 main의 절대위치보다 높으면 fix(gnb_stop)추가
        if( docScrollY > topBar.top ) {
        	$('#gnb').addClass("gnb_stop");
        }else{
        	$('#gnb').removeClass("gnb_stop");
        }
    }); 
});
  
</script>


<style>
 /*여기추가*/
/*   #gnb .gnb_sub .sub_menu{background-color: #d8d8d8;} */
  #gnb .gnb_sub .sub_menu{position:relative;z-index:0;left:200px;top:0;width:248px;height:100%;padding:0 0 0 20px;background:url(https://res.kurly.com/images/common/bg_1_1.gif) repeat 0 0;opacity:0;transition:opacity 0.2s} 
  #gnb .gnb_sub .sub_menu .sub {font-size: 75%;line-height: 0;position: relative;vertical-align: baseline}
  #gnb .gnb_sub .sub_menu .sub{display:block;overflow:hidden;width:100%;height:40px;padding:0 0 0 14px;cursor:pointer}  
  
  #gnb .sub_menu li a{background-color:#f7f7f7; border:0; outline:0;}
 

  .menu {position: relative;z-index: 400;float: left;}
  .menu_login .link_menu {padding: 0 16px 0 15px;}
  .menu:after {content: "";float: right;width: 1px;height: 13px;margin-top: 12px;background-color: #d8d8d8;}
  .menu.lst:before {right: 0;}
  .menu.lst:before {content: "";position: absolute;top: 16px;width: 8px;height: 5px;background: url(https://res.kurly.com/pc/ico/1908/ico_down_8x5.png) no-repeat 0 0;}
  .menu.lst .link_menu {padding-right: 13px;}
  .sub{list-style-type: none;margin-block-start: 0px;margin-block-end: 0px;margin-inline-start: 0px;margin-inline-end: 0px;padding-inline-start: 40px;}
  .sub a {font-size: 12px;color: #404040;line-height: 24px;white-space: nowrap;cursor: pointer;}
  .lst .sub {left: auto;right: 0;}
  .sub {display: none;position: absolute;left: 0;top: 34px;width: 102px;padding: 3px 9px;border: 1px solid #ddd;background-color: #fff;}
  
  #gnb .gnb_sub{display:none;overflow:hidden;position:absolute;z-index:301;left:0;top:55px;width:213px;padding-top:1px}
  #gnb .gnb_sub .inner_sub{width:100%;border:1px solid #ddd;background:url(https://res.kurly.com/pc/service/common/1908/bg_gnb_sub_v3.png) repeat-y 0 0}
  #gnb .size_over{overflow-x:hidden;overflow-y:auto}
  #gnb .gnb_sub .gnb_menu{width:219px}
  #gnb .gnb_sub .gnb_menu li{width:100%;text-align:left}
  #gnb .gnb_sub .gnb_menu li:first-child{padding-top:0}
  #gnb .gnb_sub .menu{display:block;overflow:hidden;width:100%;height:40px;padding:8px 0 0 14px;cursor:pointer;background:#fffff}
  #gnb .gnb_sub .gnb_menu li:first-child .menu{height:39px;padding-top:7px}
  

  #gnb .gnb_sub .menu{background:#fffff;}
  
  
  #gnb .gnb_sub .current .menu{background:#f7f7f7;}
  #gnb .gnb_sub .current .txt,
  #gnb .gnb_sub .menu.on.off:hover .txt,
  #gnb .gnb_sub .menu.on .txt{font-weight:700;color:#5f0080}
  #gnb .gnb_sub .ico{float:left;width:24px;height:24px}
  #gnb .gnb_sub .ico img{width:24px;height:24px}
  #gnb .gnb_sub .ico .ico_off{display:block}
  #gnb .gnb_sub .ico .ico_on{display:none}
  #gnb .gnb_sub .current .ico_off,
  #gnb .gnb_sub .menu.on .ico_off,
  #gnb .gnb_sub .menu:hover .ico_off{display:none}
  #gnb .gnb_sub .current .ico_on,
  #gnb .gnb_sub .menu.on .ico_on,
  #gnb .gnb_sub .menu:hover .ico_on{display:block}
  #gnb .gnb_sub .ico_arrow{display:none;float:right;width:16px;height:17px;padding:6px 9px 0 0}
  #gnb .gnb_sub .ico_arrow img{width:7px;height:11px}
  #gnb .gnb_sub .current .ico_arrow{display:block}
  #gnb .gnb_sub .txt{float:left;padding:0 4px 0 10px;font-weight:400;font-size:14px;color:#333;line-height:22px;white-space:nowrap}
  #gnb .gnb_sub .ico_new{overflow:hidden;float:left;width:14px;height:14px;margin-top:5px;background-position:50% 50%;background-repeat:no-repeat;background-size:14px 14px;font-size:0;line-height:0;text-indent:-9999px}
  #gnb .gnb_sub .sub_menu{position:absolute;z-index:0;left:200px;top:0;width:248px;height:100%;padding:0 0 0 20px;background:url(https://res.kurly.com/images/common/bg_1_1.gif) repeat 0 0;opacity:0;transition:opacity 0.2s}
  #gnb .gnb_sub .current .sub_menu{z-index:1;opacity:1;transition:opacity 0.5s}
  
  #gnb .gnb_sub .sub_menu li:first-child{padding-top:0px; position:absolute}
  #gnb .gnb_sub .sub_menu .sub{display:block;overflow:hidden;height:40px;padding-left:20px;font-size:14px;color:#333;line-height:30px;cursor:pointer} /*line-height 18->30 수정*/
  #gnb .gnb_sub .sub_menu .sub:hover .name{border-bottom:1px solid #5f0080;font-weight:700;color:#5f0080}
  #gnb .gnb_sub .sub_menu .sub.on{font-weight:700;color:#5f0080}
  
  #gnb .gnb_sub .recommend{overflow:hidden;width:529px;padding:21px 0 0 40px}
  #gnb .gnb_sub .recommend li{float:left;width:120px;height:130px;padding:0 10px 0 0}
  #gnb .gnb_sub .recommend li:first-child{padding-top:0}
  #gnb .gnb_sub .recommend .sub{display:block;overflow:hidden;width:120px;height:130px;padding:0;cursor:pointer}
  #gnb .gnb_sub .recommend .thumb{display:block;width:110px;height:83.4px;margin-bottom:8px;background-position:50% 50%;background-repeat:no-repeat;background-size:cover}
  #gnb .gnb_sub .recommend .thumb img{width:110px;height:84px}
  #gnb .gnb_sub .recommend .name{font-size:14px;line-height:18px}
  

</style>


</head>
<body>
	<div id = "header">
	
		<!-- sessionScopre.id가 없으면 -->
		<c:if test="${empty sessionScope.id }"> 
			<div class="bnr_header" id="top-message">
				<a href="########" id="eventLanding"> 
				지금 가입하고 인기상품 <b>100원</b>에 받아가세요!<img src="https://res.kurly.com/pc/ico/1908/ico_arrow_fff_84x84.png" class="bnr_arr">
					<div class="bnr_top">
						<div class="inner_top_close">
							<button id="top-message-close" class="btn_top_bnr">가입하고 혜택받기</button>
						</div>
					</div>
				</a>
			</div>
			
			<div id="userMenu">
				<ul class="list_menu">
					<li class="menu none_sub menu_join"><a href="${pageContext.request.contextPath}/join.do" class="link_menu">회원가입</a></li>
					<li class="menu none_sub menu_login"> <a href="${pageContext.request.contextPath}/login.do" class="link_menu">로그인</a></li>
					<li class="menu lst"><a href="############" class="link_menu">고객센터</a>
						<ul class="sub">
							<li><a href="${pageContext.request.contextPath}/board_notice.do" onclick="####">공지사항</a></li>
							<li><a href="${pageContext.request.contextPath}/board_faq.do" onclick="#####">자주하는질문</a></li>
							<li><a href="${pageContext.request.contextPath}/login.do" onclick="alert('로그인을 하셔야 본 서비스를 이용하실 수 있습니다.');">1:1문의</a></li>
							<li><a href="############" onclick="######">상품제안</a></li>
							<li><a href="############" onclick="######">에코포장 피드백</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</c:if>
	
	
		<!-- sessionScopre.id가 있으면 -->
		<c:if test="${not empty sessionScope.id }"> 
			<div class="bnr_header bnr_top_friend" id="top-message">
				<div id="topBanner" class="on">
					<div id="bannerImc">
						<a href="https://www.kurly.com/shop/main/html.php?htmid=event/kurly.htm&amp;name=friend">
						친구 초대하면 친구도 나도 적립금 <b>5천원!</b><img src="https://res.kurly.com/pc/ico/1908/ico_arrow_333_84x84.png" class="bnr_arr">
						</a>
					</div>
					<div class="bnr_top">
						<div class="inner_top_close">
							<button id="top-message-close" class="btn_top_bnr">가입하고 혜택받기</button>
						</div>
					</div>
				</div>
			</div>
			
			<div id="userMenu">
				<ul class="list_menu">
					<li class="menu menu_user">
						<a class="link_menu grade_comm" onclick="#####">
							<span class="ico_grade grade0">${rank }</span> 
							<span class="txt"><span class="name">${name}</span>
							<span class="sir">님</span></span>
						</a> 
						<ul class="sub">
							<li><a href="########">주문 내역</a></li> 
							<li><a href="#none" onclick="#############">선물 내역</a></li> 
							<li><a href="#none" onclick="#############">배송지 관리</a></li> 
							<li><a href="#none">상품 후기</a></li> 
							<li><a>상품 문의</a></li> 
							<li><a href="#none" onclick="#############">적립금</a></li> 
							<li><a href="#none" onclick="#############">쿠폰</a> </li> 
							<li><a href="${pageContext.request.contextPath}/memberinfo.do">개인 정보 수정</a></li> 
							<li><a href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>
						</ul>
					</li>
					<li class="menu lst"><a href="############" class="link_menu">고객센터</a>
						<ul class="sub">
							<li><a href="${pageContext.request.contextPath}/board_notice.do" onclick="####">공지사항</a></li>
							<li><a href="${pageContext.request.contextPath}/board_faq.do" onclick="#####">자주하는질문</a></li>
							<li><a href="${pageContext.request.contextPath}/board_qna.do" onclick="#####">1:1문의</a></li>
							<li><a href="############" onclick="######">상품제안</a></li>
							<li><a href="############" onclick="######">에코포장 피드백</a></li>
						</ul>
					</li>
				</ul>
			</div>
			
		</c:if>
	
	
		<!-- 헤더 로고 -->
		<div id="headerLogo" class="layout-wrapper">
			<h1 class="logo">
				<a href="${pageContext.request.contextPath}/main.do" class="link_main"> <span id="gnbLogoContainer"></span>
					<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketkurly_logo.png" alt="마켓컬리 로고" style="display: block;">
				</a>
			</h1>
			<a href="########" onclick="#######" class="bnr_delivery"> 
				<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%83%9B%EB%B3%84_+%ED%83%9D%EB%B0%B0+%EB%B0%B0%EC%86%A1%EC%95%88%EB%82%B4.png"
					alt="샛별, 택배 배송안내" width="121" height="22">
			</a>
		</div>
	
	
	
		<!-- 메뉴바 - 카테고리, 검색어입력, 배송지설정, 장바구니 -->
		<div id="gnb" class="">
			<h2 class="screen_out">메뉴</h2>
			<div id="gnbMenu" class="gnb_kurly">
				<div class="inner_gnbkurly">
					<!-- 메인 메뉴바 -->
					<div class="gnb_main">
						<ul class="gnb">
						
							<!-- 메뉴 이름 (신상품,베스트,알뜰쇼핑,특가/혜택) -->
							<li class="menu1">
								<a href="#####"><span class="ico"></span><span class="txt">전체 카테고리</span></a>
							</li>
							<li class="menu2">
								<a href="${pageContext.request.contextPath}/goods_list.do?type=new?" class="link new "><span class="txt">신상품</span></a>
							</li>
							<li class="menu3">
								<a href="${pageContext.request.contextPath}/goods_list.do?type=best?"><span class="txt">베스트</span></a>
							</li>
							<li class="menu4">
								<a href="/shop/goods/goods_list.php?list=sale" class="link bargain "><span class="txt">알뜰쇼핑</span></a>
							</li>
							<li class="lst">
								<a href="/shop/goods/event.php?&amp;" class="link event "><span class="txt">특가/혜택</span></a>
							</li>
						</ul>
						
						<!-- 검색어 입력 박스 -->
						<div id="side_search" class="gnb_search">
							<form action="/shop/goods/goods_search.php?&amp;" onsubmit="return searchTracking(this)">
								<input type="hidden" name="searched" value="Y"> 
								<input type="hidden" name="log" value="1"> 
								<input type="hidden" name="skey" value="all"> 
								<input type="hidden"name="hid_pr_text" value=""> 
								<input type="hidden"name="hid_link_url" value=""> 
								<input type="hidden"id="edit" name="edit" value=""> 
								<input name="sword" type="text" id="sword" value="" required="required" label="검색어" placeholder="검색어를 입력해주세요." class="inp_search"> 
								<input type="image" src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png" class="btn_search">
								<div class="init">
									<button type="button" id="searchInit" class="btn_delete">검색어 삭제하기</button>
								</div>
							</form>
						</div>
						
						<!-- 장바구니 -->
						<div class="cart_count">
						
							<div class="inner_cartcount">
								<a href="#########" class="btn_cart">
									<span class="screen_out">장바구니</span> 
									<span id="cart_item_count" class="num realtime_cartcount" style="display: none;"></span>
								</a>
							</div>
							
							<div id="addMsgCart" class="msg_cart">
								<span class="point"></span>
								<div class="inner_msgcart">
									<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_1_1.gif" alt="" class="thumb">
									<p id="msgReaddedItem" class="desc">
										<span class="tit"></span> 
										<span class="txt"> 장바구니에 상품을 담았습니다. <span class="repeat">이미 담으신 상품이 있어 추가되었습니다.</span> </span>
									</p>
								</div>
							</div>
			
						</div>
						
						<!-- 배송지 설정 -->
						<div class="location_set">
							<button type="button" class="btn_location on">배송지 설정하기</button>
							<div class="layer_location">
								<div class="no_address">
									<span class="emph">배송지를 등록</span>하고<br> 구매 가능한 상품을 확인하세요!
									<div class="group_button double">
										<button type="button" class="btn default login">로그인</button>
										<button type="button" class="btn active searchAddress"><span class="ico"></span>주소검색</button>
									</div>
								</div>
							</div>
						</div>
						
					</div>
					
					<!-- 서브 메뉴바 (메인 안에 상세 카테고리) -->
					<div class="gnb_sub">
						<div class="inner_sub">
							<ul data-default="219" data-min="219" data-max="731"
								class="gnb_menu" style="height: auto;">
								<li>				
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(2).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98.png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit">
											<span class="txt">추석 선물세트</span> 
											<span class="ico_new" style="background-image: url(&quot;https://res.kurly.com/pc/service/common/1908/ico_new_42x42_v2.png&quot;);">new</span>
										</span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">=== 카테고리별 ===</span></a></li>
										<li><a class="sub"><span class="name">홍삼·즙·건강식품</span></a></li>
										<li><a class="sub"><span class="name">정육·가공육·건육</span></a></li>
										<li><a class="sub"><span class="name">수산·건어물·젓갈</span></a></li>
										<li><a class="sub"><span class="name">과일·견과·곡류</span></a></li>
										<li><a class="sub"><span class="name">디저트·치즈·다과류</span></a></li>
										<li><a class="sub"><span class="name">면·양념·오일·캔류</span></a></li>
										<li><a class="sub"><span class="name">생활·주방·뷰티</span></a></li>
										<li><a class="sub"><span class="name">간편식·반찬</span></a> </li>
										<li><a class="sub"><span class="name">=== 가격대별 ===</span></a></li>
										<li><a class="sub"><span class="name">20만원 이상</span></a></li>
										<li><a class="sub"><span class="name">10-20만원</span></a></li>
										<li><a class="sub"><span class="name">5-10만원</span></a></li>
										<li><a class="sub"><span class="name">3-5만원</span></a></li>
										<li><a class="sub"><span class="name">3만원 미만</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(1).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(3).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">채소</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">친환경</span></a></li>
										<li><a class="sub"><span class="name">고구마·감자·당근</span></a></li>
										<li><a class="sub"><span class="name">시금치·쌈채소·나물</span></a></li>
										<li><a class="sub"><span class="name">브로콜리·파프리카·양배추</span></a></li>
										<li><a class="sub"><span class="name">양파·대파·마늘·배추</span></a></li>
										<li><a class="sub"><span class="name">오이·호박·고추</span></a></li>
										<li><a class="sub"><span class="name">냉동·이색·간편채소</span></a></li>
										<li><a class="sub"><span class="name">콩나물·버섯</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(4).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(5).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">과일·견과·쌀</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">친환경</span></a></li>
										<li><a class="sub"><span class="name">제철과일</span></a></li>
										<li><a class="sub"><span class="name">국산과일</span></a></li>
										<li><a class="sub"><span class="name">수입과일</span></a></li>
										<li><a class="sub"><span class="name">간편과일</span></a></li>
										<li><a class="sub"><span class="name">냉동·건과일</span></a></li>
										<li><a class="sub"><span class="name">견과류</span></a></li>
										<li><a class="sub"><span class="name">쌀·잡곡</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
										<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(6).png" alt="카테고리 아이콘" class="ico_off"> 
										<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(7).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">수산·해산·건어물</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">제철수산</span></a></li>
										<li><a class="sub"><span class="name">생선류</span></a></li>
										<li><a class="sub"><span class="name">굴비·반건류</span></a></li>
										<li><a class="sub"><span class="name">오징어·낙지·문어</span></a></li>
										<li><a class="sub"><span class="name">새우·게·랍스터</span></a></li>
										<li><a class="sub"><span class="name">해산물·조개류</span></a></li>
										<li><a class="sub"><span class="name">수산가공품</span></a></li>
										<li><a class="sub"><span class="name">김·미역·해조류</span></a></li>
										<li><a class="sub"><span class="name">건어물·다시팩</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(8).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(9).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">정육·계란</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">국내산 소고기</span></a></li>
										<li><a class="sub"><span class="name">수입산 소고기</span></a></li>
										<li><a class="sub"><span class="name">돼지고기</span></a></li>
										<li><a class="sub"><span class="name">계란류</span></a></li>
										<li><a class="sub"><span class="name">닭·오리고기</span></a></li>
										<li><a class="sub"><span class="name">양념육·돈까스</span></a></li>
										<li><a class="sub"><span class="name">양고기</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(10).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(12).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">국·반찬·메인요리</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">국·탕·찌개</span></a></li>
										<li><a class="sub"><span class="name">밀키트·메인요리</span></a></li>
										<li><a class="sub"><span class="name">밑반찬</span></a></li>
										<li><a class="sub"><span class="name">김치·젓갈·장류</span></a></li>
										<li><a class="sub"><span class="name">두부·어묵·부침개</span></a></li>
										<li><a class="sub"><span class="name">베이컨·햄·통조림</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(11).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(13).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">샐러드·간편식</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">샐러드·닭가슴살</span></a></li>
										<li><a class="sub"><span class="name">도시락·밥류</span></a></li>
										<li><a class="sub"><span class="name">파스타·면류</span></a></li>
										<li><a class="sub"><span class="name">떡볶이·튀김·순대</span></a></li>
										<li><a class="sub"><span class="name">피자·핫도그·만두</span></a></li>
										<li><a class="sub"><span class="name">폭립·떡갈비·안주</span></a></li>
										<li><a class="sub"><span class="name">죽·스프·카레</span></a></li>
										<li><a class="sub"><span class="name">선식·시리얼</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(14).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(15).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">면·양념·오일</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">파스타·면류</span></a></li>
										<li><a class="sub"><span class="name">식초·소스·드레싱</span></a></li>
										<li><a class="sub"><span class="name">양념·액젓·장류</span></a></li>
										<li><a class="sub"><span class="name">식용유·참기름·오일</span></a></li>
										<li><a class="sub"><span class="name">소금·설탕·향신료</span></a></li>
										<li><a class="sub"><span class="name">밀가루·가루·믹스</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
									<span class="ico">
										<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(16).png" alt="카테고리 아이콘" class="ico_off"> 
										<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(17).png" alt="카테고리 아이콘" class="ico_on">
									</span> 
										<span class="tit"><span class="txt">생수·음료·우유·커피</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">생수·탄산수</span></a></li>
										<li><a class="sub"><span class="name">음료·주스</span></a></li>
										<li><a class="sub"><span class="name">우유·두유·요거트</span></a></li>
										<li><a class="sub"><span class="name">커피</span></a></li>
										<li><a class="sub"><span class="name">차</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(18).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(19).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">간식·과자·떡</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">과자·스낵·쿠키</span></a></li>
										<li><a class="sub"><span class="name">초콜릿·젤리·캔디</span></a></li>
										<li><a class="sub"><span class="name">떡·한과</span></a></li>
										<li><a class="sub"><span class="name">아이스크림</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(20).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(21).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">베이커리·치즈·델리</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">식빵·빵류</span></a></li>
										<li><a class="sub"><span class="name">잼·버터·스프레드</span></a></li>
										<li><a class="sub"><span class="name">케이크·파이·디저트</span></a></li>
										<li><a class="sub"><span class="name">치즈</span></a></li>
										<li><a class="sub"><span class="name">델리</span></a></li>
										<li><a class="sub"><span class="name">올리브·피클</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(22).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(23).png" alt="카테고리 아이콘" class="ico_on">								
										</span> 
										<span class="tit"><span class="txt">건강식품</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">영양제</span></a></li>
										<li><a class="sub"><span class="name">유산균</span></a></li>
										<li><a class="sub"><span class="name">홍삼·인삼·꿀</span></a></li>
										<li><a class="sub"><span class="name">건강즙·건강음료</span></a></li>
										<li><a class="sub"><span class="name">건강분말·건강환</span></a></li>
										<li><a class="sub"><span class="name">다이어트·이너뷰티</span></a></li>
										<li><a class="sub"><span class="name">유아동</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(24).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(25).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">생활용품·리빙</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">휴지·티슈</span></a></li>
										<li><a class="sub"><span class="name">여성·위생용품</span></a></li>
										<li><a class="sub"><span class="name">세제·청소용품</span></a></li>
										<li><a class="sub"><span class="name">화훼·인테리어소품</span></a></li>
										<li><a class="sub"><span class="name">의약외품·마스크</span></a></li>
										<li><a class="sub"><span class="name">생활잡화·문구</span></a></li>
										<li><a class="sub"><span class="name">캠핑용품</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(26).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(27).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">스킨케어·메이크업</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">스킨·미스트·패드</span></a></li>
										<li><a class="sub"><span class="name">에센스·앰플·로션</span></a></li>
										<li><a class="sub"><span class="name">크림·오일</span></a> </li>
										<li><a class="sub"><span class="name">클렌징</span></a> </li>
										<li><a class="sub"><span class="name">마스크팩</span></a></li>
										<li><a class="sub"><span class="name">선케어</span></a></li>
										<li><a class="sub"><span class="name">메이크업</span></a></li>
										<li><a class="sub"><span class="name">맨즈케어</span></a></li>
										<li><a class="sub"><span class="name">뷰티소품·기기</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(28).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(29).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">헤어·바디·구강</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">구강·면도</span></a></li>
										<li><a class="sub"><span class="name">샴푸·컨디셔너</span></a></li>
										<li><a class="sub"><span class="name">트리트먼트·팩</span></a></li>
										<li><a class="sub"><span class="name">헤어에센스·염모</span></a></li>
										<li><a class="sub"><span class="name">바디워시·스크럽</span></a></li>
										<li><a class="sub"><span class="name">바디로션·크림</span></a></li>
										<li><a class="sub"><span class="name">핸드·립·데오</span></a></li>
										<li><a class="sub"><span class="name">헤어·바디소품</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(30).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(31).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">주방용품</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">주방소모품·잡화</span></a></li>
										<li><a class="sub"><span class="name">주방·조리도구</span></a></li>
										<li><a class="sub"><span class="name">냄비·팬·솥</span></a></li>
										<li><a class="sub"><span class="name">보관용기·텀블러</span></a></li>
										<li><a class="sub"><span class="name">식기·테이블웨어</span></a></li>
										<li><a class="sub"><span class="name">컵·잔·커피도구</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(32).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(33).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">가전제품</span> </span></a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">주방가전</span></a></li>
										<li><a class="sub"><span class="name">생활가전</span></a></li>
										<li><a class="sub"><span class="name">계절가전</span></a></li>
										<li><a class="sub"><span class="name">디지털·PC</span></a></li>
										<li><a class="sub"><span class="name">대형·설치가전</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(34).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(35).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">베이비·키즈</span></span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">분유·간편 이유식</span></a></li>
										<li><a class="sub"><span class="name">이유식 재료</span></a></li>
										<li><a class="sub"><span class="name">간식·음식·음료</span></a></li>
										<li><a class="sub"><span class="name">건강식품</span></a></li>
										<li><a class="sub"><span class="name">이유·수유용품</span></a></li>
										<li><a class="sub"><span class="name">기저귀·물티슈</span></a></li>
										<li><a class="sub"><span class="name">세제·위생용품</span></a></li>
										<li><a class="sub"><span class="name">스킨·구강케어</span></a></li>
										<li><a class="sub"><span class="name">완구·잡화류</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(36).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(37).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">반려동물</span> </span>
									</a>
									<ul class="sub_menu">
										<li><a class="sub"><span class="name">강아지 간식</span></a></li>
										<li><a class="sub"><span class="name">강아지 주식</span></a></li>
										<li><a class="sub"><span class="name">고양이 간식</span></a></li>
										<li><a class="sub"><span class="name">고양이 주식</span></a></li>
										<li><a class="sub"><span class="name">반려동물 용품</span></a></li>
										<li><a class="sub"><span class="name">배변·위생</span></a></li>
										<li><a class="sub"><span class="name">소용량·샘플</span></a></li>
									</ul>
								</li>
								<li>
									<a class="menu">
										<span class="ico">
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(38).png" alt="카테고리 아이콘" class="ico_off"> 
											<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/%EC%B9%B4%ED%85%8C%EA%B3%A0%EB%A6%AC+%EC%95%84%EC%9D%B4%EC%BD%98+(39).png" alt="카테고리 아이콘" class="ico_on">
										</span> 
										<span class="tit"><span class="txt">컬리의 추천</span></span>
									</a>
									<ul class="sub_menu recommend">
										<li>
											<a class="sub">
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/f1fbbe98-127b-4586-b653-9caa932fa238&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span> 
												<span class="name">호텔 예약</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_cool_summer.1621587831.png&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span> 
												<span class="name">시원한 여름</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_diet.1585551225.jpg&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span> 
												<span class="name">식단관리</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_breakfast.1585549149.jpg&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span> 
												<span class="name">간편한 아침식사</span>
											</a>
										</li>
										<li>
											<a class="sub"><span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_best_210402.1617341016.png&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span> 
												<span class="name">재구매 BEST</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb"style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_3000_210303.1614667552.png&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png"  alt="">
												</span> 
												<span class="name">3천원의 행복</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kp_210108_4.1610088265.jpg&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span> 
												<span class="name">컬리마트</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb"style="background-image: url(&quot;https://img-cf.kurly.com/category/image/37194cb5-e9c1-4492-ac5a-385a1ff2b624&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt=""></span>
												<span class="name">대용량 상품</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_camping_210405.1617341339.png&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt=""></span> 
												<span class="name">캠핑</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_single.1594026881.jpg&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span> 
												<span class="name">1인 가구</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_vegan_210303.1614667589.png&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span>
												<span class="name">비건</span>
											</a>
										</li>
										<li>
											 <a class="sub">
											 	<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_offline_210303.1614666430.png&quot;);">
											 		<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
											 	</span> 
											 	<span class="name">오프라인 맛집</span>
											 </a>
										</li>
										<li>
											 <a class="sub">
												 <span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_kurly_s_210303.1614667608.png&quot;);">
													 <img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt=""></span> 
												 <span class="name">컬리가 만든 상품</span>
											 </a>
										</li>
										<li>
											 <a class="sub">
												 <span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumbnail_only_210303.1614667623.png&quot;);">
												 	<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt=""></span> 
												 <span class="name">Kurly Only</span>
											 </a>
										</li>
										<li>
											<a class="sub"> 
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/category/image/f8cf5fe6-4123-4147-981e-d7f889f9e316&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span> 
												<span class="name">KF365</span>
											</a>
										</li>
										<li>
											<a class="sub">
												<span class="thumb" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/category/thumb_kp_1PT_201222.1608611417.jpg&quot;);">
													<img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/bg_blink_236x179.png" alt="">
												</span> 
												<span class="name">1% Table</span>
											</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
</body>
</html>