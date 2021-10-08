<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버켓컬리 :: 내일의 장보기, 버켓컬리</title>


<link rel="shortcut icon"
	href="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/favicon_v2.webp"
	type="image/x-icon">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<link rel="stylesheet" type="text/css"
	href="resources/css/order_form.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">

</head>
<body>
	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">
			<!-- header -->
			<%@ include file="/WEB-INF/views/layout/header.jsp"%>
			<div class="tit_page">
				<h2 class="tit">주문서</h2>
			</div>
			<div id="main">
				<div id="content">
					<div class="user_form">
						<div id="popup-for-new-satbyul-user-web" class="service_delivery" style="display:none">
							<h2 class="tit_bnr">
								<span id="new-satbyul-region"></span>
								<span class="emph"><span class="in_emph">샛별배송 </span></span>
								서비스가 시작됩니다!
							</h2>
							<ul class="list">
								<li class="fst">
									<strong class="tit">이제부터 새벽에 배송됩니다.</strong>
									<strong class="emph" id="new-satbyul-order-end-time"></strong>까지 주문하시면<br>
									<strong class="emph" id="new-satbyul-order-delivery-time"></strong>까지 배송됩니다.
								</li>
								<li class="snd">
									<strong class="tit">공동현관 비밀번호를 입력해주세요.</strong>
									새벽 시간 공동 현관 출입이 불가한 경우,<br>
									<strong class="emph">공동현관 앞에 배송될 수 있습니다.</strong>
								</li>
							</ul>
						</div>
						<h2 class="tit_section fst">주문상품</h2>
						<div id="itemList" class="page_aticle order_goodslist" >
							<div class="info_product">
								<a class="btn" id="btn" href="#none">
									<span class="screen_out" id="screen" >펼침 / 닫힘</span>
								</a>
								<div class="short_info">${goods_cartShowVO[0].category_goods_name}</div>
							</div>
							<ul class="list_product">
							<c:forEach items="${goods_cartShowVO }" var="goods_cartShowVO">
								<li>
									<div class="thumb">
										<img src=${goods_cartShowVO.category_goods_image_thumb} alt="상품이미지">
									</div>
									<div class="name">
										<div class="inner_name">${goods_cartShowVO.category_goods_name}</div>
									</div>
									<div class="ea">${goods_cartShowVO.goods_cart_count}개</div>
									<div class="info_price">
										<span class="num">
											<span class="price"><fmt:parseNumber>${(goods_cartShowVO.goods_sell_price - goods_cartShowVO.goods_sell_price * (goods_cartShowVO.goods_sell_discount/100)) * goods_cartShowVO.goods_cart_count}</fmt:parseNumber>원</span>
										</span>
									</div>
								</li>
							</c:forEach>
							</ul>
						</div>
						<form id="form" name="frmOrder" action="/checkout/settle.php" method="post" onsubmit="return validateOrderForm(this)" class="order_view" novalidate="">
							<input type="hidden" name="platform" value="desktop">
							<input type="hidden" id="order_method" name="order_method" value="cart">
							<input type="hidden" name="fallback_on_delivery_fail_method" value="2">
							<input type="hidden" name="save_payment_method" value="true">
							<input type="hidden" name="settlement_price" value="0">
							<input type="hidden" name="settlekind_option" value="">
							<input type="hidden" id="package_benefit_apply" name="package_benefit_apply" value="false">
							<input type="hidden" id="package_type" name="package_type" value="DEFAULT">
							<div id="apply_coupon"></div>
							<input type="hidden" name="apr_coupon_data" value="">

							<h2 class="tit_section" id="titFocusOrderer">주문자 정보</h2>
							<div class="order_section data_orderer">
								<table class="goodsinfo_table ">
									<tbody>
									<tr class="fst">
										<th>보내는 분</th>
										<td>
											${memberVO.member_name }
											<input type="hidden" id="order_name" name="order_name" value=${memberVO.member_name }>
										</td>
									</tr>
									<tr>
										<th>휴대폰</th>
										<td>
											${memberVO.member_phone }
											<input type="hidden" id="order_phone" name="order_phone" value=${memberVO.member_phone }>
										</td>
									</tr>
									<tr>
										<th>이메일</th>
										<td>
											<input type="hidden" id="email" name="orderer_email" value="" option="regEmail">
											${memberVO.member_email }
											<p class="txt_guide">
												<span class="txt txt_case1">이메일을 통해 주문처리과정을 보내드립니다.</span>
												<span class="txt txt_case2">정보 변경은 <span class="txt_desc">마이컬리 &gt; 개인정보 수정</span> 메뉴에서 가능합니다.</span>
											</p>
										</td>
									</tr>
									</tbody>
								</table>
							</div>
							<input type="hidden" name="zonecode" id="zonecode" value="${memberVO.member_zipcode }">
							<input type="hidden" name="zipcode[]" id="zipcode0" value="">
							<input type="hidden" name="zipcode[]" id="zipcode1" value="">
							<input type="hidden" name="address" id="address" value=${memberVO.member_address1 }>
							<input type="hidden" name="road_address" id="road_address" value=${memberVO.member_address2 }>
							<input type="hidden" name="address_sub" id="address_sub" value="811-802">
							<input type="hidden" name="deliPoli" id="deliPoli" value="0">
							<input type="hidden" name="deliveryType" id="deliveryType" value="direct">
							<input type="hidden" id="means_inp" name="means" value="#802 0043">
							<input type="hidden" id="addressBookNo" name="addressbook_no" value="11029920">
							<h2 class="tit_section" id="divAddressWrapper">
								배송 정보
								<span class="desc">배송 휴무일: 샛별배송(휴무없음), 택배배송(일요일)</span>
							</h2>
							<div class="address_info">
								<a href="#none" id="btnLayerInfo" class="desc">배송지 변경 안내</a>
								<div class="layer_info on" id="layerInfo">
									<strong class="emph">장바구니, 홈</strong>에서
									<br>
									배송지를 변경할 수 있어요.
								</div>
							</div>
							<div class="order_section order_address" id="dataDelivery">
								<h3 href="#none" class="section_crux">
								배송지
								</h3>
								<div class="section_full">
									<span class="address" id="divDestination" style="">
										<span class="default on" id="addrDefault" data-text="기본배송지">기본배송지</span>
											<span class="addr" id="addrInfo">${memberVO.member_address1 } ${memberVO.member_address2 }</span>
											<span class="tag" id="addrTags">
											<span class="badge star" id="addrBadge">샛별배송</span>
										</span>
									</span>
								</div>
							</div>
							<div class="order_section order_reception" id="divReception" style="">
								<h3 class="section_crux">
								상세 정보
								</h3>
								<div class="section_full">
									<div class="receiving" id="receiverInfo">${memberVO.member_name }, ${memberVO.member_phone }</div>
									<div class="way" id="wayPlace">
										<span class="place" id="areaInfo">문 앞</span>
										<span class="txt" id="meanType">공동현관 비밀번호</span>
										<div class="message" id="deliveryMessage" style="">
											<span class="place" id="deliveryMessageTitle">배송완료 메시지</span>
											<span class="txt" id="deliveryMessageDetail">배송 직후</span>
										</div>
									</div>
									<button type="button" id="btnUpdateSubAddress" data-address-no="" class="btn default">수정</button>
								</div>
							</div>
							<div id="package-method" class="order_section reusable_packaging"></div>
							<div id="bnrOrder" class="bnr_order" style="display: block;">
							      <img src="https://res.kurly.com/kurly/img/2021/banner-order-paper_1050_107%402x.jpg" alt="All Paper Challenge">
							      <p class="screen_out">사람에게도 환경에도 더 이로운 배송 친환경 포장재 자세히 보기</p>
							 </div>

							<div id="divFrozen" class="order_section order_pack">
								<h3 class="section_crux">
								냉동상품 포장*
								</h3>
								<div class="section_full">
									<input type="hidden" name="isFrozenPack" value="">
									<label class="label_radio checked">
										<input type="radio" name="frozen_product_packing_option" value="0" checked="checked">
										<span class="ico"></span>
										종이박스 포장 (기본)
									</label>
									<label class="label_radio"><input type="radio" name="frozen_product_packing_option" value="1">
										<span class="ico"></span>
										스티로폼 박스 포장
									</label>
								</div>
							</div>
							
							<div class="tax_absolute">
								<div class="inner_sticky" id="sticky" style="top: 0px;">
									<h2 class="tit_section">결제금액</h2>
									<div id="orderitem_money_info">
										<dl class="amount fst">
											<dt class="tit">주문금액</dt>
											<dd class="price"><span id="productsTotalPrice">${goodsPrice }</span> 원</dd>
										</dl>
										<dl class="amount sub">
											<dt class="tit">상품금액</dt>
											<dd class="price"><span id="paper_goodsprice"></span> 원</dd>
										</dl>
										<dl class="amount sub">
											<dt class="tit">상품할인금액</dt>
											<dd class="price sales_area">
												<span class="pm_sign normal" style="display: none;">-</span>
												<span id="special_discount_amount" class="normal">${discountprice }</span>
												원
											</dd>
											<dd id="paper_sale" class="screen_out">0</dd>
										</dl>
										<dl class="amount">
											<dt class="tit">배송비</dt>
											<dd class="price delivery_area">
												<div id="paper_delivery_msg1" style="display: none;">
													<span class="pm_sign" style="display: none;">+</span>
													<span id="paper_delivery" class="">0</span>
													<span id="paper_delivery2" style="display:none">0</span>
													원
												</div>
												<div id="paper_delivery_msg2" style="display: block;">${deliveryFee } 원</div>
												<div id="paper_delivery_msg_extra" class="small" style="display:none;"></div>
												<span id="free_delivery_coupon_msg" class="screen_out">미적용</span>
												<input type="hidden" name="free_delivery" value="0">
											</dd>
										</dl>
										<dl class="amount">
											<dt class="tit">쿠폰할인금액</dt>
											<dd class="price coupon_area">
												<span class="pm_sign" style="display: none;">-</span>
												<span id="apr_coupon_data">0</span>
												원
												<input type="hidden" name="coupon" size="12" value="0" readonly="">
											</dd>
										</dl>
										<dl class="amount">
											<dt class="tit">적립금사용</dt>
											<dd class="price">
												<span class="num pay_sum" id="paper_reserves">0 원</span>
												<input type="hidden" name="coupon_emoney" size="12" value="0" readonly="">
											</dd>
										</dl>
										<dl class="amount lst">
											<dt class="tit">최종결제금액</dt>
											<dd class="price">
												<span id="paper_settlement">${ordersPrice }</span>
												<span class="won">원</span>
											</dd>
										</dl>
										<p class="reserve" style="display: block;">
											<span class="ico">적립</span> 구매 시 <span class="emph"><span id="expectAmount">186</span> 원 (<span class="ratio">5</span>%) 적립</span>
										</p>
									</div>
									<div id="msgEvent"></div>
								</div>
							</div>

							<div class="data_payment">
								<div class="tbl_left">
									<h2 class="tit_section">쿠폰 / 적립금</h2>
									<table class="goodsinfo_table">
										<tbody>
											<tr>
												<th>쿠폰 적용</th>
												<td>
													<div class="view_popselbox">
														<div id="popselboxView" class="select_box off">
															사용 가능 쿠폰 <span id="useCoupon">0</span>개 / 전체 <span id="haveCoupon">0</span>개
														</div>
														<div id="popSelbox" class="layer_coupon">
															<ul id="addpopSelList" class="list">
																<li class="fst checked ">
																	<div class="inner_item">
																		<span class="txt_tit default">쿠폰 적용 안 함</span>
																	</div>
																</li>
															</ul>
															<div class="coupon_list_default" style="display: none;">
																<li class="fst checked ">
																	<div class="inner_item">
																		<span class="txt_tit default">쿠폰 적용 안 함</span>
																	</div>
																</li>
															</div>
															<div id="listItem" style="display:none">
																<div class="inner_item">
																	<div class="item_row">
																		<div class="item_td left">
																		<span class="txt_apr"></span>
																		</div>
																		<div class="item_td">
																			<span class="txt_tit"></span>
																			<span class="txt_desc"></span>
																			<span class="txt_expire"></span>
																			<div id="apply_delivery_coupon" class="is_delivery_coupon" style="display: none;"></div> 
																			<div class="txt_apply_coupon" style="display: none;"></div> 
																			<ul id="payment_gateways" style="display: none;"></ul>
																			<div id="point_allowed" style="display: none;"></div>
																		</div>
																	</div>
																</div>
															</div>
															<button id="popSelboxCancel" type="button" class="btn btn_cancel screen_out">취소</button>
															<button id="popSelboxSelect" type="button" class="btn btn_conf screen_out">확인</button>
															<button id="popSelboxClose" type="button" class="btn_close screen_out">닫기</button>
														</div>
													</div>
													<div id="notavailableMsg" class="txt_notavailable" style="display: none;"></div>
													<p class="txt_inquiry">
														<a href="#none" class="link" id="happyTalk">쿠폰사용문의(카카오톡)</a>
													</p>
												</td>
											</tr>
											<tr class="emoney_use ">
												<th class="no_emoney">
													적립금 적용
													<input type="hidden" value="0" name="checkEmoney">
												</th>
												<td>
												사용 가능한 적립금이 없습니다. <input type="hidden" name="using_point" id="emoney" value="0">
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>


							<div class="data_method">
								<h2 class="tit_section" id="titFocusMethod">결제수단</h2>
								<input type="hidden" name="escrow" value="N">
								<table class="goodsinfo_table tbl_left">
									<tbody>
										<tr id="kakaopay_payment" class="payments fst">
											<th> 카카오페이 결제</th>
											<td>
												<label class="label_radio checked" id="cardBenefitKakaopay">
													<input type="radio" id="kakaopay_payment" name="settlekind" value="kakao-pay" checked="checked">
													<img src="https://res.kurly.com/pc/service/order/2105/logo_kakaopay.png" height="22" alt="카카오페이 결제">
													<span class="img_benefit" style="display: inline-block;">6만원 이상 결제 시 <span>3천원 즉시할인</span></span>
													<div class="info txt_kakao"></div>
													<div class="info_benefit">
														<span class="info">· 10/1 11시 ~ 10/17 23시, 카카오페이 ID당 1회(실명인증 기준), 선착순</span>
													</div>
												</label>
											</td>
										</tr>
										<tr class="payments card">
											<th>일반결제</th>
											<td class="noline" style="position:relative">
												<label class="label_radio" id="settlekindCard">
													<input type="radio" id="card_payments" name="settlekind" value="c">
													신용카드
												</label>
											</td>
										</tr>
										<tr class="card_detail" style="display: none;">
											<th></th>
											<td>
												<div id="cardSelect">
													<div>
														<div class="card_select">
															<div class="select_box">
																<strong class="tit" id="card">카드를 선택해주세요</strong> <!----> 
																<select name="lguplus_card_code" class="list" id="card_list">
																	<option disabled="disabled" value="">카드를 선택해주세요</option> 
																	<option value="61">현대</option>
																	<option value="41">신한</option>
																	<option value="31">비씨</option>
																	<option value="11">KB국민</option>
																	<option value="51">삼성</option>
																	<option value="36">씨티</option>
																	<option value="71">롯데</option>
																	<option value="21">하나(외환)</option>
																	<option value="91">NH채움</option>
																	<option value="33">우리</option>
																	<option value="34">수협</option>
																	<option value="46">광주</option>
																	<option value="35">전북</option>
																	<option value="42">제주</option>
																	<option value="62">신협체크</option>
																	<option value="38">MG새마을체크</option>
																	<option value="39">저축은행체크</option>
																	<option value="37">우체국카드</option>
																	<option value="30">KDB산업은행</option>
																	<option value="15">카카오뱅크</option>
																</select>
															</div> 
															<div class="select_box">
																<strong class="tit off">할부기간을 선택해주세요</strong> 
																<!----> 
																<!---->
															</div>
														</div> 
														<!----> 
														<div class="card_event">
															<div></div> 
															<div class="inner_card">
																<div>
																	<strong class="emph">· 무이자할부 유의사항</strong> 
																	은행계열/체크/기프트/선불/법인/개인사업자 기업카드는 제외
																</div>
															</div>
														</div>
													</div>
												</div>
											</td>
										</tr>
