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
      			<%@ include file="/WEB-INF/views//admin_layout/admin_topbar.jsp"%>  		

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading / 기본 테이블 템플릿 사용을 원하시면 해당 부분 아래로 수정하시면 됩니다.-->
                    <h1 class="h3 mb-2 text-gray-800">상품관리</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the 
                        <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>


                     <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>                                        	
                                            <th>상품일련번호</th>
                                            <th>1차 카테고리</th>
                                            <th>2차 카테고리</th>
                                            <th>상품 번호</th>
                                            <th>가격</th>
                                            <th>입고 일자</th>
                                            <th>압고 수량</th>
                                            <th>재고 수량</th>
                                            <th>재고 알림 수량</th>
                                            <th>유통기한</th>
                                            <th>프로모션 번호</th>
                                            <th>상품 상태</th>
                                            <th>할인율</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <!--  <tfoot>필요 없으실 경우 tfoot 부분은 주석처리하시면 됩니다. 
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot> -->
                                    <c:forEach items="${selectgoods_sell}" var="selectgoods_sell" varStatus="status">
                                    <tbody>
                                   	
                                        <tr>                                        	
                                            <td>${status.count}</td>
                                        	<td><c:out value="${selectgoods_sell.goods_sell_parent_no}"/></td>
                                        	<td><c:out value="${selectgoods_sell.goods_sell_sub_no}"/></td>
                                        	<td><c:out value="${selectgoods_sell.goods_sell_goods_no}"/></td>
                                        	<td><c:out value="${selectgoods_sell.goods_sell_price}"/></td>
                                        	<td><c:out value="${selectgoods_sell.goods_sell_in_date}"/></td>
                                        	<td><c:out value="${selectgoods_sell.goods_sell_in_ea}"/></td>
                                        	<td><c:out value="${selectgoods_sell.goods_sell_stock_ea}"/></td>
                                        	<td><c:out value="${selectgoods_sell.goods_sell_rea}"/></td>
                                        	<td><c:out value="${selectgoods_sell.goods_sell_exp}"/></td>
                                        	<td>
	                                        	<select id="promotion" c:out value="${selectgoods_sell.goods_sell_promotion}" name="goods_sell_promotion">
															    <option value=0>미적용</option>
															    <option value=1>적용</option>
												</select>
                                        	</td>                                        	
                                        	<td>
                                        		<c:set var="name" value="${selectgoods_sell.goods_sell_status}" />
	                                        	<select id="status" c:out value="name">	                                        		
	                                        		
	                                        		<option value=1 <c:if test="${name == 0}">selected</c:if>>상태선택</option>									
								                    <option value=2 <c:if test="${name == 1}">selected</c:if>>판매중</option>									
								                    <option value=3 <c:if test="${name == 2}">selected</c:if>>판매중지</option>									
								                    <option value=4 <c:if test="${name == 3}">selected</c:if>>판매완료</option>	
															    															    
												</select>
                                        	</td>                                 	
                                        	<td>
	                                        	<select id="discount" c:out value="${selectgoods_sell.goods_sell_discount}" name="goods_sell_discount">
															    <option value=0>할인미적용</option>
															    <option value=1>할인적용</option>													
												</select>
                                        	</td>
                                        	<td>
                                        		<button type="button" class="btn btn-sm btn-primary" id="saveBtn" onclick="fn_undate('${selectgoods_sell.goods_sell_no}','${status.count}')">수정</button>
                                        		<button type="button" class="btn btn-sm btn-primary" id="saveBtn" onclick="fn_delete('${selectgoods_sell.goods_sell_no}')">삭제</button>	
                                        		                                     		
                                        		                   					
                                         	</td>
                                           
                                        </tr>                                      
                                    </tbody>
                                    </c:forEach>                                    
                                </table>                                
                            </div>
                            		<tr> 
			                   			<th>   </th>
			                   			<td>			                   				
			                   				  <td align="right"> <a href=/bucketkurly/admin_goods_insertsell.mdo><span class="btn btn-sm btn-primary" id="saveBtn" style="float: none;">상품 등록</span></a></td>
			                   			</td>
			                   		</tr>
			                  
                        </div>
                        			
                    </div>
                   
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


        <!-- Footer -->
     		 <%@ include file="/WEB-INF/views/admin/admin_layout/admin_footer.jsp"%>  
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
		function fn_onChange(status) {
			var result = confirm("이 상품을 수정하시겠습니까? ");
			if(result){ 
				alert(status);
				var id_name = promotion + '[' + (status-1) + ']';
				alert("id_name"+ id_name);
				let a = document.getElementById('id_name');
				alert(a.selectedIndex);
				
			
		      }else{
			  	    location.href = "javascript:void(0);";
		      }
		}
	
		function fn_undate(goods_sell_no,status) {
			var result = confirm("이 상품을 수정하시겠습니까? ");
			if(result){ 
				alert(status);
				var id_name = promotion + '[' + (status-1) + ']';
				var a = document.getElementById('id_name');
				alert(a.selectedIndex);
				
			
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