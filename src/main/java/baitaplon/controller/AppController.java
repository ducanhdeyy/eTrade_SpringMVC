package baitaplon.controller;

import baitaplon.DAO.UserDao;
import baitaplon.entities.Category;
import baitaplon.entities.User;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AppController {
	@Autowired
	private UserDao UserDao;
	@RequestMapping(value = {"/admin","/login" })
	public String login(@RequestParam(value = "error", required = false) String error, Model model) {
		if (error != null) {
			model.addAttribute("mess", "Login failed!");
		}
		model.addAttribute("title", "Login");
		return "login";
	}
	@RequestMapping({"/admin/logout" })
	public String logoutAdmin(Model model) {
		model.addAttribute("mess", "Has Logged out!!!");
		return "login";
	}
	@RequestMapping("/logout")
	public String logout(Model model) {
		model.addAttribute("mess", "Has Logged out!!!");
		return "login";
	}
	@RequestMapping("/signup")
	public String signup(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("title", "Register an account");
		return "signup";
	}
	@RequestMapping("/signup-check")
	public String save(@ModelAttribute("user") User user, Model model) {
			String hashedPass = BCrypt.hashpw(user.getPassWord(), BCrypt.gensalt());
			user.setPassWord(hashedPass);
			Boolean users = UserDao.create(user);
			if (users) {
				model.addAttribute("success","Sign Up Success");
				model.addAttribute("user",user);
				return "signup";
			}else {
				model.addAttribute("error","Sign Up Failed");
				return "signup";
			}
    }
}
