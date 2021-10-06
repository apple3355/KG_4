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

<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="shortcut icon" href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="resources/css/mainstyle.css">
<link rel="stylesheet" type="text/css" href="resources/css/login_find_pwd_mailSenderstyle.css">
</head>
<body>
<!-- header 시작 -->
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<!-- header 끝-->

				<div id="main">
					<div id="content">

						<div id="qnb" class="quick-navigation" style="top: 70px;">
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
        nowTime : '1630648220719',
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
								<a href="/shop/main/html.php?htmid=event/kurly.htm&name=lovers"
									class="link_menu ">등급별 혜택</a> <a
									href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a>
								<a href="/shop/goods/goods_review_best.php" class="link_menu ">베스트
									후기</a>
							</div>
							<div class="side_recent" style="display: none">
								<strong class="tit">최근 본 상품</strong>
								<div class="list_goods" data-height="209">
									<ul class="list"></ul>
								</div>
								<button type="button" class="btn btn_up off">최근 본 상품 위로
									올리기</button>
								<button type="button" class="btn btn_down">최근 본 상품 아래로
									내리기</button>
							</div>
							<script>
/**
 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
 */
var getGoodsRecent = (function(){
    var i, len, getGoodsRecent, item, _nowTime = '1630648220719';

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
    
})();
</script>
</div>
<div class="section_login">
	<h3 class="tit_login">비밀번호 찾기</h3>
  <div class="write_form find_view">
<strong class="tit_label">이메일 주소 인증</strong>
<input type="number" name="certKey" id="certKey" maxlength="8" placeholder="전송된 인증번호를 입력해주세요">
<p class="txt_email">
인증번호를 못 받았다면?&nbsp;
<a href="javascript:parent.resend_certKey(1, 'gksguswns95', '9059092d1ca1679fd9a4025d224943ce82d7270621bbce319b2a2c84f7f84cd9', 'pc');" class="emph">인증번호 재전송</a>
</p>
<button type="submit" class="btn_type1" onclick="checkcertKey()"><span class="txt_type">확인</span></button>
</div>	
</div>
		<script>
			$(".section_login input[type='submit']").click(function(){
				$("input[type='text']").each(function(){
					var input_txt = $(this).val();
					var input_trim_txt = input_txt.replace(/(^\s*)|(\s*$)/gi, "");
					$(this).val(input_trim_txt);
				})
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
			
			<!-- footer 시작 -->
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
<!-- footer 끝 -->

<script>
function checkcertKey(){
   certKey = $("#certKey").val();
   
   $.ajax({
       url: 'checkcertKey.do',
       type: 'POST',
       dataType: 'text', //서버로부터 내가 받는 데이터의 타입
       contentType : 'text/plain; charset=utf-8;',//내가 서버로 보내는 데이터의 타입
       data: certKey,

       success: function(data){
            if(data == 0){
            console.log("인증번호 일치");
            let url = '/find_pwd_setPass.do'
            location.replace(url);
            }else{
               console.log("인증번호 불일치");
               alert("잘못된 인증번호입니다. 다시 입력해주세요");
               $("#certKey").val("");
            }
       },
       error: function (){        
                         
       }
     });


}
</script> 
 
</body>
</html>