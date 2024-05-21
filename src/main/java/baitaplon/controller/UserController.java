package baitaplon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping("/user")
	public String userPage(Model model) {
		model.addAttribute("mess", "Welcome user page");
		model.addAttribute("title", "Home");
		return "index";
	}

}

