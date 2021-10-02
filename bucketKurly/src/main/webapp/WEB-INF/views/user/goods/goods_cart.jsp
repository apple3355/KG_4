<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
	
		<input type="hidden" value="${id }" id="session_Id"/>
		
		 
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
				<div id="cartItemList" items="${countGoods_cart }" var="countGoods_cart"class="only_pc" style="min-height: 561px;">
					<div class="">
					<!-- div class "" or empty 시작 -->
					<div class="cart_item" id="cart_item">
						<div class="cart_select">
							<div class="inner_select">
								<label class="check">
								<input type="checkbox" id="checkAll" name="checkAll" checked="" onclick="selectAll(this)" value="">
								<span class="ico"></span>전체선택 (&nbsp;
								<span class="checkedCnt" id="checkedCnt" value="" ></span> / <span class="checkedCntAll" id="checkedCntAll" value="" ></span>&nbsp;)
								</label>
								<a href="#none" class="btn_delete" id="btn_delete" >선택삭제</a>
							</div>
						</div>
						
						<div class="box cold">
							<div class="tit_box">
								<h4 class="tit">
								<span class="inner_tit">
									<span class="ico">
									</span>냉장 상품
								</span>
								</h4>
								<button type="button" class="btn_dropup" id="btn_cold" >접기 / 펼치기</button>
							</div>
							<ul class="list" id="btn_dropup_cold">
							<c:forEach items="${goods_cartShowVO }" var="goods_cartShowVO">
								<li>
									<div class="item" id="item">
										<label class="check">
											<input type="checkbox" id="checkbox" name="chkItem" checked="" onclick='checkSelectAll()'>
												 <span class="ico"></span>
										</label>
										<div class="name">
											<div class="inner_name">
												<a href="#" class="package ">
												<c:out value="${goods_cartShowVO.category_goods_name}"/></a>
												<div class="info"></div>
											</div>
										</div>
										<div class="goods">
											<a href="#" class="thumb " style="background-image: url(&quot;${goods_cartShowVO.category_goods_image_thumb}&quot;);">상품이미지</a>
											<div class="price">
												<div class="in_price">
													<span class="selling"><c:out value="${goods_cartShowVO.goods_sell_price}"/>
														<span class="won">원</span>
													</span>
													<span class="cost"><c:out value="${goods_cartShowVO.goods_sell_price}"/>
														<span class="won">%</span>
													</span>
													<!-- 할인가 숨김표시 -->
													<input type="hidden" value="${goods_cartShowVO.goods_sell_discount}" />
													
													<p class="noti"></p>
												</div>
													<div class="stamper count">
                                      					<button type="button" id="${goods_cartShowVO.category_goods_name}_down" class="btn minus">-</button>
                                       					<!--원래 코드:  
                                       					<input type="number" id="stepperCounter" class="num" readonly="readonly" value="<c:out value="${goods_cartShowVO.goods_cart_count}"/>">  
                                       					--> 
                                        				<input type="number" name="stepperCounter" id="${goods_cartShowVO.category_goods_name}_cont" readonly="readonly" onfocus="this.blur()" class="num" value="${goods_cartShowVO.goods_cart_count}" >                                        
                                        				<button type="button" id="${goods_cartShowVO.goods_cart_count}_up" class="btn plus">+</button>
                                    				</div>
											</div>
										</div>
										<button type="button" id="${goods_cartShowVO.goods_cart_no}" class="btn_delete" onclick="btn_delete(this.id)">상품 삭제</button>
									</div>
								</li>
								</c:forEach>
							</ul>
						</div>
						<div class="box room">
							<div class="tit_box">
								<h4 class="tit">
								<span class="inner_tit">
									<span class="ico">
									</span>상온 상품
								</span>
								</h4>
								<button type="button" class="btn_dropup" id="btn_room" >접기 / 펼치기</button>
							</div>
							
							<ul class="list" id="btn_dropup_room">
							</ul>
							
						</div>
						<div class="box frozen">
							<div class="tit_box">
								<h4 class="tit">
								<span class="inner_tit">
									<span class="ico">
									</span>냉동 상품
								</span>
								</h4>
								<button type="button" class="btn_dropup" id="btn_frozen">접기 / 펼치기</button>
							</div>
							
							<ul class="list" id="btn_dropup_frozen">
							</ul>
							
						</div>
						
					<div class="cart_select">
						<div class="inner_select">
							<label class="check">
								<input type="checkbox" id="checkAll" name="checkAll" checked="" onclick="selectAll(this)" value="">
								<span class="ico"></span>전체선택 (&nbsp;
								<span class="checkedCnt" id="checkedCnt" value="" ></span> / <span class="checkedCntAll" id="checkedCntAll" value="" ></span>&nbsp;)
								</label>
							<a href="#none" class="btn_delete">선택삭제</a>
						</div>
					</div>
				</div>
			</div>
				<!-- 장바구니가 비어있을 때 -->
				<div class="empty" >
					<div class="cart_item no_item" id="cart_item no_item">
						<div class="cart_select">
							<div class="inner_select">
								<label class="check">
								<input type="checkbox" name="checkAll" checked="" disabled="">
								<span class="ico"></span>전체선택 (0/0)</label>
								<a href="#none" class="btn_delete">선택삭제</a>
							</div>
						</div>
						<div class="inner_empty">
							<span class="bg"></span>
							<p class="txt">장바구니에 담긴 상품이 없습니다</p>
							<div class="btn_submit  ">
								<button type="button" class="btn disabled">상품을 담아주세요</button>
							</div>
						</div>
						<div class="cart_select">
							<div class="inner_select">
								<label class="check">
									<input type="checkbox" name="checkAll" checked="" disabled="">
									<span class="ico"></span>전체선택 (0/0)</label>
									<a href="#none" class="btn_delete">선택삭제</a>
								</div>
							</div>
						</div>
					</div>	
					<!-- 이곳에 장바구니 페이지 코드 입력 -->
				<div class="cart_result">
					<div class="inner_result" style="top: 60px;">
						<div class="cart_delivery">
							<h3 class="tit">배송지</h3>
							<div class="no_address">
							<span class="emph">배송지를 입력</span>하고<br>배송유형을 확인해 보세요!
							<a href="#" class="btn default" id="btn default" onclick="findAddr()">
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

