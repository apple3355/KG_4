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
	<script type="text/javascript">
	$('document').ready(function() {
		 var area0 = ["채소","과일/견과/쌀","수산/해산/건어물","정육/계란","국/반찬/메인요리","샐러드/간편식","면/양념/오일","생수/음료/우유/커피","간식/과자/떡","베이커리/치즈/델리","건강식품","생활용품/리빙/캠핑/스킨케어/메이크업","헤어/바디/구강","주방용품","반려동물","컬리의 추천"];
		  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
		   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
		   var area3 = ["대덕구","동구","서구","유성구","중구"];
		   var area4 = ["광산구","남구","동구",     "북구","서구"];
		   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
		   var area6 = ["남구","동구","북구","중구","울주군"];
		   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
		   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
		   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
		   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
		   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
		   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
		   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
		   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
		   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
		   var area16 = ["서귀포시","제주시","남제주군","북제주군"];
		   
	   $("select[name^=parent_no]").each(function() {
		   $selsido = $(this);
		   $.each(eval(area0), function() {
		    $selsido.append("<option value='"+this+"'>"+this+"</option>");
		   });
		   $selsido.next().append("<option value=''>상품 카테고리 선택</option>");
		  });
	   
	   $("select[name^=parent_no]").change(function() {
		   var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택 카테고리 Array
		   var $gugun = $(this).next(); // 선택영역 카테고리 객체
		   $("option",$gugun).remove(); // 카테고리 초기화

		   if(area == "area0")
		    $gugun.append("<option value=''>상품 카테고리 선택</option>");
		   else {
		    $.each(eval(area), function() {
		     $gugun.append("<option value='"+this+"'>"+this+"</option>");
		    });
		   }
		  });
	   
	   
	   
	   
	   


		 });
	</script>

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

                    <!-- Page Heading / 기본 테이블 템플릿 사용을 원하시면 해당 부분 아래로 수정하시면 됩니다.-->
                    <h1 class="h3 mb-2 text-gray-800">게시글 관리</h1>
                   
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">게시글 상세보기</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                             <form role="form" action="${pageContext.request.contextPath}/admin_goods_insertsellDB.mdo">
                           		 <c:set var="no" value="${vo.goods_sell_no}" />
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                      <!--  	<tr>
											<th>카테고리</th><td colspan="3">
												
												<select name="parent_no" id="parent_no"  style="width: 200px" onchange="itemChange(this.value);"></select>
                      						    <select name="sub_no" id="sub_no" style="width: 200px;" onchange="itemChange2(this.value);"></select>
                      						    <select id="goods_no" id="goods_no" style="width: 200px;" onchange="itemChange3(this.value);"></select>
											</td>
										</tr>	 -->								
										<tr>
											<th>입고날짜</th><td><input type="text" class="form-control" value="${vo.goods_sell_in_date}" name="goods_sell_in_date" id="in_date" ></td>
											<th>입고수량</th><td><input type="text" class="form-control" value="${vo.goods_sell_in_ea}" name="goods_sell_in_ea" id="in_ea" ></td>
										</tr>
										<tr>
											<th>유통기한</th><td><input type="text" class="form-control" value="${vo.goods_sell_exp}" name="goods_sell_exp" id="exp" ></td>
											<th>판매가격</th><td><input type="text" class="form-control" value="${vo.goods_sell_price}" name="goods_sell_price" id="price" ></td>
										</tr>
										<tr>
											<th>할인율</th><td><input type="text" class="form-control" value="${vo.goods_sell_discount}" name="goods_sell_discount" id="discount" ></td>
											<th>프로모션</th><td><input type="text" class="form-control" value="${vo.goods_sell_promotion}" name="goods_sell_promotion" id="promotion" ></td>
										</tr>	
																				
										<tr>
											<th>상태</th>
												<td colspan="3">
													<select value="${vo.goods_sell_status}" name="goods_sell_status" id="status">
													    <option value="">상태선택</option>
													    <option value="학생">판매중</option>
													    <option value="회사원">판매중지</option>
													    <option value="기타">판매완료</option>
													</select>
												</td>
										</tr>
										<tr>
										
										
											<td colspan="4" align="right">												
												<button type="button" class="btn btn-outline btn-danger" id="fn_insert"
													onclick="fn_insert('${vo.goods_sell_no}')">
													등록하기
												</button>
												<button type="button" class="btn btn btn-outline btn-primary" 
													onclick="location.href='${pageContext.request.contextPath}/admin_goods_list.mdo'">
													목록보기
												</button>
												
											</td>
										</tr>
                                </table>
							</form>
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
   
</body>

</html>