<!-- 										<tr class="payments"> -->
<!-- 											<th> CHAI 결제</th> -->
<!-- 											<td> -->
<!-- 												<label class="label_radio" id="cardBenefitChai"> -->
<!-- 													<input type="radio" name="settlekind" value="chai"> -->
<!-- 													<img src="https://res.kurly.com/pc/service/order/2106/ico_chai.png" height="22" alt="Chai 결제"> -->
<!-- 													<span class="img_benefit" style="display: inline-block;">2만원 이상 생애 첫 결제 시 <span>3천원 즉시할인</span></span> -->
<!-- 													<div class="info_benefit"> -->
<!-- 														<span class="info">· 10/1 0시 ~ 10/31 24시, 기간 내 차이 ID당 1회, 선착순</span> -->
<!-- 													</div> -->
<!-- 												</label> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<!-- 										<tr class="payments"> -->
<!-- 											<th> 토스 결제</th> -->
<!-- 											<td> -->
<!-- 												<label class="label_radio" id="cardBenefitToss"> -->
<!-- 													<input type="radio" name="settlekind" value="toss" > -->
<!-- 													<img src="https://res.kurly.com/pc/service/order/2106/ico_toss.png" height="22" alt="토스 결제"> -->
<!-- 													<span class="img_benefit"></span> -->
<!-- 													<div class="info_benefit"></div> -->
<!-- 												</label> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<!-- 										<tr class="payments"> -->
<!-- 											<th>네이버페이 결제</th> -->
<!-- 											<td class="noline"> -->
<!-- 												<label class="label_radio" id="cardBenefitNaverpay"> -->
<!-- 													<input type="radio" name="settlekind" value="n"> -->
<!-- 													<img src="https://res.kurly.com/pc/service/order/2106/ico_naverpay.png" height="22" alt="네이버 페이 로고"> -->
<!-- 													<span class="img_benefit"></span> -->
<!-- 													<div class="info_benefit"></div> -->
<!-- 												</label> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<!-- 										<tr class="payments"> -->
<!-- 										<th>PAYCO 결제</th> -->
<!-- 											<td> -->
<!-- 												<label class="label_radio" id="cardBenefitPayco"> -->
<!-- 													<input type="radio" name="settlekind" value="t"> -->
<!-- 													<img src="https://res.kurly.com/pc/service/order/2106/ico_payco.png" alt="PAYCO 간편결제" height="22"> -->
<!-- 													<span class="img_benefit" style="display: inline-block;">페이코 충전포인트로 결제할 때마다 <span>최대 5% 적립</span></span> -->
<!-- 													<div class="info_benefit"> -->
<!-- 														<span class="info">· 09/01 0시 ~ 10/31 24시, 기본 2% + 추가 3% 페이코 포인트 적립 (건당 최대 1,000원)<br>· 페이코로 15,000원 이상 구매 시 페이코 앱 내 1천원 쿠폰 적용 (1일 ID당 1회)<br>· *페이코 앱 내 쿠폰영역에서 마켓컬리 쿠폰 다운로드, 결제 시 페이코 앱 내 적용</span> -->
<!-- 													</div> -->
<!-- 												</label> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<!-- 										<tr class="payments"> -->
<!-- 											<th>스마일페이 결제</th> -->
<!-- 											<td> -->
<!-- 												<label class="label_radio" id="cardBenefitSmilepay"> -->
<!-- 													<input type="radio" name="settlekind" value="s"> -->
<!-- 													<img src="https://res.kurly.com/pc/service/order/2106/ico_smilepay.png" alt="스마일페이" height="22"> -->
<!-- 													<span class="img_benefit" style="display: inline-block;">2만원 이상 첫 결제 시 <span>결제금액의 10% 즉시 할인</span></span> -->
<!-- 													<div class="info_benefit"> -->
<!-- 														<span class="info">· 10/1 0시 ~ 10/31 24시, 스마일페이 ID당 1회 (실명인증 기준) 선착순<br>· 스마일페이로 첫 결제 시 결제금액의 10% (최대 3천원) 즉시 할인</span> -->
<!-- 													</div> -->
<!-- 												</label> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<!-- 										<tr class="payments phone"> -->
<!-- 											<th>휴대폰 결제</th> -->
<!-- 											<td> -->
<!-- 												<label class="label_radio"> -->
<!-- 													<input type="radio" name="settlekind" value="h" onclick="input_escrow(this,'N')"> -->
<!-- 													휴대폰 -->
<!-- 												</label> -->
<!-- 											</td> -->
<!-- 										</tr> -->
										<tr>
											<td class="txt_notice" colspan="2">
												<ul>
													<li>※ 카카오페이, 차이, 토스, 네이버페이, 페이코 결제 시, 결제하신 수단으로만 환불되는 점 양해부탁드립니다.</li>
													<li>※ 고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스 페이먼츠의 구매안전(에스크로) 서비스를 이용하실 수 있습니다.</li>
													<li>※ 보안강화로 Internet Explorer 8 미만 사용 시 결제창이 뜨지 않을 수 있습니다. <a href="/shop/board/view.php?id=notice&amp;no=207" target="_blank">공지 보러가기</a></li>
													<li id="coupon_typinfo" style="display:none">※ 무통장입금에서만 사용가능한 쿠폰을 선택하였습니다. 다른 결제 수단을 선택하시려면 쿠폰을 제거 하여 주십시오.</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<input type="hidden" name="undeliver_way" value="2">
								
								<div id="cash" style="display:none;">
									<h2 class="tit_section">현금영수증발급</h2>
									<table class="goodsinfo_table">
										<tbody>
											<tr>
												<th>현금영수증</th>
												<td>
													<label class="label_radio">
														<input type="radio" name="cashreceipt" value="Y" onclick="cash_required()">
														신청
													</label>
													<label class="label_radio checked">
														<input type="radio" name="cashreceipt" value="N" onclick="cash_required()" checked="">
														신청안함
													</label>
												</td>
											</tr>
											<tr>
												<th>발행용도</th>
												<td>
													<label class="label_radio checked">
														<input type="radio" name="cashuseopt" value="0" onclick="setUseopt()" checked="">
														소득공제용
													</label>
													<label class="label_radio">
														<input type="radio" name="cashuseopt" value="1" onclick="setUseopt()">
														지출증빙용
													</label>
												</td>
											</tr>
											<tr>
												<th>
													<span id="cert_0" style="display:block;">휴대폰번호</span>
													<span id="cert_1" style="display:none;">사업자번호</span>
												</th>
												<td style="padding-top:14px;">
													<input type="text" name="cashcertno" value="" option="regNum" class="line" placeholder="- 생략">
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div style="clear:both;"></div>
							<h2 class="tit_section" id="titFocusAgree">개인정보 수집/제공</h2>
							
							<table class="goodsinfo_table">
								<tbody>
									<tr>
										<td class="reg_agree">
											<div class="bg_dim"></div>
											<div class="check type_form">
												<label class="agree_check">
													<input type="checkbox" name="ordAgree" id="ordAgree" value="y" required="" fld_esssential="" label="결제 진행 필수 동의" msgr="결제 진행 필수 동의 내용에 동의하셔야 결제가 가능합니다.">
													<span class="ico"></span>
													결제 진행 필수 동의
												</label>
												<ul class="list_agree">
													<li>
														<span class="subject">개인정보 수집 · 이용 및 처리 동의 <span class="emph">(필수)</span></span>
														<a href="#terms" class="link_terms">약관보기</a>
													</li>
													<li id="pgTerms" style="display: none;">
														<span class="subject">결제대행 서비스 약관 동의 <span class="emph">(필수)</span></span>
														<a href="#pgTerms" class="link_terms">약관보기</a>
													</li>
												</ul>
