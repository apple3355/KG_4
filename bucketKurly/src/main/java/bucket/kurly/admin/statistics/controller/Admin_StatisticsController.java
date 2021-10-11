package bucket.kurly.admin.statistics.controller;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import bucket.kurly.admin.statistics.Admin_StatisticsVO;
import bucket.kurly.admin.statistics.service.Admin_StatisticsService;

@Controller
public class Admin_StatisticsController {

	@Autowired
	Admin_StatisticsService admin_statisticsService;
	
	// 회원,상품 통계 페이지 이동
	@RequestMapping("/admin_statistics_rank.mdo")
	public String getStatistics_rank(Model model) {
		List<Admin_StatisticsVO> memberList = admin_statisticsService.getMemberRank();
		//List<Admin_StatisticsVO> itemList = admin_statisticsService.getBestItem(); 
		System.out.println(memberList);
		//System.out.println(itemList);
		
		model.addAttribute("Admin_StatisticsVO",memberList);
		//model.addAttribute("Admin_StatisticsVO",itemList);
		
		return "statistics/admin_statistics_rank";
	}
	
	// 매출 통계 페이지 이동
	@RequestMapping("/admin_statistics_revenue.mdo")
	public String getStatistics_revenue(Model model) {
		return "statistics/admin_statistics_revenue";
	}

	
//========================================================================================================================================	
	
