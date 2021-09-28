package bucket.kurly.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin_MainController {

	//메인화면
	@RequestMapping("/admin_main.mdo")
	public String admin_main() {
		return "admin_main";
	}
	
	//로그인화면
	@RequestMapping("/admin_login.mdo")
	public String admin_login() {
		return "manager/admin_login";
	}
}
