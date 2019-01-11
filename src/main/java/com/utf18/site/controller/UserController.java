package com.utf18.site.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.utf18.site.service.UserService;
import com.utf18.site.vo.UserVO;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("loginform.do")
	public String loginForm() {
		return "joinpage";
	}

	@RequestMapping("joininsert.do")
	public String insertUser(@ModelAttribute UserVO vo) {
		userService.insertUser(vo);
		return "joinpage";
	}
	
	@RequestMapping("joinform.do")
	public String joinForm() {
		return "joinform";
	}
	
	@RequestMapping("login.do")
	public String login(UserVO vo, HttpSession session) {
		System.out.println(vo.toString());
		if (userService.getUserVO(vo) != null) {
			UserVO vo2 = userService.getUserVO(vo);
			if (vo2.getPassword().equals(vo.getPassword())) {
				session.setAttribute("email", vo2.getEmail());
				session.setAttribute("password", vo2.getPassword());
				session.setAttribute("nickname", vo2.getNickname());
				return "list.do";
			} else {
				session.setAttribute("error", "비밀번호를 확인해주세요");
				return "joinpage";
			}
		} else {
			session.setAttribute("error", "없는아이디입니다");
			return "joinpage";
		}
	}
	
	@RequestMapping("findpasswordform.do")
	public String findPWform() {
		return "findpassword";
	}
	
	@RequestMapping("findpassword.do")
	public String findpw(UserVO vo, Model model) {
		vo = userService.getUserVO(vo);
		model.addAttribute("password", vo.getPassword());
		return "findpassword";
	}
	

}