	// 등급 별 회원 수 PDF
	public Document makePDF_rank(String fileName,HttpServletRequest request ,HttpServletResponse response) throws Exception {
		
			Document document = null;
			
		try {
			//검색 조건 설정
			//검색 조건에 맞는 통계 결과를 가져옵니다.
			List<Admin_StatisticsVO> list = new ArrayList<Admin_StatisticsVO>();
			list = admin_statisticsService.getMemberRank();
			//날짜 형식 변환
			
			//PDF 생성
			document = new Document();
			
	        response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8") + ".pdf");
	        
			PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());
	 		writer.setInitialLeading(12.5f);
			document.setMargins(10, 10, 20, 20);
			document.open();
			
			//폰트 설정
			BaseFont baseFont = BaseFont.createFont(request.getSession().getServletContext().getRealPath("resources/font/NanumGothic.ttf"),
					BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
			System.out.println();
			Font font = new Font(baseFont,10);
			
			System.out.println(request.getSession().getServletContext().getRealPath("resources/font/NanumGothic.ttf"));
			//테이블 생성
			PdfPTable table = new PdfPTable(2);
			table.setWidths(new int[]{2, 2});
			
			//타이틀 헤더 설정
			Paragraph paragraph = new Paragraph("등급별 회원수",font);
			paragraph.setAlignment(Element.ALIGN_CENTER);
            document.add(paragraph); // 문단을 만들어서 가운데 정렬 (타이틀의 이름을 가운데 정렬한다는 뜻)
            document.add(Chunk.NEWLINE); // 줄바꿈 (왜냐하면 타이틀에서 두줄을 내린후에 셀(테이블)이 나오기 때문)
            //테이블 설정
            PdfPCell cell1 = new PdfPCell(new Paragraph("등급",font)); // 셀의 이름과 폰트를 지정해서 셀을 생성한다.
            cell1.setHorizontalAlignment(Element.ALIGN_CENTER); // 셀의 정렬방식을 지정한다. (가운데정렬)
            cell1.setPadding(3);

            PdfPCell cell2 = new PdfPCell(new Paragraph("등급별 회원수",font));
            cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
 
            //테이블에 생성된 셀 삽입
            table.addCell(cell1);
            table.addCell(cell2);
            
           //검색 결과 데이터를 삽입
            for (int i=0; i< list.size(); i++) {
            	Admin_StatisticsVO vo = list.get(i);
            	
            	PdfPCell cellRank = new PdfPCell(new Paragraph(vo.getMember_rank(),font));
            	String cellRankTotaltoString = String.valueOf(vo.getMember_rank_total());
            	cellRank.setHorizontalAlignment(Element.ALIGN_CENTER);
            	PdfPCell cellRankTotal = new PdfPCell(new Paragraph(cellRankTotaltoString,font));
            	cellRankTotal.setHorizontalAlignment(Element.ALIGN_CENTER);
            	
            	//String price = String.valueOf(Commas.format(vo.getMenu_price()));
            	//price = "￦" + price + "원";
            	
            	table.addCell(cellRank);
            	table.addCell(cellRankTotal);
            	
            }
			document.add(table);
			document.close();
		}catch (Exception e) {
			System.out.println("만드는거부터 실패!!!~!~!~!" +  e);
		}
		return document;
	}
	// 등급 별 회원 수 PDF 다운로드
	@RequestMapping(value = "/admin_getRankPDF.mdo")
	public void getPDF_rank(HttpServletResponse response,HttpServletRequest request) throws Exception {
		
		try {
			// 검색 조건 설정
			// 파일명 설정
			String fileName = "등급별 회원 수";

			// PDF 생성
			makePDF_rank(fileName, request, response);
			

		} catch (Exception e) {
			System.out.println("실패!!! " + e);
		}
	}
	// 등급별 회원 수 EXCEL
	public Workbook makeExcel_rank(List<Admin_StatisticsVO> list) throws Exception {

		// 액셀 생성
		Workbook workbook = new XSSFWorkbook();
		// 시트 생성
		Sheet sheet = workbook.createSheet("매출 현황");
		// 행,열 생성
		Row row = null;
		Cell cell = null;
		int rowNum = 0;

		// 헤더 컨텐트 설정
		String[] headerKey = { "회원 등급", "회원 수" };
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
	// 등급별 회원 수 EXCEL 다운로드
	@RequestMapping("/admin_getRankEXCEL.mdo")
	public String getEXCEL_rank(Model model, HttpServletResponse response) {

		List<Admin_StatisticsVO> list = admin_statisticsService.getMemberRank();
		System.out.println(list);

		try {
			// 검색 조건 설정

			// 액셀 생성
			Workbook workbook = makeExcel_rank(list);

			// 파일명 설정
			String fileName = "등급별 회원 수";
			System.out.println(fileName);
			response.setContentType("ms-vnd/excel");
			response.setHeader("Content-Disposition","attachment;filename=" + URLEncoder.encode(fileName, "UTF-8") + ".xlsx");

			// 다운로드 실행
			workbook.write(response.getOutputStream());
			workbook.close();
		} catch (Exception e) {
			System.out.println("실패!!! " + e);
		}

		// int board_qnaList_answait =
		// Admin_Board_qnaService.selectBoard_qna_answait_num();
		// int member_num = Admin_MemberService.selectMember_num();
		// model.addAttribute("board_qnaList_answait", board_qnaList_answait);
		// model.addAttribute("member_num", member_num);

		return "admin_main";
	}
	
//========================================================================================================================================
	
	//일별매출 PDF
	public Document makePDF_daily(String fileName,HttpServletRequest request, HttpServletResponse response) {
		Document document = null;
		
		try {
			//검색 조건 설정
			//검색 조건에 맞는 통계 결과를 가져옵니다.
			List<Admin_StatisticsVO> list = admin_statisticsService.getRevenue_daily();
			//날짜 형식 변환
			
			//PDF 생성
			document = new Document();
			
	        response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8") + ".pdf");
	        
			PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());
	 		writer.setInitialLeading(12.5f);
			document.setMargins(10, 10, 20, 20);
			document.open();
			
			//폰트 설정
			BaseFont baseFont = BaseFont.createFont(request.getSession().getServletContext().getRealPath("resources/font/NanumGothic.ttf"),
					BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
			System.out.println();
			Font font = new Font(baseFont,10);
			
			//테이블 생성
			PdfPTable table = new PdfPTable(3);
			table.setWidths(new int[]{2, 2, 2});
			
			//타이틀 헤더 설정
			Paragraph paragraph = new Paragraph("일별 매출 페이지 입니다",font);
			paragraph.setAlignment(Element.ALIGN_CENTER);
            document.add(paragraph); // 문단을 만들어서 가운데 정렬 (타이틀의 이름을 가운데 정렬한다는 뜻)
            document.add(Chunk.NEWLINE); // 줄바꿈 (왜냐하면 타이틀에서 두줄을 내린후에 셀(테이블)이 나오기 때문)
            //테이블 설정
            PdfPCell cell1 = new PdfPCell(new Phrase("주문 날짜",font)); // 셀의 이름과 폰트를 지정해서 셀을 생성한다.
            cell1.setHorizontalAlignment(Element.ALIGN_CENTER); // 셀의 정렬방식을 지정한다. (가운데정렬)
            cell1.setPadding(3);

            PdfPCell cell2 = new PdfPCell(new Phrase("주문 횟수",font));
            cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
            
            PdfPCell cell3 = new PdfPCell(new Phrase("매출 액",font));
            cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
            
            //테이블에 생성된 셀 삽입
            table.addCell(cell1);
            table.addCell(cell2);
            table.addCell(cell3);
            
           //검색 결과 데이터를 삽입
            for (int i=0; i< list.size(); i++) {
            	Admin_StatisticsVO vo = list.get(i);
            	
            	PdfPCell cellOrderDate = new PdfPCell(new Phrase(vo.getOrder_date()));
            	cellOrderDate.setHorizontalAlignment(Element.ALIGN_CENTER);
            	
            	String cellOrderTotaltoString = String.valueOf(vo.getOrder_total());
            	cellOrderTotaltoString = cellOrderTotaltoString + "건";
            	PdfPCell cellOrderTotal = new PdfPCell(new Phrase(cellOrderTotaltoString,font));
            	cellOrderTotal.setHorizontalAlignment(Element.ALIGN_CENTER);
            	
            	String cellRevenueTotaltoString = String.valueOf(vo.getRevenue_total());
            	cellRevenueTotaltoString = "￦" + cellRevenueTotaltoString + "원";
            	PdfPCell cellRevenueTotal = new PdfPCell(new Phrase(cellRevenueTotaltoString,font));
            	cellRevenueTotal.setHorizontalAlignment(Element.ALIGN_RIGHT);
            	
            	table.addCell(cellOrderDate);
            	table.addCell(cellOrderTotal);
            	table.addCell(cellRevenueTotal);
            	
            }
			document.add(table);
			document.close();
		}catch (Exception e) {
			System.out.println("만드는거부터 실패!!!~!~!~!" +  e);
		}
		
		return document;
	}
	//일별매출 PDF 다운로드
	@RequestMapping("/admin_getRevenuePDF_daily.mdo")
	public void getRevenue_daily(HttpServletResponse response,HttpServletRequest request) throws Exception {
		
		List<Admin_StatisticsVO> list = admin_statisticsService.getRevenue_daily();
		System.out.println(list);

		try {
			// 검색 조건 설정

			// 파일명 설정
			String fileName = "일별 매출";

			// PDF 생성
			makePDF_daily(fileName, request, response);

		} catch (Exception e) {
			System.out.println("실패!!! " + e);
		}
	}
	// 일별매출 EXCEL
	public Workbook makeExcel_daily(List<Admin_StatisticsVO> list) throws Exception {

		// 액셀 생성
		Workbook workbook = new XSSFWorkbook();
		// 시트 생성
		Sheet sheet = workbook.createSheet("매출 현황");
		// 행,열 생성
		Row row = null;
		Cell cell = null;
		int rowNum = 2;

		// 헤더 컨텐트 설정
		String[] headerKey = {"","날짜", "주문 수","판매 금액" };
		row = sheet.createRow(rowNum++);
		for (int i = 0; i < headerKey.length; i++) {
			cell = row.createCell(i);
			cell.setCellValue(headerKey[i]);
		}

		// 검색 결과 엑셀에 삽입
		for (int i = 0; i < list.size(); i++) {
			row = sheet.createRow(rowNum++);
			Admin_StatisticsVO vo = list.get(i);

			cell = row.createCell(1);
			cell.setCellValue(vo.getOrder_date());

			cell = row.createCell(2);
			cell.setCellValue(vo.getOrder_total());
			
			cell = row.createCell(3);
			cell.setCellValue(vo.getRevenue_total());

		}
		return workbook;
	}
	// 일별 매출 EXCEL 다운로드
	@RequestMapping("/admin_getRevenueEXCEL_daily.mdo")
	public String getEXCEL_daily(Model model, HttpServletResponse response) {

		List<Admin_StatisticsVO> list = admin_statisticsService.getRevenue_daily();
		System.out.println(list);

		try {
			// 검색 조건 설정

			// 액셀 생성
			Workbook workbook = makeExcel_daily(list);

			// 파일명 설정
			String fileName = "일별 매출";
			System.out.println(fileName);
			response.setContentType("ms-vnd/excel");
			response.setHeader("Content-Disposition","attachment;filename=" + URLEncoder.encode(fileName, "UTF-8") + ".xlsx");

			// 다운로드 실행
			workbook.write(response.getOutputStream());
			workbook.close();
		} catch (Exception e) {
			System.out.println("실패!!! " + e);
		}

		// int board_qnaList_answait =
		// Admin_Board_qnaService.selectBoard_qna_answait_num();
		// int member_num = Admin_MemberService.selectMember_num();
		// model.addAttribute("board_qnaList_answait", board_qnaList_answait);
		// model.addAttribute("member_num", member_num);

		return "admin_main";
	}
	
//====================================================================================================================================
	
	//월별매출 PDF
	public Document makePDF_monthly(String fileName,HttpServletRequest request, HttpServletResponse response) {
		Document document = null;
		
		try {
			//검색 조건 설정
			//검색 조건에 맞는 통계 결과를 가져옵니다.
			List<Admin_StatisticsVO> list = admin_statisticsService.getRevenue_monthly();
			//날짜 형식 변환
			
			//PDF 생성
			document = new Document();
			
	        response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8") + ".pdf");
	        
			PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());
	 		writer.setInitialLeading(12.5f);
			document.setMargins(10, 10, 20, 20);
			document.open();
			
			//폰트 설정
			BaseFont baseFont = BaseFont.createFont(request.getSession().getServletContext().getRealPath("resources/font/NanumGothic.ttf"),
					BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
			System.out.println();
			Font font = new Font(baseFont,10);
			
			//테이블 생성
			PdfPTable table = new PdfPTable(3);
			table.setWidths(new int[]{2, 2, 2});
			
			//타이틀 헤더 설정
			Paragraph paragraph = new Paragraph("월별 매출 페이지 입니다",font);
			paragraph.setAlignment(Element.ALIGN_CENTER);
            document.add(paragraph); // 문단을 만들어서 가운데 정렬 (타이틀의 이름을 가운데 정렬한다는 뜻)
            document.add(Chunk.NEWLINE); // 줄바꿈 (왜냐하면 타이틀에서 두줄을 내린후에 셀(테이블)이 나오기 때문)
            //테이블 설정
            PdfPCell cell1 = new PdfPCell(new Phrase("조회 날짜",font)); // 셀의 이름과 폰트를 지정해서 셀을 생성한다.
            cell1.setHorizontalAlignment(Element.ALIGN_CENTER); // 셀의 정렬방식을 지정한다. (가운데정렬)
            cell1.setPadding(3);

            PdfPCell cell2 = new PdfPCell(new Phrase("주문 건수",font));
            cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
            
            PdfPCell cell3 = new PdfPCell(new Phrase("누적 매출 금액",font));
            cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
            
            //테이블에 생성된 셀 삽입
            table.addCell(cell1);
            table.addCell(cell2);
            table.addCell(cell3);
            
            //DecimalFormat Commas = new DecimalFormat("#,###");
            
           //검색 결과 데이터를 삽입
            for (int i=0; i< list.size(); i++) {
            	Admin_StatisticsVO vo = list.get(i);
            	
            	PdfPCell cellOrderDate = new PdfPCell(new Phrase(vo.getTo_char()));
            	cellOrderDate.setHorizontalAlignment(Element.ALIGN_CENTER);
            	
            	String cellOrderTotaltoString = String.valueOf(vo.getOrder_total());
            	cellOrderTotaltoString = cellOrderTotaltoString + "건";
            	PdfPCell cellOrderTotal = new PdfPCell(new Phrase(cellOrderTotaltoString,font));
            	cellOrderTotal.setHorizontalAlignment(Element.ALIGN_CENTER);
            	
            	String cellRevenueTotaltoString = String.valueOf(vo.getRevenue_total());
            	cellRevenueTotaltoString = "￦" + cellRevenueTotaltoString + "원";
            	PdfPCell cellRevenueTotal = new PdfPCell(new Phrase(cellRevenueTotaltoString,font));
            	cellRevenueTotal.setHorizontalAlignment(Element.ALIGN_RIGHT);
            	
            	table.addCell(cellOrderDate);
            	table.addCell(cellOrderTotal);
            	table.addCell(cellRevenueTotal);
            	
            }
			document.add(table);
			document.close();
		}catch (Exception e) {
			System.out.println("만드는거부터 실패!!!~!~!~!" +  e);
		}
		
		return document;
	}
	// 월별매출 PDF 다운로드
	@RequestMapping("/admin_getRevenuePDF_monthly.mdo")
	public void getRevenue_monthly(HttpServletResponse response,HttpServletRequest request) throws Exception {
		
		List<Admin_StatisticsVO> list = admin_statisticsService.getRevenue_monthly();
		System.out.println(list);

		try {
			// 검색 조건 설정

			// 파일명 설정
			String fileName = "월별 매출";

			// PDF 생성
			makePDF_monthly(fileName, request, response);

		} catch (Exception e) {
			System.out.println("실패!!! " + e);
		}
	}
	// 월별매출 EXCEL
	public Workbook makeExcel_monthly(List<Admin_StatisticsVO> list) throws Exception {

		// 액셀 생성
		Workbook workbook = new XSSFWorkbook();
		// 시트 생성
		Sheet sheet = workbook.createSheet("월별 매출 현황");
		// 행,열 생성
		Row row = null;
		Cell cell = null;
		int rowNum = 2;

		// 헤더 컨텐트 설정
		String[] headerKey = {"","조회 날짜", "주문 건수","누적 판매 금액" };
		row = sheet.createRow(rowNum++);
		for (int i = 0; i < headerKey.length; i++) {
			cell = row.createCell(i);
			cell.setCellValue(headerKey[i]);
		}

		// 검색 결과 엑셀에 삽입
		for (int i = 0; i < list.size(); i++) {
			row = sheet.createRow(rowNum++);
			Admin_StatisticsVO vo = list.get(i);

			cell = row.createCell(1);
			cell.setCellValue(vo.getTo_char());

			cell = row.createCell(2);
			cell.setCellValue(vo.getOrder_total());
			
			cell = row.createCell(3);
			cell.setCellValue(vo.getRevenue_total());

		}
		return workbook;
	}
	// 월별 매출 EXCEL 다운로드
	@RequestMapping("/admin_getRevenueEXCEL_monthly.mdo")
	public String getEXCEL_monthly(Model model, HttpServletResponse response) {

		List<Admin_StatisticsVO> list = admin_statisticsService.getRevenue_monthly();
		System.out.println(list);

		try {
			// 검색 조건 설정

			// 액셀 생성
			Workbook workbook = makeExcel_monthly(list);

			// 파일명 설정
			String fileName = "월별 매출";
			System.out.println(fileName);
			response.setContentType("ms-vnd/excel");
			response.setHeader("Content-Disposition","attachment;filename=" + URLEncoder.encode(fileName, "UTF-8") + ".xlsx");

			// 다운로드 실행
			workbook.write(response.getOutputStream());
			workbook.close();
		} catch (Exception e) {
			System.out.println("실패!!! " + e);
		}

		// int board_qnaList_answait =
		// Admin_Board_qnaService.selectBoard_qna_answait_num();
		// int member_num = Admin_MemberService.selectMember_num();
		// model.addAttribute("board_qnaList_answait", board_qnaList_answait);
		// model.addAttribute("member_num", member_num);

		return "admin_main";
	}
		
}
