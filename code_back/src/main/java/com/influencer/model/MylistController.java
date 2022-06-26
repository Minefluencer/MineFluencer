package com.influencer.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.MemberService;
import vo.MemberVO;

@Controller
public class MylistController {
	@Autowired
	MemberService Service;
	
	@RequestMapping(value = "/mylistf")
	public ModelAndView rankf(ModelAndView mv,HttpServletRequest request,MemberVO vo) {
		HttpSession session = request.getSession(false);
		if(session != null && session.getAttribute("Login_Id") != null)
			mv.setViewName("mylist/my_list");
		else
			mv.setViewName("member/login");
		return mv;
	} 
}
