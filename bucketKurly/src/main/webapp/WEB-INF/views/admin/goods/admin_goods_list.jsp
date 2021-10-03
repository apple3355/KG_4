<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">

<!-- 본 파일은 템플릿입니다.  -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BucketKurly::Admin-Goods</title>

    <!-- Custom fonts for this template -->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	
	<!-- 숨김 column -->
	<style>
		.hidden-col{display:none;}
	</style>
</head>

<body id="page-top">
	<!-- Page Wrapper -->
    <div id="wrapper">

  	<!-- header -->
	<%@ include file="/WEB-INF/views/admin_layout/admin_sidebar.jsp"%>  		

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
  				
  				<!-- topbar -->
      			<%@ include file="/WEB-INF/views/admin_layout/admin_topbar.jsp"%>  	
      			
                <!-- Begin Page Content -->
                <div class="container-fluid">

                   	<!-- Page Heading -->
			    	<h1 class="h3 mb-2 text-gray-800">상품 관리</h1>
					<p class="mb-4">버켓컬리 상품판매·후기를 관리하는 페이지입니다.</p>

                     <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >상품 판매 목록</h4>
                            <a href="${pageContext.request.contextPath}/admin_goods_insertsell.mdo" class="btn btn-primary btn-icon-split" name="register" id="addBtn" style="float: right; position: relative; margin-top:7px;">
								<span class="icon text-white-50">
									<i class="fas fa-plus"></i>
								</span>
								<span class="text">등록하기</span>
							</a> 
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" name="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>  
                                        	<th class="hidden-col">숨김 번호</th>                                     	
                                            <th width="5%">상품일련번호</th>
                                            <th width="5%">1차 카테고리</th>
                                            <th width="5%">2차 카테고리</th>
                                            <th width="5%">상품 번호</th>
                                            <th width="5%">가격</th>
                                            <th width="10%">입고 일자</th>
                                            <th width="5%">입고 수량</th>
                                            <th width="5%">재고 수량</th>
                                            <th width="5%">재고 알림 수량</th>
                                            <th width="10%">유통기한</th>
                                            <th width="10%">프로모션 번호</th>
                                            <th width="10%">상품 상태</th>
                                            <th width="10%">할인율</th>
                                            <th width="10%"> 수정 / 삭제</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   		<c:forEach items="${selectgoods_sell}" var="selectgoods_sell" varStatus="tablerow">
                                   		<c:set var="promotion" value="${selectgoods_sell.goods_sell_promotion}" />
                                   		<c:set var="status" value="${selectgoods_sell.goods_sell_status}" />
                                   		<c:set var="discount" value="${selectgoods_sell.goods_sell_discount}" />
	                                        <tr>
	                                        	<td class="hidden-col"><c:out value="${selectgoods_sell.goods_sell_no}"/></td>                                        	
	                                            <td>${tablerow.count}</td>
	                                        	<td><c:out value="${selectgoods_sell.goods_sell_parent_no}"/></td>
	                                        	<td><c:out value="${selectgoods_sell.goods_sell_sub_no}"/></td>
	                                        	<td><c:out value="${selectgoods_sell.goods_sell_goods_no}"/></td>
	                                        	<td><c:out value="${selectgoods_sell.goods_sell_price}"/></td>
	                                        	<td><c:out value="${selectgoods_sell.goods_sell_in_date}"/></td>
	                                        	<td><c:out value="${selectgoods_sell.goods_sell_in_ea}"/></td>
	                                        	<td><c:out value="${selectgoods_sell.goods_sell_stock_ea}"/></td>
	                                        	<td><c:out value="${selectgoods_sell.goods_sell_stock_rea}"/></td>
	                                        	<td><c:out value="${selectgoods_sell.goods_sell_exp}"/></td>
	                                        	<td><select id="promotion" class="form-control">
													    <option value=0 <c:if test="${promotion == 0}">selected</c:if>>미적용</option>
													    <option value=1 <c:if test="${promotion == 1}">selected</c:if>>적용</option>
													</select>
	                                        	</td>                                        	
	                                        	<td><select id="status" class="form-control">									
									                    <option value=1 <c:if test="${status == 1}">selected</c:if>>판매중</option>									
									                    <option value=2 <c:if test="${status == 2}">selected</c:if>>판매중지</option>									
									                    <option value=0 <c:if test="${status == 0}">selected</c:if>>판매완료</option>	
													</select>
	                                        	</td>                                 	
	                                        	<td><select id="discount" class="form-control">
													    <option value=0 <c:if test="${discount == 0}">selected</c:if>>할인미적용</option>
													    <option value=1 <c:if test="${discount == 1}">selected</c:if>>할인적용</option>													
													</select>
	                                        	</td>
	                                        	<td>
	                                        		<button type="button" class="btn btn-outline btn-info" id="saveBtn" onclick="fn_update(this)">수정</button>
	                                        		<button type="button" class="btn btn-outline btn-danger" id="saveBtn" onclick="fn_delete('${selectgoods_sell.goods_sell_no}')">삭제</button>	                   					
	                                         	</td>
	                                        </tr> 
                                    	</c:forEach>    
	                            		
			                   		</tbody>
			                  	</table>   
			                  </div>
                        </div>	
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->


        <!-- Footer -->
        <%@ include file="/WEB-INF/views/admin_layout/admin_footer.jsp"%>  	
     		
        <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Bootstrap core JavaScript-->
    <script src="resources/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="resources/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="resources/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="resources/bootstrap/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="resources/bootstrap/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="resources/bootstrap/js/demo/datatables-demo.js"></script>
	<script>
		function fn_update(row) {
			var result = confirm("이 상품을 수정하시겠습니까? ");
			if(result){ 
				alert("수정 안으로 들어옴");
				var i = row.parentNode.parentNode.rowIndex;	//버튼이 눌러진 테이블의 로우넘버 저장
				
				var goods_sell_no = document.getElementById("dataTable").rows[i].cells[0].innerHTML;	//해당 로우넘버의 아이디가 있는 칼럼 값 저장
				//프로모션
				var selectbox_pro = document.getElementById("dataTable").rows[i].cells[11].childNodes[0];
				var promotion = selectbox_pro.options[selectbox_pro.selectedIndex].value;
				//상태
				var selectbox_sta = document.getElementById("dataTable").rows[i].cells[12].childNodes[0];
				var status = selectbox_sta.options[selectbox_sta.selectedIndex].value;
				//할인
				var selectbox_dis = document.getElementById("dataTable").rows[i].cells[13].childNodes[0];
				var discount = selectbox_dis.options[selectbox_dis.selectedIndex].value;
				
			
				var form = document.createElement("form");
				form.setAttribute("method", "Post");
				form.setAttribute("action", "${pageContext.request.contextPath}/admin_goodsupdate.mdo");
				
				var goods_sell_noField = document.createElement("input");
				goods_sell_noField.setAttribute("type", "hidden");
				goods_sell_noField.setAttribute("name", "goods_sell_no");
				goods_sell_noField.setAttribute("value", goods_sell_no);
				
				var promotionField = document.createElement("input");
				promotionField.setAttribute("type", "hidden");
				promotionField.setAttribute("name", "goods_sell_promotion");
				promotionField.setAttribute("value", promotion);
				
				var statusField = document.createElement("input");
				statusField.setAttribute("type", "hidden");
				statusField.setAttribute("name", "goods_sell_status");
				statusField.setAttribute("value", status);
				
				var discountField = document.createElement("input");
				discountField.setAttribute("type", "hidden");
				discountField.setAttribute("name", "goods_sell_discount");
				discountField.setAttribute("value", discount);
				
				form.appendChild(goods_sell_noField);
				form.appendChild(promotionField);
				form.appendChild(statusField);
				form.appendChild(discountField);
				
				document.body.appendChild(form);
				form.submit();
			
		      }else{
			  	    location.href = "javascript:void(0);";
		      }
		}
			
		
		function fn_delete(goods_sell_no) {
		  	  var result = confirm("이 상품을 삭제하시겠습니까? ");
		      if(result){
		    	 	var url = "${pageContext.request.contextPath}/deleteGoods_DB.mdo";
		  			url = url + "?goods_sell_no=" + goods_sell_no;
		  			location.href = url;
		            alert("상품이 삭제되었습니다.");
		      }else{
			  	    location.href = "javascript:void(0);";
		      }
	  	
		}
		
	</script>
</body>

</html>