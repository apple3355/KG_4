package bucket.kurly.admin.board;

import java.util.Date;

public class Admin_Board_noticeVO {
	private int board_notice_no;
	private String board_notice_title;
	private String board_notice_writer;
	private Date board_notice_date;
	private int board_notice_hits;
	private String board_notice_content;
	
	private int getPrev;
	private int getNext;
	
	public int getBoard_notice_no() {
		return board_notice_no;
	}
	public void setBoard_notice_no(int board_notice_no) {
		this.board_notice_no = board_notice_no;
	}
	public String getBoard_notice_title() {
		return board_notice_title;
	}
	public void setBoard_notice_title(String board_notice_title) {
		this.board_notice_title = board_notice_title;
	}
	public String getBoard_notice_writer() {
		return board_notice_writer;
	}
	public void setBoard_notice_writer(String board_notice_writer) {
		this.board_notice_writer = board_notice_writer;
	}
	public Date getBoard_notice_date() {
		return board_notice_date;
	}
	public void setBoard_notice_date(Date board_notice_date) {
		this.board_notice_date = board_notice_date;
	}
	public int getBoard_notice_hits() {
		return board_notice_hits;
	}
	public void setBoard_notice_hits(int board_notice_hits) {
		this.board_notice_hits = board_notice_hits;
	}
	public String getBoard_notice_content() {
		return board_notice_content;
	}
	public void setBoard_notice_content(String board_notice_content) {
		this.board_notice_content = board_notice_content;
	}
	
		
	public int getGetPrev() {
		return getPrev;
	}
	public void setGetPrev(int getPrev) {
		this.getPrev = getPrev;
	}
	public int getGetNext() {
		return getNext;
	}
	public void setGetNext(int getNext) {
		this.getNext = getNext;
	}
	
	
	
	@Override
	public String toString() {
		return "Board_noticeVO [board_notice_no=" + board_notice_no + ", board_notice_title=" + board_notice_title
				+ ", board_notice_writer=" + board_notice_writer + ", board_notice_date=" + board_notice_date
				+ ", board_notice_hits=" + board_notice_hits + ", board_notice_content=" + board_notice_content + "]";
	}
	
	
}
