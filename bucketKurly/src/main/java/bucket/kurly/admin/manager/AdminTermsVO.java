package bucket.kurly.admin.manager;

/*
 CREATE TABLE TB_TERMS(
	SEQ serial NOT NULL,
	TERMS_NO INTEGER PRIMARY KEY,
	TERMS_TITLE VARCHAR(60),
	TERMS_ESSENTIAL VARCHAR(10),
	TERMS_CONTENTS TEXT,
	TERMS_REG_DATE VARCHAR(20)
);
 */

public class AdminTermsVO {

	private int seq;
	private int terms_no;
	private String terms_title;
	private String terms_essential;
	private String terms_contents;
	private String terms_reg_date;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getTerms_no() {
		return terms_no;
	}
	public void setTerms_no(int terms_no) {
		this.terms_no = terms_no;
	}
	public String getTerms_title() {
		return terms_title;
	}
	public void setTerms_title(String terms_title) {
		this.terms_title = terms_title;
	}
	public String getTerms_essential() {
		return terms_essential;
	}
	public void setTerms_essential(String terms_essential) {
		this.terms_essential = terms_essential;
	}
	public String getTerms_contents() {
		return terms_contents;
	}
	public void setTerms_contents(String terms_contents) {
		this.terms_contents = terms_contents;
	}
	public String getTerms_reg_date() {
		return terms_reg_date;
	}
	public void setTerms_reg_date(String terms_reg_date) {
		this.terms_reg_date = terms_reg_date;
	}
	@Override
	public String toString() {
		return "AdminTermsVO [seq=" + seq + ", terms_no=" + terms_no + ", terms_title=" + terms_title
				+ ", terms_essential=" + terms_essential + ", terms_contents=" + terms_contents + ", terms_reg_date="
				+ terms_reg_date + "]";
	}
	
	
	
	
}