<!-- 장바구니 리스트 펴기/닫기 --> 
 
 <!-- 접기/펴기 냉장 -->
<script type="text/javascript">
$('#btn_cold').click(function(){
	if($(this).hasClass("off")){
		$(this).addClass("").removeClass("off");
		$('#btn_dropup_cold').css({'display' : 'none'});
	}else{
		$(this).addClass("off").removeClass("");
		$('#btn_dropup_cold').css({'display' : 'block'});
	}
});
</script>

 <!-- 접기/펴기 상온 -->
<script type="text/javascript">
$('#btn_room').click(function(){
	if($(this).hasClass("off")){
		$(this).addClass("").removeClass("off");
		$('#btn_dropup_room').css({'display' : 'none'});
	}else{
		$(this).addClass("off").removeClass("");
		$('#btn_dropup_room').css({'display' : 'block'});
	}
});
</script>

 <!-- 접기/펴기 냉동 -->
<script type="text/javascript">
$('#btn_frozen').click(function(){
	if($(this).hasClass("off")){
		$(this).addClass("").removeClass("off");
		$('#btn_dropup_frozen').css({'display' : 'none'});
	}else{
		$(this).addClass("off").removeClass("");
		$('#btn_dropup_frozen').css({'display' : 'block'});
	}
});
</script>
 
