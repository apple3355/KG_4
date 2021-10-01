package bucket.kurly.admin.category;

import lombok.Getter;

@Getter
public class Admin_Category_subVO {
	
	private String category_sub_no;
	private String category_sub_name;
	private String category_sub_parent_no;
	
	public String getCategory_sub_no() {
		return category_sub_no;
	}
	public void setCategory_sub_no(String category_sub_no) {
		this.category_sub_no = category_sub_no;
	}
	public String getCategory_sub_name() {
		return category_sub_name;
	}
	public void setCategory_sub_name(String category_sub_name) {
		this.category_sub_name = category_sub_name;
	}
	public String getCategory_sub_parent_no() {
		return category_sub_parent_no;
	}
	public void setCategory_sub_parent_no(String category_sub_parent_no) {
		this.category_sub_parent_no = category_sub_parent_no;
	}
	@Override
	public String toString() {
		return "Admin_Category_subVO [category_sub_no=" + category_sub_no + ", category_sub_name=" + category_sub_name
				+ ", category_sub_parent_no=" + category_sub_parent_no + "]";
	}
	
	
}
