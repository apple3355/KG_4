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

	<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>


    <!-- Custom fonts for this template -->
    <link href="resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="resources/bootstrap/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	<style type="text/css">
		#buttondiv{text-align: right; margin-top:5px; margin-bottom:8px;}
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
                            <h4 class="" style="color: #6406ca; font-weight: bolder; float: left; margin-top:10px;" >상품 판매 등록</h4>
                        </div>
                        <div class="card-body">
                        	<form role="form" id="form" action="${pageContext.request.contextPath}/admin_goods_insertsellDB.mdo">
                                <input type="hidden" value="미구현" name="goods_sell_stock_rea">
                                
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                	<tr>
										<th>카테고리</th>
										<td colspan="3">
											<div>
												<div style="float: left;">
													<span>상위 카테고리</span>
													<select name="goods_sell_parent_no" id="goods_sell_parent_no"  style="width: 200px;" class="form-control" >
														<option value="">선택</option>
														<c:forEach items="${admin_Category_parent}" var="cp">
															<option id="parent" value="${cp.category_parent_no }">${cp.category_parent_name }</option>
														</c:forEach>
													</select>
												</div>
												<div style="float: left;  margin-left:40px;">
													<span>중위 카테고리</span>
		                     					    <select name="goods_sell_sub_no" id="goods_sell_sub_no" style="width: 200px;" class="form-control">                      						    	
														<option value="" >선택</option>
		                     						</select>
	                     						</div>
	                     						<div style="float: left;  margin-left:40px;">
		                     						<span>하위 카테고리</span>
		                     					    <select name="goods_sell_goods_no" id="goods_sell_goods_no" style="width: 200px;" class="form-control">
		                     							<option value="">선택</option>
		                     						</select>
	                    						</div>
	                     					</div>
										</td>
									</tr>	 								
									<tr>
										<th>입고날짜</th><td><input type="text" class="form-control" value="${vo.goods_sell_in_date}" name="goods_sell_in_date" id="goods_sell_in_date" ></td>
										<th>입고수량</th><td><input type="text" class="form-control" value="${vo.goods_sell_in_ea}" name="goods_sell_in_ea" id="goods_sell_in_ea" ></td>
									</tr>
									<tr>
										<th>유통기한</th><td><input type="text" class="form-control" value="${vo.goods_sell_exp}" name="goods_sell_exp" id="goods_sell_exp" ></td>
										<th>판매가격</th><td><input type="text" class="form-control" value="${vo.goods_sell_price}" name="goods_sell_price" id="goods_sell_price" ></td>
									</tr>
									<tr>
										<th>할인율</th><td><input type="text" class="form-control" value="${vo.goods_sell_discount}" name="goods_sell_discount" id="goods_sell_discount" ></td>
										<th>프로모션</th><td><input type="text" class="form-control" value="${vo.goods_sell_promotion}" name="goods_sell_promotion" id="goods_sell_promotion" ></td>
									</tr>	
									<tr>
										<th>상태</th>
										<td colspan="3">
											<select value="${vo.goods_sell_status}" name="goods_sell_status" id="goods_sell_status" style="width: 200px;" class="form-control" >
											    <option value="">상태선택</option>
											    <option value="1">판매중</option>
											    <option value="2">판매중지</option>
											    <option value="0">판매완료</option>
											</select>
										</td>
									</tr>
                                </table>
							</form>
                        </div>
                        <div class="card-footer">
                        	<div id="buttondiv">
								<a href="javascript:document.getElementById('form').submit();" class="btn btn-primary btn-icon-split" >
									<span class="icon text-white-50">
										<i class="fas fa-check"></i>
									</span>
									<span class="text">등록 하기</span>
								</a>
								<a href="javascript:history.back();" class="btn btn-secondary btn-icon-split">
									<span class="icon text-white-50">
										<i class="fas fa-arrow-right"></i>
									</span>
									<span class="text">목록 보기</span>
								</a>
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
 	//상품 등록 실행
 	$(document).ready(function(){
		//상품 판매 등록 유효성검사
		$("#fn_insert").click(function(){
			alert("상품을 동록하시겠습니까?");
			var in_date = $("#in_date").val();
			var in_ea = $("#in_ea").val();
			var exp = $("#exp").val();
			var price = $("#price").val();
			var discount = $("#discount").val();
			var promotion = $("#promotion").val();
			var status = $("#status").val();
			
			if(in_date == ""){
				alert("입고 날짜를 입력해주세요");
				in_date.foucs();
			} else if (in_ea == ""){
				alert("입고 수량을 입력해주세요");
				in_ea.foucs();
			} else if (exp == ""){
				alert("유통기한을 입력해주세요");
				exp.foucs();
			} else if (price == ""){
				alert("상품 가격을 입력해주세요");
				price.foucs();
			}
			// 상품 판매 정보 전송
			alert("상품 정보 전송");
			alert(get.document.dataTable.action);
			document.form.action = "${pageContext.request.contextPath}/admin_goods_insertsellDB.mdo"
			document.form.submit();
		});		
		
	});
    </script>
    
	<!--카테고리 서브 셀렉트 박스 -->
    <script>
    $(document).on("change","select[name='goods_sell_parent_no']",function(){
    	var parent_no = $("#goods_sell_parent_no option:selected").val();
    	
    	$.ajax({
    		url : "selectCategory_sub.mdo",
    		dataType: "json",
    		async:false,
    		type:"post",
    		data: {parent_no},
    		success:function(data){
    			$("#goods_sell_sub_no option").remove();
    			$("#goods_sell_goods_no option").remove();
    			$("select[name='goods_sell_goods_no']").append("<option value=''>선택</option>");
    			if(data.admin_Category_sub.length>0){
    				for(var i=0; i <data.admin_Category_sub.length; i++){
      	              var name = data.admin_Category_sub[i].category_sub_name;
      	              var value = data.admin_Category_sub[i].category_sub_no;
      	              $("#goods_sell_sub_no").append('<option value ='+value+'>'+name+'</option>');
      	           }
    			}else{
    				$("select[name='goods_sell_sub_no']").append("<option value=''>선택</option>");
    			}
    	        
    		}
    	});
    })
    </script>
    
    <!--카테고리 goods 셀렉트 박스 -->
    <script>
    $(document).on("change","select[name='goods_sell_sub_no']",function(){
    	var sub_no = $("#goods_sell_sub_no option:selected").val();
    	
    	$.ajax({
    		url : "selectCategory_goods.mdo",
    		dataType: "json",
    		async:false,
    		type:"post",
    		data: {sub_no},
    		success:function(data){
    			$("#goods_sell_goods_no option").remove();
    			if(data.admin_Category_goods.length>0){
    				for(var i=0; i <data.admin_Category_goods.length; i++){
      	              var name = data.admin_Category_goods[i].category_goods_name;
      	              var value = data.admin_Category_goods[i].category_goods_no;
      	              $("#goods_sell_goods_no").append('<option value ='+value+'>'+name+'</option>');
      	           }
    			}else{
    				$("select[name='goods_sell_goods_no']").append("<option value=''>품절</option>");
    			}
    	        
    		}
    	});
    })
    </script>
    

   
</body>

</html>