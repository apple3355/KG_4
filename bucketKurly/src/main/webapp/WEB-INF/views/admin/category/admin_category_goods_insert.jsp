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

    <title>카테고리 상품 관리 : admin_category_goods</title>

	<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
	$('document').ready(function() {
		 var area0 = ["채소","과일/견과/쌀","수산/해산/건어물","정육/계란","국/반찬/메인요리","샐러드/간편식","면/양념/오일","생수/음료/우유/커피","간식/과자/떡","베이커리/치즈/델리","건강식품","생활용품/리빙/캠핑/스킨케어/메이크업","헤어/바디/구강","주방용품","반려동물","컬리의 추천"];
		  var area1 = ["친환경","고구마/감자/당근","시금치/쌈채소/나물","브로콜리/파프리카/양배추","양패/대파/마늘/배추","오이/호박/고추","냉동/이색/간편채소","콩나물/버섯"];
		   var area2 = ["친환경","제철과일","국산과일","수입과일","간편과일","냉동/건과일","견과류","쌀/잡곡"];
		   var area3 = ["제철수산","생선류","굴비/반건류","오징어/낙지/문어","새우/게/랍스터","해산물/조개류","수산가공품","김/미역/해조류","건어물/다시팩"];
		   var area4 = ["국내산 소고기","수입산 소고기","돼지고기","계란류","닭/오리고기","양념육/돈까스","양고기"];
		   var area5 = ["국/탕/찌개","밀키트/메인요리","밑반찬","김치/젓갈/장류","두부/어묵/부침개","베이컨/햄/통조림"];
		   var area6 = ["샐러드/닭가슴살","도시락/밥류","파스타/면류","떡뽁이/튀김/순대","피자/핫도그/만두","폭립/떡갈비/안주","죽/스프/카레","선식/시리얼"];
		   var area7 = ["파스타/면류","식초/소스/드레싱","양념/액젓/장류","식용유/참기름/오일","소금/설탕/향신료","밀가루/가루/믹스"];
		   var area8 = ["생수/탄산수","음료/주스","우유/두유/요거트","커피","차"];
		   var area9 = ["과자/스낵/쿠키","초콜릿/젤리/캔디","떡/한과","아이스크림"];
		   var area10 = ["식빵/빵류","잼/버터/스프레드","케이크/파이/디저트","치즈","델리","올리브/피클"];
		   var area11 = ["영양제","유산균","홍삼/인삼/꿀","건강즙/건강음료","건강분말/건강환","다이어트/이너뷰티","유아동"];
		   var area12 = ["휴지/티슈","여성/위생용품","세제/청소용품","화훼/인테리어소품"," 의약외품/마스크","생활잡화/문구","캠핑용품"];
		   var area13 = ["스킨/미스트/패드","에센스/앰플/로션","크림/오일","클렌징","마스크팩","선케어","메이크업","맨즈케어","뷰티소품/기기"];
		   var area14 = ["구강/면도","샴푸/컨디셔너","트리트먼트/팩","헤어에센스/염모","바디워시/스트럽","바디로션/크림","핸드/립/데오","헤어/바디소품"];
		   var area15 = ["주방소모품/잡화","주방/조리도구","냄비/팬/솥","식기/테이블웨어","컵/잔/커피도구"];
		   var area16 = ["주방가전","생활가전","계절가전","디지털/PC","대형/설치가전"];
		   var area17 = ["분유/간편이유식","이유식재료","간식/음식/음료","건강식품","이유/수유용품","기저귀/물티슈","세제/위생용품","스킨/구강케어","완구/잡화류"];
		   var area18 = ["강아지간식","강아지주식","고양이간식","고양이주식","반려동물 용품","배변/위생","소용량/샘플"];
		   var area19 = ["컬리의 추천"];
		   
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
                    <h1 class="h3 mb-2 text-gray-800">상품 카테고리 등록 관리 페이지</h1>
                   
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">카테고리 상품 등록</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                             <form role="form" action="${pageContext.request.contextPath}/admin_category_goods_insertDB.mdo" enctype="multipart/form-data">
                             
                           		 <c:set var="no" value="${vo.category_goods_no}" />
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    	<tr>
											<th>카테고리</th><td colspan="6">
												
												<select name="parent_no" id="parent_no"  style="width: 200px" onchange="itemChange(this.value);"></select>
                      						    <select name="sub_no" id="sub_no" style="width: 200px;" onchange="itemChange2(this.value);"></select>                      						   
											</td>
										</tr>									
										<tr>
											<th>상품명</th><td colspan="2"><input class="form-control" name ="category_goods_name"></td>
											<th>상품명 서브</th><td colspan="2"><input class="form-control" name ="category_goods_name_sub"></td>
										</tr>
										<tr>
											<th width="16%">판매단위</th><td width="16%"><input class="form-control" name ="category_goods_unit"></td>
											<th width="16%">상품용량(중량)</th><td width="16%"><input class="form-control" name ="category_goods_weight"></td>
											<th width="16%">원산지</th><td width="16%"><input class="form-control" name ="category_goods_from"></td>
										</tr>
										<tr>
											<th>포장타입</th><td><select name="category_goods_packaging_type" style="text-align-last: center">
																    <option value="">포장타입</option>
																    <option value="상온">상온/종이포장</option>
																    <option value="냉장">냉장/종이포장</option>
																    <option value="냉동">냉동/종이포장</option>
																</select></td>
											<th>배송구분</th><td><input class="form-control" name ="category_goods_delivery_type"></td>
											<th>유통기한</th><td><input class="form-control" name ="category_goods_exp_date"></td>
										</tr>
										<tr>
											<th>안내사항</th><td colspan="5"><textarea class="form-control" rows="5" name ="category_goods_info"></textarea></td>
										</tr>
										<tr>
											<th>참고사항</th><td colspan="5"><textarea class="form-control" rows="5" name ="category_goods_ref"></textarea></td>
										</tr>
										<tr>
											<th>본문 타이틀</th><td colspan="5"><input class="form-control" name =category_goods_contents_tit_main></td>
										</tr>
										<tr>
											<th>본문<br>서브타이틀</th><td colspan="5"><input class="form-control" name ="category_goods_contents_tit_sub"></td>
										</tr>
										<tr>
											<th>본문 설명</th><td colspan="5"><textarea class="form-control" rows="5" name ="category_goods_contents_intro"></textarea></td>
										</tr>
										
										<tr>
											<th>썸네일</th><td colspan="5">
												<div class="index"><input type="file" name="file" id="uploadImg" multiple /></div></td>
										</tr>
												
										<tr>
											<th>헤드 이미지</th><td colspan="5">
												<div class="index"><input type="file" name="file" id="uploadImg" multiple /></div></td>
										</tr>
										<tr>
											<th>본문 이미지</th><td colspan="5">
												<div class="index"><input type="file" name="file" id="uploadImg" multiple /></div></td>
										</tr>
										<tr>
											<th>정보 이미지</th><td colspan="5">
												<div class="index"><input type="file" name="file" id="uploadImg" multiple /></div></td>
										</tr>
									
										<tr>
										
											<td colspan="6" align="right">
													<button type="submit" class="btn btn-outline btn-warning"  style="font-size:18px;">상품 등록</button>
													<button type="button" class="btn btn-outline btn-default" onclick="history.back()"  style="font-size:18px;">취소</button>
													<button type="button" class="btn btn btn-outline btn-primary" 
														onclick="location.href='${pageContext.request.contextPath}/admin_category_goodslist.mdo'">목록보기
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
    
</body>

</html>