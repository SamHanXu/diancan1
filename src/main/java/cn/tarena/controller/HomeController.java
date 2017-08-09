package cn.tarena.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home.action")
	public String toLogin(){
		return "/admin/login/login";
	}

}
