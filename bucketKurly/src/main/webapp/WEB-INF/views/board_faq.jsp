<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/faq.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">

<title>faq</title>
</head>
<body>
<div id="wrap" class="">
   <div id="pos_scroll"></div>
   	<div id="container">
      <!-- header -->
      <%@ include file="/WEB-INF/views/layout/header.jsp"%>
   
      <!-- main -->
        <div id="main">
			<div id="content">
		
				<div class="page_aticle aticle_type2">
					<div id="snb" class="snb_cc">
						<h2 class="tit_snb">고객센터</h2>
							<div class="inner_snb">
								<ul class="list_menu">
											<li class="on"><a href="${contextPath}/bucketkurly/board_notice.do" class="board_notice">공지사항</a><br>
										<!-- <a href="#none"
												onclick="KurlyTrackerLink('/WEB_INF/view/layout/board_notice.jsp?id=board_notice', 'select_service_notice_list')">공지사항</a> -->
											</li>
											<li><a href="${contextPath}/bucketkurly/faq.do" class="faq">자주하는 질문</a><br>
										<!-- <a href="#none"
												onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_service_frequently_qna')">자주하는 질문</a></li> -->
											<li><a href="${contextPath}/bucketkurly/board_qna.do" class="board_qna">1:1 문의</a><br>
										<!-- <a href="#none"
												onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_service_personal_inquiry_history')">1:1 문의</a></li> -->
								</ul>
							</div>
								<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna"
									class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span>
									1:1 문의하기</a>
					</div>
						<form name=frmList id="form" method="get" action="?">
						<div class="page_section">
							<div class="head_aticle">
								<h2 class="tit">
									자주하는 질문 <span class="tit_sub">고객님들께서 가장 자주하시는 질문을 모두
										모았습니다.</span>
								</h2>
							</div>
								<div class="search_date">
									<a href="#none" class="btn_layer">선택</a>
									<ul class="layer_search">
										<li><a href="#none" @click="searchResult" data-value="01"
											data-selected="">회원문의</a></li>
										<li><a href="#none" @click="searchResult" data-value="02"
											data-selected="">주문/결제</a></li>
										<li><a href="#none" @click="searchResult" data-value="03"
											data-selected="">취소/교환/반품</a></li>
										<li><a href="#none" @click="searchResult" data-value="04"
											data-selected="">배송문의</a></li>
										<li><a href="#none" @click="searchResult" data-value="05"
											data-selected="">쿠폰/적립금</a></li>
										<li><a href="#none" @click="searchResult" data-value="07"
											data-selected="">서비스 이용 및 기타</a></li>
									</ul>
									<input type="hidden" name="sitemcd" value="">
									<script>
										var $targetBtn = $('.search_date .btn_layer');
										var $targetLayer = $('.search_date .layer_search');
										var $targetSelector = $('.layer_search a');
		
										$targetSelector.each(function() {
											if ($(this).data('selected')) {
												$targetBtn.text($(this)
														.data('selected'));
											}
										});
										$targetBtn.on('click', function(e) {
											e.preventDefault();
											$(this).toggleClass('on');
											$targetLayer.slideToggle(100);
										});
										$targetSelector.on('click', function(e) {
											e.preventDefault();
											var value = $(this).data('value');
											var text = $(this).text();
											$targetBtn.trigger('click').text(text);
											$('[name=sitemcd]').val(value);
											$('[name=frmList]').submit();
										});
									</script>
								</div>
	
							<div class="xans-element- xans-myshop xans-myshop-couponserial">
								<table width="100%" class="xans-board-listheader">
									<tbody>
										<tr>
											<th width=70 class="input_txt">번호</th>
											<th width=135 class="input_txt">카테고리</th>
											<th class="input_txt">제목</th>
										</tr>
									</tbody>
								</table>
								<div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_7">
											<tbody>
												<tr>
													<td width=70 align="center">68</td>
													<td width=135 align="center">회원문의</td>
													<td style="cursor: pointer">아이디와 비밀번호가 생각나지 않아요. 어떻게 찾을
														수 있나요?</td>
												</tr>
											</tbody>
										</table>
										<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/faq_a.gif"></th>
														<td>(PC) 오른쪽 위의 [로그인] > 화면 아래 [아이디 찾기] [비밀번호 찾기]<br />
															<br /> (모바일) 아래 탭에서 [마이컬리] > 로그인 화면 아래 [아이디 찾기] [비밀번호 찾기]<br />
															<br /> <br /> 를 통해 확인이 가능하며, 임시 비밀번호의 경우 회원가입시 등록하신 메일로
															발송이 됩니다.<br /> <br /> <br /> 가입시 기재한 메일 주소가 기억나지 않으시거나
															오류가 발생하는 경우, <br /> <br /> 고객행복센터(1644-1107) 또는 카카오톡으로 문의
															주시면 신속하게 도움 드리겠습니다.<br /> <br /> <br /> 상담시에는 고객님의
															개인정보보호를 위해 기존에 사용하시던 비밀번호는 안내가 불가하며, 개인정보 확인 후 임시비밀번호를
															설정해드립니다.
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_31">
											<tbody>
												<tr>
													<td width=70 align="center">67</td>
													<td width=135 align="center">주문/결제</td>
													<td style="cursor: pointer">(샛별배송) 어제 주문했는데 오늘 아침에 배송이 안
														됐어요. 왜 그런가요?</td>
												</tr>
											<tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/faq_a.gif"></th>
														<td>주문 마감시간 이후의 샛별배송 주문건은 다다음날 새벽에 배송됩니다.<br /> [샛별배송
															주문 마감시간]<br /> · 서울, 경기, 인천, 충청, 대전 : 밤 11시 <br /> · 대구 :
															밤 8시<br /> <br /> <br /> <br /> (PC) 홈페이지 상단 고객님 성함
															(마이컬리) > 나의 주문내역 > 주문내역상세<br /> (모바일) 마이컬리 > 주문 내역 >
															주문내역상세<br /> 에서 결제완료시간을 확인해주세요. <br /> <br /> <br /> ※
															만일, 전일자 주문 마감시간 이전에 결제했음에도 불구하고 배송이 안 되었을 경우, 고객센터
															(1644-1107) 또는 1:1 문의에 문의 남겨주세요.<br />
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_97">
											<tbody>
												<tr>
													<td width=70 align="center">66</td>
													<td width=135 align="center">취소/교환/반품</td>
													<td style="cursor: pointer">교환 또는 반품신청 시에 사진을 첨부해야 하나요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/faq_a.gif"></th>
														<td>상품의 하자 등의 사유로 교환 또는 반품을 신청하시는 경우, 1:1 문의 또는 카카오톡
															문의에 해당 사항을 확인할 수 있는 사진 첨부를 부탁드립니다. <br /> <br /> <br />
															구매하신 상품의 문제 상황을 확인할 수 있는 당시의 상세한 사진일 수록, 보다 신속하고 정확한 안내를
															받으실수 있습니다. <br /> <br /> <br /> 고객님의 소중한 말씀과 사진은 해당
															담당부서로 공유되며, 이를 바탕으로 더 나은 품질의 상품으로 제공드리도록 하겠습니다.
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_109">
											<tbody>
												<tr>
													<td width=70 align="center">65</td>
													<td width=135 align="center">서비스 이용 및 기타</td>
													<td style="cursor: pointer">장바구니 상품은 언제까지 보관이 되나요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>장바구니 상품은 최대 90일간 저장됩니다. <br /> <br /> 90일동안 구매하지
															않는다면, 해당 상품은 장바구니에서 소멸되오니, 이용에 참고 부탁드립니다. <br />
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_118">
											<tbody>
												<tr>
													<td width=70 align="center">64</td>
													<td width=135 align="center">배송문의</td>
													<td style="cursor: pointer">배송은 언제 되나요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>샛별배송의 경우 주문 마감시간 전까지 주문하시면 다음날 아침에 도착합니다. (주 7일 배송)<br />
															-서울, 경기, 인천, 충청, 대전 샛별배송지역 : 밤 11시 전까지 주문시 다음날 아침 7시 전 수령<br />
															-대구 샛별배송 지역 : 밤 8시 전까지 주문시 다음날 아침 8시 전 수령 <br /> <br />
															택배배송의 경우 밤 8시 전까지 주문하시면 다음날 밤 12시 전에 도착합니다. (토요일 주문 불가) 월~토
															배송 (일요일, 공휴일 휴무) <br /> <br /> *단, 배송 과정 중 기상 악화 및 도로 교통
															상황에 따라 부득이하게 지연 배송이 발생될 수 있습니다.
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_120">
											<tbody>
												<tr>
													<td width=70 align="center">63</td>
													<td width=135 align="center">쿠폰/적립금</td>
													<td style="cursor: pointer">쿠폰은 어떻게 적용(결제시)/복원(환불시)되나요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>상품 주문시 일부 금액을 쿠폰으로 결제하실 경우, 쿠폰은 쿠폰이 적용되는 각 상품의 가격
															비율에 따라 적용됩니다.<br /> 주문 전체를 취소하시는 경우 사용하신 쿠폰은 자동으로 복원되나, 주문
															중 일부를 취소 또는 환불 하시는 경우에는 자동으로 복원되지 않는 점 양해 부탁드립니다.<br /> <br />
															(단, 주문 취소 후 쿠폰 유효 기간이 종료되었다면, 쿠폰 만료로 복원되지 않는 점 참고 부탁드립니다.)<br />
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_13">
											<tbody>
												<tr>
													<td width=70 align="center">62</td>
													<td width=135 align="center">회원문의</td>
													<td style="cursor: pointer">주문하지 않았는데, 주문완료 메시지 또는 배송완료
														메시지를 받았습니다.</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>상품을 주문하신 고객님이 핸드폰 번호를 잘못 입력하시어 <br /> <br /> 주문하지
															않은 고객님께 문자가 발송되는 경우가 있으며,<br /> <br /> <br /> 지인분께서 고객님께
															선물하실 경우에는 수령자 번호로 배송완료 메세지가 발송되므로 선물배송일 가능성도 있습니다.<br /> <br />
															<br /> 자세한 사항은 고객행복센터(1644-1107)로 연락주시거나 [1:1문의] 또는 [카카오톡]
															으로 문의바랍니다.<br /> <br /> (PC) 홈페이지 하단 [1:1문의]<br /> <br />
															(모바일) 마이컬리 > 1:1 문의 또는 마이컬리 > 고객센터 > 카카오톡 문의
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_18">
											<tbody>
												<tr>
													<td width=70 align="center">61</td>
													<td width=135 align="center">취소/교환/반품</td>
													<td style="cursor: pointer">상품을 반품했는데 아직 카드취소가 되지 않았어요.
														어떻게 된 건가요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>카드환불의 경우 카드사 사정에 따라 환불 접수일로 부터 영업일 기준 3~7일 정도 소요될 수
															있습니다. <br /> <br /> (취소완료시 카드사에서 안내드리는 SMS는 고객님의 수신 설정여부에
															따라 미수신 될 수 있습니다)<br /> <br /> 자세한 사항은 카드사에 문의 부탁드리며, 7일
															이후에도 환불이 되지 않은 경우 1:1문의로 문의 부탁드립니다.
														</td>
													</tr>
												<tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_56">
											<tbody>
												<tr>
													<td width=70 align="center">60</td>
													<td width=135 align="center">서비스 이용 및 기타</td>
													<td style="cursor: pointer">내가 주문한 내역은 어떻게 확인하나요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>1. 컬리 회원이신 경우<br /> <br /> <br /> 로그인 후,<br />
															<br /> (PC) 홈페이지 상단 고객님 성함 (마이컬리) > 주문내역<br /> <br />
															(모바일) 마이컬리 > 주문내역<br /> <br /> 에서 해당 주문번호를 눌러 확인 가능합니다.<br />
															<br /> <br /> <br /> <br /> 2. 비회원이신 경우<br /> <br />
															<br /> 비회원 주문확인 및 배송 조회는 모바일 앱과 웹, 혹은 고객센터 (1644-1107)에서
															가능합니다.<br /> <br /> (모바일 앱) 마이컬리 > 비회원 주문 조회, <br /> <br />
															(모바일 웹) 로그인 화면에서 비회원 탭을 누른 후 주문자명, 주문번호를 입력하여 조회하시면 됩니다.<br />
															<br /> (PC) 조회 불가합니다.
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_98">
											<tbody>
												<tr>
													<td width=70 align="center">59</td>
													<td width=135 align="center">주문/결제</td>
													<td style="cursor: pointer">(회원) 쿠폰 적용은 어떻게 하나요?</td>
												</tr>
											<tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>주문서에서 [4. 결제금액] 섹션 중 쿠폰칸을 눌러 조회하신 후 [확인] 버튼을 눌러 적용할
															수 있습니다. <br /> <br /> 한 주문건에 적립금과 쿠폰은 동시에 사용할 수 없으며 한
															주문건에 쿠폰은 한 장만 사용가능합니다. <br /> <br /> 쿠폰별로 사용법 및 조건이 다를 수
															있으니, 사용법 문의는 1:1 문의에 남겨주세요.
														</td>
													</tr>
												<tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_117">
											<tbody>
												<tr>
													<td width=70 align="center">58</td>
													<td width=135 align="center">배송문의</td>
													<td style="cursor: pointer">샛별배송이 지연된다고 연락을 받았어요!</td>
												</tr>
											<tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>이용에 불편을 드려 죄송합니다.<br /> <br /> 컬리는 고객 님께 약속 드린 배송
															시간을 준수하기 위하여 최선을 다하고 있으나, 배송 과정 중 악천후 및 도로 교통 상황 등의 이유로
															부득이하게 지연이 발생되는 경우가 드물게 발생합니다. <br /> <br /> 배송이 지연되는 경우
															해당 사실과 도착 예정 시간을 고객님께 문자로 안내 드리고 있으며, 최대한 신속히 배송 드릴 수 있도록
															노력하겠습니다. <br /> <br /> 혹, 배송에 대한 조치나 배송 현황 확인이 필요하신 경우에는
															컬리 고객행복센터, 1:1문의, 카카오톡 채팅 상담을 통해 문의 부탁 드립니다.
														</td>
													</tr>
												<tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_119">
											<tbody>
												<tr>
													<td width=70 align="center">57</td>
													<td width=135 align="center">쿠폰/적립금</td>
													<td style="cursor: pointer">적립금은 어떻게 적용(결제시)/복원(환불시)되나요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>상품 주문시 일부 금액을 적립금으로 결제하실 경우, 적립금은 각 상품의 가격 비율에 따라
															적용됩니다. <br /> 일부 상품의 주문 취소 또는 환불의 경우에도 그에 따라 복원됩니다
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_26">
											<tbody>
												<tr>
													<td width=70 align="center">56</td>
													<td width=135 align="center">주문/결제</td>
													<td style="cursor: pointer">(회원) 적립금 적용은 어떻게 하나요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>주문서에서 [4. 결제금액] 섹션 중 적립금 칸에 1원 단위로 적용이 가능합니다. <br />
															<br /> 보유 적립금 확인 후, 원하시는 금액 입력을 해주세요. <br /> <br /> 한
															주문건에 적립금과 쿠폰은 동시에 사용할 수 없습니다.
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_94">
											<tbody>
												<tr>
													<td width=70 align="center">55</td>
													<td width=135 align="center">취소/교환/반품</td>
													<td style="cursor: pointer">교환/반품 기준이 어떻게 되나요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>■ 상품에 문제가 있는 경우 <br /> <br /> 받으신 상품이 표시·광고 내용 또는
															계약 내용과 다른 경우에는 상품을 받은 날부터 3개월 이내, 그 사실을 알게 된 날부터 30일 이내에 교환
															및 환불을 요청하실 수 있습니다.<br /> 상품의 정확한 상태를 확인할 수 있도록 사진을 함께
															보내주시면 더 빠른 상담이 가능합니다. <br /> <br /> ※ 상품에 문제가 있는 것으로 확인되면
															배송비는 컬리가 부담합니다.<br /> <br /> <br /> ■ 단순 변심, 주문 착오의 경우<br />
															<br /> [신선/ 냉장/ 냉동 식품]<br /> 재판매가 불가한 상품의 특성상, 단순 변심, 주문
															착오 시 교환 및 반품이 어려운 점 양해 부탁드립니다. <br /> 상품에 따라 조금씩 맛이 다를 수
															있으며, 개인의 기호에 따라 같은 상품도 다르게 느끼실 수 있습니다.<br /> <br /> [유통기한
															30일 이상 식품 (신선/ 냉장/ 냉동 제외) & 기타 식품] <br /> 상품을 받은 날부터 7일
															이내에 고객행복센터로 문의해주세요.<br /> <br /> ※ 단순 변심으로 인한 교환 또는 환불의
															경우 고객님께서 배송비 6,000원을 부담하셔야 합니다.<br /> (주문 건 배송비를 결제하셨을 경우
															3,000원)<br /> <br /> <br /> <br /> ■ 교환·반품이 불가한 경우<br />
															<br /> ※ 다음에 해당하는 교환·환불 신청은 처리가 어려울 수 있으니 양해 부탁드립니다.<br />
															<br /> - 고객님의 책임 있는 사유로 상품이 멸실되거나 훼손된 경우<br /> (단, 상품의
															내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)<br /> - 고객님의 사용 또는 일부 소비로
															상품의 가치가 감소한 경우<br /> - 시간이 지나 다시 판매하기 곤란할 정도로 상품의가치가 감소한
															경우<br /> - 복제가 가능한 상품의 포장이 훼손된 경우<br /> - 고객님의 주문에 따라
															개별적으로 생산되는 상품의 제작이 이미 진행된 경우 <br />
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div>
										<table width=100% class="table_faq"
											onclick="view_content(this)" id="faq_96">
											<tbody>
												<tr>
													<td width=70 align="center">54</td>
													<td width=135 align="center">회원문의</td>
													<td style="cursor: pointer">회원 탈퇴 후 동일한 연락처로 재가입이 가능한가요?</td>
												</tr>
											</tbody>
										</table>
										<div
											style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
											<table cellpadding=0 cellspacing=0 border=0>
												<tbody>
													<tr valign="top">
														<th style="color: #0000bf; width: 40px; padding-top: 1px;"><img
															src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
														<td>회원탈퇴 후 30일 이내에는 동일한 연락처로 가입이 불가합니다.</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div style="padding: 1px; border-top: 1px solid #e6e6e6"></div>
								<div class="layout-pagination">
									<div class="pagediv">
										<a href="/shop/service/faq.php?&page=1"
											class="layout-pagination-button layout-pagination-first-page">맨
											처음 페이지로 가기</a><a href="/shop/service/faq.php?&page=1"
											class="layout-pagination-button layout-pagination-prev-page">이전
											페이지로 가기</a><strong
											class="layout-pagination-button layout-pagination-number __active">1</strong><a
											href="/shop/service/faq.php?&page=2"
											class="layout-pagination-button layout-pagination-number">2</a><a
											href="/shop/service/faq.php?&page=3"
											class="layout-pagination-button layout-pagination-number">3</a><a
											href="/shop/service/faq.php?&page=4"
											class="layout-pagination-button layout-pagination-number">4</a><a
											href="/shop/service/faq.php?&page=5"
											class="layout-pagination-button layout-pagination-number">5</a><a
											href="/shop/service/faq.php?&page=2"
											class="layout-pagination-button layout-pagination-next-page">다음
											페이지로 가기</a><a href="/shop/service/faq.php?&page=5"
											class="layout-pagination-button layout-pagination-last-page">맨
											끝 페이지로 가기</a>
									</div>
								</div>
								<table class="xans-board-search xans-board-search2">
									<tr>
										<td class=input_txt>&nbsp;</td>
										<td>
											<div class="search_bt">
												<input type="image"
													src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/search.png"
													align=absmiddle> <input type="text" NAME="sword"
													value="" required>
											</div>
										</td>
									</tr>
								</table>
							</div>
	
						</div>
					</form>
				</div>
				<script>
					var preContent;
	
					function view_content(obj) {
						var div = obj.parentNode;
	
						for (var i = 1, m = div.childNodes.length; i < m; i++) {
							if (div.childNodes[i].nodeType != 1)
								continue; // text node.
							else if (obj == div.childNodes[i])
								continue;
	
							obj = div.childNodes[i];
							break;
						}
	
						if (preContent && obj != preContent) {
							obj.style.display = "block";
							preContent.style.display = "none";
						} else if (preContent && obj == preContent)
							preContent.style.display = (preContent.style.display == "none" ? "block"
									: "none");
						else if (preContent == null)
							obj.style.display = "block";
	
						preContent = obj;
					}
	
					{ // 초기출력
						var no = "faq_";
						if (document.getElementById(no))
							view_content(document.getElementById(no));
					}
	
					// KM-1483 Amplitude 연동
					KurlyTracker.setScreenName('frequently_ask_question')
				</script>
			</div>
		</div>
   
      <!-- layerDSR -->
      <%@ include file="/WEB-INF/views/layout/layerDSR.jsp"%>
      
      
      <!-- footer -->
      <%@ include file="/WEB-INF/views/layout/footer.jsp"%>
            
      </div>
   
   </div>
   <a href="#top" id="pageTop">맨 위로가기</a>
</body>
</html>

