package bucket.kurly.admin.category;

public class Admin_Category_parentVO {
	
	private String category_parent_no;
	private String category_parent_name;
	private String category_parent_icon;
	private String category_parent_icon_color;
	
	public String getCategory_parent_no() {
		return category_parent_no;
	}
	public void setCategory_parent_no(String category_parent_no) {
		this.category_parent_no = category_parent_no;
	}
	public String getCategory_parent_name() {
		return category_parent_name;
	}
	public void setCategory_parent_name(String category_parent_name) {
		this.category_parent_name = category_parent_name;
	}
	public String getCategory_parent_icon() {
		return category_parent_icon;
	}
	public void setCategory_parent_icon(String category_parent_icon) {
		this.category_parent_icon = category_parent_icon;
	}
	public String getCategory_parent_icon_color() {
		return category_parent_icon_color;
	}
	public void setCategory_parent_icon_color(String category_parent_icon_color) {
		this.category_parent_icon_color = category_parent_icon_color;
	}
	@Override
	public String toString() {
		return "Admin_Category_parentVO [category_parent_no=" + category_parent_no + ", category_parent_name="
				+ category_parent_name + ", category_parent_icon=" + category_parent_icon
				+ ", category_parent_icon_color=" + category_parent_icon_color + "]";
	}
	
}
