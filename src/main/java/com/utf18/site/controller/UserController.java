package com.utf18.site.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.utf18.site.service.UserService;
import com.utf18.site.vo.UserVO;


@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("joininsert.do")
	public String insertUser(@ModelAttribute UserVO vo) {
		userService.insertUser(vo);
		return "joinpage.jsp";
	}
/*
	@RequestMapping("login.do")
	public String login(UserVO vo, HttpSession session) {
		if (userService.getuservo(vo) != null) {
			UserVO vo2 = userService.getuservo(vo);
			if (vo2.getPassword().equals(vo.getPassword())) {
				session.setAttribute("email", vo2.getEmail());
				session.setAttribute("password", vo2.getPassword());
				session.setAttribute("nickname", vo2.getNickname());
				return "list.do";

			} else {
				session.setAttribute("error", "비밀번호를 확인해주세요");
				return "joinpage.jsp";
			}
		} else {
			session.setAttribute("error", "없는아이디입니다");
			return "joinpage.jsp";
		}

	}

*/
}
