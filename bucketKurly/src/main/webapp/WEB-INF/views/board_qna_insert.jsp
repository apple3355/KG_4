<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/board_qna.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">

<title>board_qna</title>
</head>
<body>
	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">
			<!-- header -->
			<%@ include file="/WEB-INF/views/layout/header.jsp"%>

			<!-- content -->
			<div id="main">
				<div id="content">
					<!--  사이드 샛별배송택배안내 내용 및 스크립트 들어냄 -->
						
					<!-- 실제 내용 부분 -->
					<div class="page_aticle aticle_type2">
				
						<!--  왼쪽 메뉴  -->
						<div id="snb" class="snb_cc">
							<h2 class="tit_snb">고객센터</h2>
							<div class="inner_snb">
								<ul class="list_menu">
									<li><a href="#############" onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_service_notice_list')">공지사항</a></li>
									<li><a href="#############" onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_service_frequently_qna')">자주하는 질문</a></li>
									<li class="on"><a href="#############" onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_service_personal_inquiry_history')">1:1문의</a></li>
									<li><a href="#############" onclick="KurlyTrackerLink('/shop/main/html.php?htmid=mypage/bulk_order.htm', 'select_service_bulk_order')">대량주문 문의</a></li>
									<li><a href="#############" onclick="KurlyTrackerLink('/shop/mypage/offer.php', 'select_service_product_offer')">상품 제안</a></li>
									<li><a href="#############" onclick="KurlyTrackerLink('/shop/mypage/echo_packing.php', 'select_service_eco_packing_feedback')">에코포장 피드백</a></li>
								</ul>
							</div>
							
							<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
						</div>
						
						<!--  오른쪽 컨텐츠  -->
						<div class="page_section section_qna">
							<div class="head_aticle"><h2 class="tit">1:1 문의</h2></div>
							
							<div class="xans-board-write">
								<form name="fm" id="fm" method="post" action="/test/board_qna_insertDB.do" enctype="multipart/form-data" style="height: 100%;">
									<input type="hidden" name="mode" value="add_qna">
									<input type="hidden" name="board_qna_type" value="">
									<input type="hidden" name="sno" value="0">
									<table id="table_after" class="boardWrite2" width="100%">
										<colgroup><col width="14%" align="right"></colgroup>
										<tbody>
											<tr>
												<th class="input_txt">제목</th>
												<td>
													<select name="selectBox" label="질문유형" class="select" onchange="getSelectValue(this.form)">
														<option>선택해주세요.</option>
														<option>배송지연/불만</option>
														<option>컬리패스(무료배송)</option>
														<option>반품문의</option>
														<option>A/S문의</option>
														<option>환불문의</option>
														<option>주문결제문의</option>
														<option>회원정보문의</option>
														<option>취소문의</option>
														<option>교환문의</option>
														<option>상품정보문의</option>
														<option>기타문의</option>
													</select><br>
													
													<input type="text" name="board_qna_title" style="width:100%" label="제목" >
												</td>
											</tr>
											<tr>
												<th class="input_txt">주문번호</th>
												<td>
													<input type="text" name="board_qna_order_no" style="width:25%" value="" readonly="readonly" onclick="$(this).blur()" onfocus="$(this).blur()">
													<input onclick="order_open()" type="button" class="bhs_button yb" value="주문조회" style="float:none; line-height:27px; width:100px;">
													<div style="position:relative;z-index:1">
														<iframe id="ifm_order" src="" frameborder="0" scrolling="no" style="display:none; position:absolute;width:560px;height:380px;background-color:#fff;position:absolute;left:0;top:0;border:1px solid #000"></iframe>
													</div>
												</td>
											</tr>
											<tr>
												<th class="input_txt">이메일</th>
												<td>
													<input type="text" name="board_qna_email" value="juykim98@naver.com" size="26" readonly="readonly" class="read_only">
													<span class="noline smalle" style="padding-left:10px"><input type="checkbox" name="mailling"><span style="font-size:8pt;">답변수신을 이메일로 받겠습니다.</span></span>
												</td>
											</tr>
											<tr>
												<th class="input_txt">문자메시지</th>
												<td>
													<input type="text" name="board_qna_phone" value="010-8462-3477" readonly="readonly" class="read_only">
													<span class="noline smalle" style="padding-left:10px"><input type="checkbox" name="sms"><span style="font-size:8pt;">답변수신을 문자메시지로 받겠습니다.</span></span>
												</td>
											</tr>
											<tr>
												<th class="input_txt">내용</th>
												<td class="edit_area" style="position: relative;">
												<style>
						                            #qnaNotice .qna_goods{display:none}
						                        </style>
												<div id="qnaNotice">
													<div class="inner_qnaNotice">
														<div class="notice_qna">
								
															<strong class="tit qna_public">1:1 문의 작성 전 확인해주세요!</strong>
														
															<dl class="list qna_goods">
							  									<dd>
							   									 	<span>답변은 영업일 기준 2~3일 소요됩니다.</span>
							   										<span>해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</span>
							    									<span>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</span>
							  									</dd>
															</dl>
															
															<dl class="list qna_public">
															  	<dt>반품 / 환불</dt>
														  		<dd><span>제품 하자 혹은 이상으로 반품 (환불)이 필요한 경우 사진과 함께 구체적인 내용을 남겨주세요.</span></dd>
															</dl>
															
															<dl class="list" id="branchByVersion15">
															  <dt>주문취소</dt>
															  <dd class="old" style="display:none"><!-- 구버전 분기처리 -->
																    <span>샛별 지역 : 배송일 전날 19시까지 <br>택배 지역 : 배송일 전날 18시까지 <br>
								            							고객행복센터(1644-1107)/ 1:1문의 게시판/ 카카오톡(마켓컬리) 으로 취소 요청 바랍니다.
								       								</span>
								    								<span>생산이 시작된 이후에는 취소가 불가능 한 점 고객님의 양해 부탁드립니다.</span>
								    								<span>일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</span>
								  									<span>주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매 해주세요.</span>
								    								<span>비회원 주문건의 경우 1:1문의 게시판 접수가 불가하기에 고객행복센터(1644-1107), 카카오톡(마켓컬리) 로 취소 요청 부탁드립니다.</span>
							  									</dd>
							  									<dd class="new">
															        <span>
															            배송 단계별로 주문취소 방법이 상이합니다.
															            <br>
															            [입금확인] 단계 :  [마이컬리 &gt; 주문내역 상세페이지] 에서 직접 취소 가능
															            <br>
															            [입금확인] 이후 단계 : 고객행복센터로 문의
															        </span>
															    	<br>
																    <span>생산이 시작된 [상품 준비중] 이후에는 취소가 제한되는 점 고객님의 양해 부탁드립니다.</span>
																    <span>비회원은 모바일 App 또는 모바일 웹사이트에서 [마이컬리 &gt; 비회원 주문 조회 페이지] 에서 취소가 가능합니다.</span>
																    <span>일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</span>
																    <span>주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매 해주세요.</span>
															 	 </dd>
															</dl>
							
															<dl class="list">
															  <dt>배송</dt>
															  <dd>
															    <span>주문 완료 후 배송 방법(샛별 / 택배)은 변경이 불가능합니다.</span>
															    <span>배송일 및 배송시간 지정은 불가능합니다. (예약배송 포함)</span>
															    <p class="info">※ 전화번호, 이메일, 주소, 계좌번호 등의 상세 개인정보가 문의 내용에 저장되지 않도록 주의해 주시기 바랍니다.</p>
															  </dd>
															</dl>
															</div>
														</div>
													</div>
												<textarea name="board_qna_content" style="width:100%;height:474px;" class="editing_area" required="" fld_esssential="" label="내용" ></textarea>
												</td>
											</tr>
											<tr>
												<th class="input_txt">이미지</th>
												<td>
													<table width="95%" id="table" cellpadding="0" cellspacing="0" border="0" style="border:solid 1px #f4f4f4; border-collapse:collapse;">
														<tbody>
															<tr id="tr_0">
																<td width="20" nowrap="" align="center">1</td>
																<td width="100%"><input type="file" name="file" style="width:50%" class="linebg">
																	<a href="javascript:add()"><img src="https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/btn_upload_plus.gif" align="absmiddle"></a>
																</td>
															</tr>
														</tbody>
													</table>
													<table>
														<tbody>
														<tr><td height="2"></td></tr>
														</tbody>
													</table>
													<div width="100%" style="padding:5px;" class="stxt">- 파일은 최대 3개까지 업로드가 지원됩니다.<br></div>
												</td>
											</tr>
										</tbody>
									</table>
									<table width="100%">
										<tbody>
											<tr>
												<td align="right" style="padding-top:5px; border:none;" id="avoidDbl">
													<input type="submit" class="bhs_button yb" value="저장" style="float:none;">
												</td>
											</tr>
										</tbody>
									</table>
								</form>
							</div>			
						</div>
					</div>	
					
					<script type="text/javascript">	
						function getSelectValue(form){
							 form.board_qna_type.value = form.selectBox.options[form.selectBox.selectedIndex].text;
						}
						function order_open(){
				        	var divEl = document.getElementById('ifm_order');
				       		divEl.src = "board_qna_insert_orderNoSearch.do";
				        	divEl.style.display = "block";
					    }
					
					    function order_close(){
					        var divEl = document.getElementById('ifm_order');
					        divEl.style.display = "none";
					    }
	
					    function order_put( ordno ){					
					        document.fm.board_qna_order_no.value = ordno;
					        order_close();
					    }
				    
						function add(){
				       		var table = document.getElementById('table');
				        	var reviewFileNum = "3";
				        	if (table.rows.length>=parseInt(reviewFileNum)){
				            	alert("업로드는 최대 "+reviewFileNum+"개만 지원합니다");
				            	return;
				        	}
				        	
				        	var tr_num = table.rows.length;
				        	oTr = table.insertRow( table.rows.length );
				        	oTr.id	= "tr_"+(tr_num);
				        	oTd1 = oTr.insertCell(0);
				        	oTd1.style.textAlign = "center";
				        	oTd2 = oTr.insertCell(1);
				        	tmpHTML = "<input type=file name='file' style='width:50%' class=line> <a href=\"javascript:del('"+"tr_"+(tr_num)+"')\"><img src='https://bucketkurly.s3.ap-northeast-2.amazonaws.com/bucketKurly(main)/btn_upload_minus.gif' align=absmiddle></a>";
				        	oTd2.innerHTML = tmpHTML;
				        	calcul();
				    	}
						
				    	function del(index,ncode){
				        	var table = document.getElementById('table');
				        	for (i=0;i<table.rows.length;i++) if (index==table.rows[i].id) table.deleteRow(i);
				       	 	calcul();
				    	}
				    	
				    	function calcul(){
				        	var table = document.getElementById('table');
				        	for (var i=0;i<table.rows.length;i++){
				            	table.rows[i].cells[0].innerHTML = i+1;
				        	}
				    	}
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