<!-- 장바구니 숫자 올리기/내리기 -->
 
 <script>
   $(document).on('click', '.minus', function() {
      let num = $(this).next().val();
      let goods_id = $(this).attr("id").split("_down")[0];
      if (num > 1) {
         $(this).next().val(--num);
         
         let afterPrice = $("#"+goods_id+"_price").text();
         afterPrice *= num / (num + 1);
         
         // 변경된 숫자 및 금액 반영 아직 안돌아감
         $("#"+goods_id+"_price").text(afterPrice);
         calc();
   
         //ajax 처리해야함
      }

   });
 
   $(document).on('click', '.plus', function() {
      let num = $(this).prev().val();
      let goods_id = $(this).attr("id").split("_up")[0];
      /* alert(num) */
      if (num < 1000) {
         $(this).prev().val(++num);

         let afterPrice = $("#"+goods_id+"_price").text();

         afterPrice *= num / (num - 1)
         
         // 변경된 숫자 및 금액 반영  아직 안돌아감
         $("#"+goods_id+"_price").text(afterPrice);
         calc();
         
         //ajax 처리해야함
         }
      });
   
 </script>
 

<!-- 장바구니 체크박스 *전체선택 수량 파악 안됨 -->
<script type="text/javascript">
   //장바구니 진입 시 default:전체선택
   $("#checkedCnt").html( ${fn:length(goods_cartShowVO )}) //선택
   $("#checkedCntAll").html( ${fn:length(goods_cartShowVO )})//전체

function checkSelectAll()  {
     // 전체 체크박스
     const checkboxes 
       = document.querySelectorAll('input[name="chkItem"]');
     $("#checkedCntAll").html(checkboxes.length); //전체
     // 선택된 체크박스
     const checked 
       = document.querySelectorAll('input[name="chkItem"]:checked');
     $("#checkedCnt").html(checked.length); //선택
     
     // select all 체크박스
     const selectAll 
       = document.querySelector('input[name="checkAll"]');
     $("#checkedCnt").html(checked.length); //선택
     
     if(checkboxes.length === checked.length)  { //전체선택일 때 
       selectAll.checked = true;

     }else {
       selectAll.checked = false;    
     } 
}

function selectAll(selectAll)  {
     const checkboxes 
        = document.getElementsByName('chkItem');
     
     checkboxes.forEach((checkbox) => {
       checkbox.checked = selectAll.checked 
     })
}
</script>

<!-- 장바구니 empty페이지 출력 or 장바구니 페이지 -->
<script type="text/javascript">
//$(document).ready(function(){
$(window).ready(function(){
	var checkedCntAll = 1;
	
	if(checkedCntAll.value == 0){
		$('#cart_item').css({'display' : 'none'});
	}else{
		$('.empty').css({'display' : 'none'});
	}
});
</script>

<!-- 장바구니 선택삭제 -->
<script type="text/javascript">
function btn_delete(id){
	var result = confirm("해당 품목을 삭제하시겠습니까?");
	
	if(result){
		$.ajax({
			url: '/deleteGoods_cart.do',
			type: 'GET',
			dataType: 'text',
			data: {"goods_cart_no":id},// data:{"cart_no"} 괄호
			
			success: function(data){
				console.log(data);
				location.replace('getGoods_cart.do');
			},// success 괄호
			error: function(){
				alert("에러");
			}// error 괄호
		});
	}
}
</script>

<!-- 주소검색 -->
<script>
function findAddr(){
	new daum.Postcode({
		oncomplete: function(data) {
			console.log(data);
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var roadAddr = data.roadAddress; // 도로명 주소 변수
			var jibunAddr = data.jibunAddress; // 지번 주소 변수
			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('zonecode').value = data.zonecode;
			if(roadAddr !== ''){
				document.getElementById("addr").value = roadAddr;
			}else if(jibunAddr !== ''){
				document.getElementById("addr").value = data.jibunAddr;
			}
			}
	}).open();
	}
</script>

<!-- 주문하기 버튼 활성/비활성 -->

</body>

</html>