package bucket.kurly.admin.marketing;

/* 
현재 테이블(09/24)
CREATE TABLE TB_BANNER(
    BANNER_NO serial NOT NULL,
    BANNER_TITLE VARCHAR(100) NOT NULL, 
    BANNER_FILEPATH VARCHAR(500) NOT NULL,
    BANNER_CONTENTS TEXT NOT NULL, 
    CONSTRAINT BANNER_PKEY PRIMARY KEY(BANNER_NO)
);
 */

public class BannerVO {
	private int banner_no;
	private String banner_title;
	private String banner_filepath;
	private String banner_contents;
	
	public int getBanner_no() {
		return banner_no;
	}
	public void setBanner_no(int banner_no) {
		this.banner_no = banner_no;
	}
	public String getBanner_title() {
		return banner_title;
	}
	public void setBanner_title(String banner_title) {
		this.banner_title = banner_title;
	}
	public String getBanner_filepath() {
		return banner_filepath;
	}
	public void setBanner_filepath(String banner_filepath) {
		this.banner_filepath = banner_filepath;
	}
	public String getBanner_contents() {
		return banner_contents;
	}
	public void setBanner_contents(String banner_contents) {
		this.banner_contents = banner_contents;
	}
	@Override
	public String toString() {
		return "BannerVO [banner_no=" + banner_no + ", banner_title=" + banner_title + ", banner_filepath="
				+ banner_filepath + ", banner_contents=" + banner_contents + "]";
	}
	
	
	
	
}