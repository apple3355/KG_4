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

    <title>BucketKurly::Admin-Order</title>

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
      			<%@ include file="/WEB-INF/views/admin_layout/admin_topbar.jsp"%>  	
      			
                <!-- Begin Page Content -->
                <div class="container-fluid">

                   	<!-- Page Heading -->
			    	<h1 class="h3 mb-2 text-gray-800">주문·결제·배송 관리</h1>
					<p class="mb-4">버켓컬리 주문·결제·배송을 관리하는 페이지입니다.</p>

                     <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header">
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >주문·결제·배송 목록</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" name="dataTable" width="100%" cellspacing="0" style="text-align:center;">
                                    <thead>
                                        <tr>  
                                            <th width="18%">주문번호</th>
                                            <th width="7%">회원번호</th>
                                            <th width="7">주문자</th>
                                            <th width="10%">휴대폰번호</th>
                                            <th width="27%">배송지</th>
                                            <th width="7%">주문금액</th>
                                            <th width="7%">배송비</th>
                                            <th width="10%">주문·배송상태</th>
                                            <th width="7%">수정</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   		<c:forEach items="${orderList}" var="orderList">
                                   		<c:set var="delivery_status" value="${orderList.order_delivery_status}" />
	                                        <tr>
	                                        	<td><c:out value="${orderList.order_no}"/></td>
	                                        	<td><c:out value="${orderList.order_member_no}"/></td>
	                                        	<td><c:out value="${orderList.order_name}"/></td>
	                                        	<td><c:out value="${orderList.order_phone}"/></td>
	                                        	<td><c:out value="${orderList.order_address}"/></td>
	                                        	<td><c:out value="${orderList.order_goods_price}"/></td>
	                                        	<td><c:out value="${orderList.order_delivery_fee}"/></td>
	                                        	<c:choose>
													<c:when test="${delivery_status eq '환불완료'}"> 
														<td><c:out value="${delivery_status}"/></td>  
		                                        		<td></td>
													</c:when>
													<c:when test="${delivery_status eq '환불대기'}"> 
														<td><c:out value="${delivery_status}"/></td>  
		                                        		<td></td> 
		                                        	</c:when>
		                                        	<c:when test="${delivery_status eq '구매확정'}"> 
														<td><c:out value="${delivery_status}"/></td>  
		                                        		<td></td> 
		                                        	</c:when>
													<c:otherwise>
														<td><select id="delivery_status" class="form-control">
															    <option value="결제완료" <c:if test="${delivery_status eq '결제완료'}">selected</c:if>>결제완료</option>
															    <option value="배송준비중" <c:if test="${delivery_status eq '배송준비중'}">selected</c:if>>배송준비중</option>
															    <option value="배송중" <c:if test="${delivery_status eq '배송중'}">selected</c:if>>배송중</option>
															    <option value="배송완료" <c:if test="${delivery_status eq '배송완료'}">selected</c:if>>배송완료</option>
															    <option value="구매확정">구매확정</option>
															</select>
			                                        	</td>
			                                        	<td>
		                                        			<button type="button" class="btn btn-outline btn-info" id="saveBtn" onclick="fn_update(this)">수정</button>
		                                         		</td>
	                                         		</c:otherwise>
												</c:choose>
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
			var result = confirm("해당 주문·결제·배송 상태를 수정하시겠습니까? ");
			if(result){ 
				var i = row.parentNode.parentNode.rowIndex;	//버튼이 눌러진 테이블의 로우넘버 저장
				
				var order_no = document.getElementById("dataTable").rows[i].cells[0].innerHTML;	//해당 로우넘버의 아이디가 있는 칼럼 값 저장
				
				//배송 상태
				var selectbox_sta = document.getElementById("dataTable").rows[i].cells[7].childNodes[0];
				var order_delivery_status = selectbox_sta.options[selectbox_sta.selectedIndex].value;
			
				var form = document.createElement("form");
				form.setAttribute("method", "Post");
				form.setAttribute("action", "${pageContext.request.contextPath}/admin_orderupdate.mdo");
				
				var order_noField = document.createElement("input");
				order_noField.setAttribute("type", "hidden");
				order_noField.setAttribute("name", "order_no");
				order_noField.setAttribute("value", order_no);
				
				var order_delivery_statusField = document.createElement("input");
				order_delivery_statusField.setAttribute("type", "hidden");
				order_delivery_statusField.setAttribute("name", "order_delivery_status");
				order_delivery_statusField.setAttribute("value", order_delivery_status);
				
				form.appendChild(order_noField);
				form.appendChild(order_delivery_statusField);
			
				document.body.appendChild(form);
				form.submit();
			
		      }else{
			  	    location.href = "javascript:void(0);";
		      }
		}
	</script>
</body>

</html>