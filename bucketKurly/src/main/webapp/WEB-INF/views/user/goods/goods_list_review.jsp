<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<link rel="stylesheet" type="text/css" href="resources/css/goods_list_detail.css">
<!-- 1. 제이쿼리 라이브러리 파일을 먼저 연동하고,  -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
#goods-review {min-height: 850px;}
.xans-product-additional div.board h2 {    font-size: 13px;    font-weight: 700;    padding-bottom: 5px;}
.list_type1.old .txt {    overflow: hidden;    padding: 0;    font-size: 12px;    color: #666;    line-height: 18px;    letter-spacing: -.3px;}
.xans-product-additional .sort select {    margin: 0 2px 0 0;    border: 1px solid #bfbfbf;    line-height: 34px;    height: 34px;    vertical-align: middle;    padding-bottom: 5px;}
.xans-product-additional table.xans-board-listheader th {    padding: 25px 0 23px;    vertical-align: middle;    font-size: 12px;}
.xans-product-additional table.tbl_newtype1 td {    height: auto;    padding: 22px 3px 23px;}
.goods_board .tbl_newtype1 .subject {    padding-left: 50px;    text-align: left;}
.xans-product-additional table.tbl_newtype1 td.user_grade {    padding: 22px 0 23px;    line-height: 19px;    text-align: left;}
.goods_board .tbl_newtype1 .time {    color: #939393;}
.xans-product-additional table.tbl_newtype1 td {    height: auto;    padding: 22px 3px 23px;}
.xans-product-additional div.board .btnArea {    padding: 10px 0;    text-align: right;    width: 100%;    display: table;}
.xans-product-additional div.board>.btnArea {    border-top: 1px solid #6a3664;}
#goods-infomation, #goods-review, #goods-qna {    padding-top: 100px;    margin-bottom: 0;}
.xans-board-listheader {    border-top: 2px solid #522772;    font-size: 13px;    line-height: 140%;}
.xans-product-additional table.xans-board-listheaderd td {    padding: 25px 3px 23px;    border-top: 1px solid #e3e3e3;    text-align: center;    vertical-align: middle;    height: 65px;}
.xans-product-additional .btnArea .bhs_button {    margin: 20px 0 20px 5px;}
.bhs_button {    width: 150px;    display: inline-block;    line-height: 40px;    text-align: center;    background-color: #795b8f;    border: 1px solid #5f0080;    color: #fff;    font-size: 15px;    float: right;    margin-left: 2px;    font-size: 13px;}
.goods_board .board_pg_area {    clear: both;    text-align: center;    padding-bottom: 15px;}
.layout-pagination-button:first-child {    border-left: 1px solid #ddd;}
.layout-pagination-first-page {    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-first.png);}
.layout-pagination-first-page, .layout-pagination-prev-page, .layout-pagination-next-page, .layout-pagination-last-page { background-repeat: no-repeat;    background-position: 50% 50%;    text-indent: -9999px;}
.layout-pagination-prev-page {    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-prev.png);}
.layout-pagination-number {    font-weight: 700;    color: #333;    line-height: 34px;}
.layout-pagination-button {    display: inline-block;    width: 34px;    height: 34px;    border: 1px solid #ddd;    border-left: 0;    vertical-align: top;}
.layout-pagination-next-page {    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-next.png);}
.layout-pagination-last-page {    background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-pagination-last.png);}
</style>
</head>
<body>

<div id="contents-wrapper" class="goods_board">
	<div class="xans-element- xans-product xans-product-additional detail_board  ">
		<div class="board">
			<span class="line"></span>
			<form name="frmList">
				<input type="hidden" name="sort" value=""> 
				<input type="hidden" name="page_num" value=""> 
				<input type="hidden" name="goodsno" value="90050">
				<div class="title_txt">
					<h2>PRODUCT REVIEW</h2>
					<div class="sort-wrap">
						<ul class="list_type1 old">
							<li><span class="ico"></span>
							<p class="txt">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의
									없이 담당 게시판으로 이동될 수 있습니다.</p></li>
							<li><span class="ico"></span>
							<p class="txt">
									배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 <a href="#none"
										onclick="window.parent.location.href = '${pageContext.request.contextPath}/board_qna_insert.do?'"
										class="emph">1:1 문의</a>에 남겨주세요.
								</p></li>
						</ul>
						
					</div>
				</div>
				<table class="xans-board-listheader" width="100%" border="0"
					cellpadding="0" cellspacing="0">
					<caption style="display: none">구매후기 제목</caption>
					<colgroup>
						<col style="width: 10%;">
						<col style="width: auto;">
						<col style="width: 15%;">
						<col style="width: 15%;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="col" class="input_txt">번호</th>
							<th scope="col" class="input_txt">제목</th>
							<th scope="col" class="input_txt" align="left">작성자</th>
							<th scope="col" class="input_txt">작성일</th>
						</tr>
					</tbody>
				</table>

				<div class="tr_line on">
					<table class="xans-board-listheaderd tbl_newtype1" width="100%"
						cellpadding="0" cellspacing="0"
						onclick="view_content(this,event,false)">
						<caption style="display: none">구매후기 내용</caption>
						<colgroup>
							<col style="width: 10%;">
							<col style="width: auto;">
							<col style="width: 15%;">
							<col style="width: 15%;">
						</colgroup>
						<tbody>
							<tr>
								<c:forEach items="${reviewList}" var="reviewList" varStatus="status">
									<td align="center">${status.count}</td>
									<td class="subject"><div class="fst">${reviewList.board_review_title}</div>
										<div class="snd">${reviewList.board_review_content}</div>
									</td>
									<td class="user_grade">${reviewList.board_review_member_id}</td>
									<td class="time">${reviewList.board_review_date}</td>
									
								</c:forEach>
							</tr>
						</tbody>
					</table>
				</div>
			</form>
		
		<!-- <p class="btnArea after">
				<a href="#none" onclick="popup_register( 'add_review', '90050' )"><span
					class="bhs_button" style="line-height: 30px; width: 130px;">후기쓰기</span></a>
			</p> -->
			
		</div>
	</div>
</div>
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
            $("#goods-review").data("load", 1);
            $("#goods-review").html('<iframe id="inreview" src="./goods_review_list.php?goodsno=4364" frameborder="0" class="goods-view-infomation-board"></iframe>');
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

</body>
</html>
