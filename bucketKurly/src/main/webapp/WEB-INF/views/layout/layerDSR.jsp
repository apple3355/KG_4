<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layerDSR</title>
</head>
<body>
	<div id = "layerDSR">
		<div class="bg_dim"></div>
		<div class="in_layer">
		
			<!-- 샛별배송지역 배송안내 문구 -->
			<div class="inner_layer layer_star">
				<strong class="dsr_result">샛별배송 지역입니다.</strong>
				<div class="ani">
					<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_kurly.png"
					    src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="샛별배송 이미지">
				</div>
				<p class="dsr_desc default_cutoff_23_7">
					<strong class="emph">오늘 밤 11시 전</strong>까지 주문시<br> 
					<strong lass="emph">다음날 아침 7시</strong> 이전 도착합니다!
				</p>
				<p class="dsr_desc early_cutoff_20_8">
					<strong class="emph">오늘 밤 8시 전</strong>까지 주문시<br> 
					<strong class="emph">다음날 아침 8시</strong> 이전 도착합니다!
				</p>
			</div>
			
			
			<!-- 일반배송지역 배송안내 문구 -->
			<div class="inner_layer layer_normal">
				<strong class="dsr_result">택배배송 지역입니다.</strong>
				<div class="ani">
					<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_car.png"
						src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="택배배송 이미지">
				</div>
				<p class="dsr_desc">
					<strong class="emph">밤 8시 전</strong>까지 주문시<br> 
					<strong class="emph">다음날</strong> 도착합니다!
				</p>
				<p class="dsr_notice">일요일은 배송 휴무로 토요일에는 주문 불가</p>
			</div>
			
			
			<!-- 배송불가지역 안내 문구 -->
			<div class="inner_layer layer_none">
				<strong class="dsr_result">배송 불가 지역입니다.</strong>
				<div class="ani">
					<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_none.png"
						src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="배송불가 이미지">
				</div>
				<p class="dsr_desc">
					<strong class="emph">도로명 주소</strong>로 검색하셨다면,<br> 
					<strong class="emph">지번 주소(구 주소)</strong>로 다시 시도해 주세요.
				</p>
				<p class="dsr_notice">배송지역을 확장하도록 노력하겠습니다!</p>
			</div>
			
			
			<!-- 레이어 창 확인/취소버튼 -->
			<div class="layer_btn1">
				<button type="button" class="btn_close" onclick="#########">확인</button>
			</div>
			<button type="button" class="layer_close" onclick="#########"></button>
		</div>
	</div>
</body>
</html>