package bucket.kurly.admin.manager;

public class AdminVO {

	private int admin_no;
	private String admin_name;
	private String admin_position;
	private String admin_id;
	private String admin_pw;
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_position() {
		return admin_position;
	}
	public void setAdmin_position(String admin_position) {
		this.admin_position = admin_position;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}
	@Override
	public String toString() {
		return "AdminVO [admin_no=" + admin_no + ", admin_name=" + admin_name + ", admin_position=" + admin_position
				+ ", admin_id=" + admin_id + ", admin_pw=" + admin_pw + "]";
	}
}
