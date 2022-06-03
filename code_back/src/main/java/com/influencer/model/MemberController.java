package com.influencer.model;

import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.FristnameService;
import service.MemberService;
import service.YtubeService;
import vo.FristnameVO;
import vo.MemberVO;
import vo.YtubeVO;



/**
 * 2022-05-29
 * Last Update - 최성림
 * Client interest에 따른 Ytube Image 출력 (home.jsp)
 * 
 * mission -mysql 에서 닉네임 조합 테이블을 뷰 형태로 생성하고 counting column 확인
 * */

@Controller
public class MemberController{
	List<YtubeVO> list = new ArrayList<YtubeVO>();
	@Autowired
	MemberService Service;
	@Autowired
	FristnameService Fservice;
	
	int cnt = 0 ;
	
	//login
	@RequestMapping(value = "/loginf")
	public ModelAndView loginf(ModelAndView mv) {
		mv.setViewName("member/login");
		return mv;
	} 
	@RequestMapping(value = "/login")
	@ResponseBody
	public ModelAndView login(ModelAndView mv, HttpServletRequest request,RedirectAttributes attr,MemberVO vo, YtubeVO vo1) {
		String password = request.getParameter("pw"); // 입력한 비밀번호
		vo = Service.selectOne(vo); // vo에 저장된 비밀번호
		
		List<MemberVO> vq = Service.imgOne(vo.getInterest());
		int i = 1;
		int j = 0;
		
		if(vo!=null) {
			if(vo.getPassword().equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("Login_Id", vo.getId());
				session.setAttribute("Login_Name", vo.getNick_name());
				if(vo.getInterest() != null) {
					// 여러개의 값중 가장 앞에있는 interest를 뽑아내기위함.
					session.setAttribute("interest", vo.getInterest());
					
					if(vo.getInterest().length()>=3)	
						session.setAttribute("interest", vo.getInterest().substring(0,2)); 
					//Interest에 따른 Ytube Image 출력 
					do {
						session.setAttribute("img"+i, vq.get(j).getImage());
						session.setAttribute("name"+i,vq.get(j).getName());
						session.setAttribute("subs"+i,vq.get(j).getSubscribe());
						i++; j++;
					}while (i <= 3);
					
				}else session.setAttribute("interest", vo.getInterest()); 
				mv.setViewName("home");
			}else {
				mv.setViewName("member/login");
			}
		}else { 
			mv.setViewName("member/login");
		}
		return mv;
	}
	
	//logout control
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request,ModelAndView mv) {
		
		request.getSession().invalidate();
		mv.setViewName("home");
		return mv;
	}
	
	// check control
	@RequestMapping(value = "/all")
	public ModelAndView allcheck(HttpServletRequest request,ModelAndView mv,HttpServletResponse response) {
		request.getSession().invalidate();
		mv.setViewName("member/all");
		return mv;
	}
	@RequestMapping(value = "/idGetf" , method = RequestMethod.POST)
	public ModelAndView idGet(ModelAndView mv) {
		mv.setViewName("member/idGet");
		return mv;
	}
	@RequestMapping(value = "/pwGetf", method = RequestMethod.POST)
	public ModelAndView pwGet(ModelAndView mv) {
		mv.setViewName("member/pwGet");
		return mv;
	}
	
	
	// join
	@RequestMapping(value = {"/joinf","/t"}, method = RequestMethod.GET)
	public ModelAndView joinf(ModelAndView mv,HttpServletRequest request,MemberVO vo) {
		List<FristnameVO> vq = Fservice.givenick();
		
		
		mv.addObject("apple",vq.get(cnt).getNick_name()); // 닉네임 넣어주기
		cnt++;
		mv.setViewName("member/join");
		return mv;
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public ModelAndView join (ModelAndView mv, HttpServletRequest request, MemberVO vo) {
		if(Service.insert(vo)>0) {
			mv.addObject("message", "회원가입 완료");
			mv.setViewName("member/loginForm");
		}else {
			mv.addObject("message", "회원가입 오류 다시하세요");
			mv.setViewName("member/join");
		}
		
		return mv;
		
	}
	
	@RequestMapping(value = "/idDupCheck", method = RequestMethod.GET)
	public ModelAndView idDupCheck(ModelAndView mv,MemberVO vo) {
		mv.addObject("newId",vo.getId());
		vo = Service.selectOne(vo);
		if(vo!=null) {
			// 사용 불가능 id 존재
			mv.addObject("idUse","F");
		}else {
			// 사용 가능 id 존재
			mv.addObject("idUse","T");
		}
		mv.setViewName("member/idDupCheck");
		return mv;
	} // idDupCheck
	
	

	
	

}
