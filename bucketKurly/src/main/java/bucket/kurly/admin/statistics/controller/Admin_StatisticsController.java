package bucket.kurly.admin.statistics.controller;

import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bucket.kurly.admin.statistics.Admin_StatisticsVO;
import bucket.kurly.admin.statistics.service.Admin_StatisticsService;

@Controller
public class Admin_StatisticsController {
	
	@Autowired
	Admin_StatisticsService admin_StatisticsService;
	
	@RequestMapping("/admin_getPDF.mdo")
	public String getPDF(Model model,HttpServletResponse response) {
		
		List<Admin_StatisticsVO> list = admin_StatisticsService.getMemberRank();
		System.out.println(list);
		
		try {
	         //검색 조건 설정
	         
	         //액셀 생성
	            Workbook workbook = makeExcel(list);

	            //파일명 설정
	            String fileName = "등급별 회원 수";
	            System.out.println(fileName);
	            response.setContentType("ms-vnd/excel");
	            response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8") + ".xlsx");
	            
	            //다운로드 실행
	            workbook.write(response.getOutputStream());
	            workbook.close();
	        } catch (Exception e) {
	           System.out.println("실패!!! " + e);
	        }
		
		//int board_qnaList_answait = Admin_Board_qnaService.selectBoard_qna_answait_num();
		//int member_num = Admin_MemberService.selectMember_num();
		//model.addAttribute("board_qnaList_answait", board_qnaList_answait);
		//model.addAttribute("member_num", member_num);
		
		return "admin_main";
	}
	
	/** 매장별 - 엑셀을 만드는 함수*/
	   public Workbook makeExcel(List<Admin_StatisticsVO> list) throws Exception {

		   
	      //액셀 생성
	      Workbook workbook = new XSSFWorkbook();
	      //시트 생성
	      Sheet sheet = workbook.createSheet("매출 현황");
	      // 행,열 생성
	      Row row = null;
	      Cell cell = null;
	      int rowNum = 0;
	      
	      
	       //헤더 컨텐트 설정
	      String[] headerKey = { "회원 등급", "회원 수"};
	      row = sheet.createRow(rowNum++);
	      for (int i = 0; i < headerKey.length; i++) {
	         cell = row.createCell(i);
	         cell.setCellValue(headerKey[i]);
	      }
	      
	      // 검색 결과 엑셀에 삽입
	      for (int i = 0; i < list.size(); i++) {
	         row = sheet.createRow(rowNum++);
	         Admin_StatisticsVO vo = list.get(i);

	         cell = row.createCell(0);
	         cell.setCellValue(vo.getMember_rank());

	         cell = row.createCell(1);
	         cell.setCellValue(vo.getMember_rank_total());

	      }
	      return workbook;
	   }
	
	 public void memberInfo() {
		 
	 }
	 public void bestInfo() {

	 }
	 public void salesInfo() {

	 }

}
