package bucket.kurly.board;

import java.util.Date;

public class Board_fileVO {

	private int board_file_no;
	private int board_file_qna_no;
	private int board_file_member_no;
	private String board_file_name;
	private String board_file_resource;

	public int getBoard_file_no() {
		return board_file_no;
	}

	public void setBoard_file_no(int board_file_no) {
		this.board_file_no = board_file_no;
	}

	public int getBoard_file_qna_no() {
		return board_file_qna_no;
	}

	public void setBoard_file_qna_no(int board_file_qna_no) {
		this.board_file_qna_no = board_file_qna_no;
	}

	public int getBoard_file_member_no() {
		return board_file_member_no;
	}

	public void setBoard_file_member_no(int board_file_member_no) {
		this.board_file_member_no = board_file_member_no;
	}

	public String getBoard_file_name() {
		return board_file_name;
	}

	public void setBoard_file_name(String board_file_name) {
		this.board_file_name = board_file_name;
	}

	public String getBoard_file_resource() {
		return board_file_resource;
	}

	public void setBoard_file_resource(String board_file_resource) {
		this.board_file_resource = board_file_resource;
	}

	@Override
	public String toString() {
		return "Board_fileVO [board_file_no=" + board_file_no + ", board_file_qna_no=" + board_file_qna_no
				+ ", board_file_member_no=" + board_file_member_no + ", board_file_name=" + board_file_name
				+ ", board_file_resource=" + board_file_resource + "]";
	}


}