<!-- 												<div class="layer layer_agree"> -->
<!-- 													<div class="choice_agree view_terms"> -->
<!-- 														<div class="inner_layer"> -->
<!-- 															<div class="in_layer" id="viewTerms"></div> -->
<!-- 															<button type="button" class="btn_ok">확인</button> -->
<!-- 															<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="choice_agree view_pg"> -->
<!-- 														<div class="inner_layer"> -->
<!-- 															<div class="in_layer" id="viewPg"></div> -->
<!-- 															<button type="button" class="btn_ok">확인</button> -->
<!-- 															<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="choice_agree view_layer"> -->
<!-- 														<div class="inner_layer"> -->
<!-- 															<div class="in_layer in_allpaper"> -->
<!-- 																<img src="https://res.kurly.com/pc/service/order/2012/bnr_allpaper_big_v2.png" alt="샛별배송은 왜 종이 포장재를 사용할까요?"> -->
<!-- 																<p class="screen_out"> -->
<!-- 																샛별배송을 사용하는 것만으로도 지구를 위하는 일에 함께하실 수 있어요. -->
<!-- 																 신선함을 지키는 보냉력과 내구성은 그대로! 다른 어떤 소재보다도 재활용성이 우수하니까! -->
<!-- 																폐기해도 빠르게 분해되니까! -->
<!-- 																</p> -->
<!-- 															</div> -->
<!-- 															<button type="button" class="btn_ok">확인</button> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
											</div>
										</td>
									</tr>
								</tbody>
							</table>

							<div id="paymentMethodResult">
								<input type="hidden" name="payment_method" value="">
							</div>
							<input type="button" id="payment" value="결제하기" class="btn_payment">
						</form>
						<ul class="notice_order">
							<li>직접 주문취소는 <span class="emph">‘입금확인’</span> 상태에서만 가능합니다.</li>
							<li>미성년자가 결제 시 법정대리인이 거래를 취소할 수 있습니다.</li>
							<li class="emph">상품 미 배송시, 결제수단으로 환불됩니다.</li>
						</ul>
						<div id="dynamic"></div>
					</div>
				</div>
				<div class="bg_loading" id="bgLoading" style="display: none;">
					<div class="loading_show"></div>
				</div>
			</div>
			<!-- layerDSR -->
			<%@ include file="/WEB-INF/views/layout/layerDSR.jsp"%>   
			<!-- footer -->
			<%@ include file="/WEB-INF/views/layout/footer.jsp"%>    
		</div>
	</div>
	
	<script>
	//결제방법 선택(카드 결제)
	$("#card_payments").on("click", function(){
		$("#cardBenefitKakaopay").removeClass('label_radio checked');
		$("#cardBenefitKakaopay").addClass('label_radio');
		$("#settlekindCard").addClass('label_radio checked');
		$(".card_detail").css({"display":"table-row"})
	})
	//결제방법 선택(카카오페이 결제)
	$("#kakaopay_payment").on("click", function(){
		$("#settlekindCard").removeClass('label_radio checked');
		$("#settlekindCard").addClass('label_radio');
		$(".card_detail").css({"display":"none"});
		$("#cardBenefitKakaopay").addClass('label_radio checked');
	})
	//카드 리스트 선택
	$("#card_list").on("click", function(){
		var card = $("#card_list option:selected").text();
		$("#card").text(card);
		
	})
	
	//결제 동의 확인
	$("#payment").on("click", function(){
		
		if($("#ordAgree").is(":checked") == false) {
			alert("결제동의를 체크해주세요."); 
			return;
		}else{
			var user_price = $("#paper_settlement").text();
			var delivery_fee = $("#paper_delivery_msg2").text();
			var user_orderTitle = '주문명:결제테스트';
			var user_email = $("#email").val();
			var user_orderName = $("#order_name").val();
			var user_orderPhone = $("#order_phone").val();
			var user_address = $("#addrInfo").text();
			var user_zipcode = $("#zonecode").val();
			
			console.log(user_orderName);
			console.log(user_orderPhone);
			console.log(user_address);
			console.log(delivery_fee);
			
			var IMP = window.IMP; // 생략가능
			IMP.init('imp16410680');
			// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
			IMP.request_pay({
				pg : 'inicis', // version 1.1.0부터 지원.
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : user_orderTitle,
				amount : user_price,
				buyer_email : user_email,
				buyer_name : user_orderName,
				buyer_tel : user_orderPhone,
				buyer_addr : user_address,
				buyer_postcode : user_zipcode,
				m_redirect_url : 'https://www.yourdomain.com/payments/complete'
			
			}, function(rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					var apply_num = rsp.apply_num;
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					$.ajax({
						url: '/approval.do',
						type: 'GET',
						dataType: 'text',
						data: {"apply_num":apply_num, "order_name":user_orderName, "order_phone":user_orderPhone, "order_address":user_address,
							"order_goods_price":user_price, "delivery_fee":delivery_fee},// data:{"cart_no"} 괄호
						
						success: function(data){
							console.log(data);
						},// success 괄호
						error: function(){
							alert("에러");
						}
					});
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});
		}
		
	
		
	})
	
	$("#btn").on("click", function(){
		$("#itemList").toggleClass('on');
		var list = $('#itemList').attr('class');;
		console.log(list);
		if(list == "page_aticle order_goodslist on"){
			$('.short_info').css({"display":"none"});
			$('.list_product').css({"display":"block"});
		}else{
			$('.list_product').css({"display":"none"});
			$('.short_info').css({"display":"block"});
		}
		
	})
	
	
	
</script> 
</body>
</html>

			