package com.influencer.model;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.MemberService;
import service.MylistService;
import service.YtubeService;
import vo.MemberVO;

@Controller
public class MypageController {

		HashMap<String,String> map = new HashMap<>();
		
		@Autowired
		MemberService Mservice;
		@Autowired
		YtubeService Yservice;
		
		// my 페이지 이동 및 object로 선택한 list를 담음
		@RequestMapping(value = "/mypagef")
		public ModelAndView mypagef(ModelAndView mv,HttpServletRequest request,MemberVO vo) {
			HttpSession session = request.getSession(false);
			if(session != null && session.getAttribute("Login_Id") != null) {
				vo.setId((String)session.getAttribute("Login_Id"));
				vo = Mservice.selectOne(vo);
				if(vo.getGender().equals("man"))
					vo.setGender("남");
				else
					vo.setGender("여");
				mv.addObject("mlist",vo);
				if ( request.getParameter("jcode")!=null && request.getParameter("jcode").equals("U") )  
					 mv.setViewName("mypage/edit_info");
				else if(request.getParameter("jcode")!=null && request.getParameter("jcode").equals("P"))
					mv.setViewName("mypage/edit_pw");
				else if(request.getParameter("jcode")!=null && request.getParameter("jcode").equals("I"))
					mv.setViewName("mypage/edit_interest");
				else mv.setViewName("mypage/my_page");
			}
			else
				mv.setViewName("member/login");
			return mv;
		}
		
		//내정보 수정 page
		@RequestMapping(value = "/updateU", method=RequestMethod.POST)
		public ModelAndView updateU(ModelAndView mv,HttpServletRequest request,MemberVO vo)throws IOException {
			
			HttpSession session = request.getSession(false);
			vo.setEmail(vo.getEmail().replace("%40","@"));
			System.out.println(vo);
			if ( Mservice.updateU(vo) > 0 ) {
				// 수정성공
				session.setAttribute("id",vo.getId());
				mv.addObject("code", "200");
			}else {
				// 수정실패 -> Form 으로
				mv.addObject("code", "201");
				
			}
			// 3. 결과 : view 처리
			mv.setViewName("jsonView");
			return mv;
		}
		
		//password 수정 page
		@RequestMapping(value = "/updateP", method=RequestMethod.POST)
		public ModelAndView udateP(ModelAndView mv,HttpServletRequest request,MemberVO vo, 
				@RequestParam("newPassword") String newP)throws IOException {
			
			HttpSession session = request.getSession(false);
			String password = request.getParameter("password"); // form에서 입력한 원래 비밀번호
			vo = Mservice.selectOne(vo); // vo에 저장된 비밀번호
			System.out.println(password);
			System.out.println(newP);
			System.out.println(vo.getPassword());
			
			if(vo.getPassword().equals(password)) {
				vo.setPassword(newP);
				System.out.println(vo.getPassword());
				System.out.println(Mservice.updateP(vo));
				if ( Mservice.updateP(vo) > 0 ) {
					// 수정성공
					System.out.println("수정성공");
					session.setAttribute("id",vo.getId());
					mv.addObject("codeS", "300");
					System.out.println(mv.addObject("code"));
				}else {
					// 수정실패
					System.out.println("수정실패1");
					mv.addObject("codeS", "201");
					
				}	
			}else {
				System.out.println("수정실패2");
				mv.addObject("codeS", "202");
			}
			
			
			// 3. 결과 : view 처리
			mv.setViewName("jsonView");
			return mv;
		}

		//관심사 수정 page
		@RequestMapping(value = "/updateI",method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView updateI(ModelAndView mv, MemberVO vo, HttpServletRequest request, 
									  @RequestParam(value="valueArrTest[]") List<String> chbox,@RequestParam(value="id") String id)throws Exception {
			System.out.println(chbox);
			System.out.println(id);
			String interest ="";
			HashMap<String,String> map =new HashMap<String,String>();

			map.put("id", id);
			for (int i=0 ; i<chbox.size() ; i++ ) {
				if(i!=chbox.size()-1)
					interest +=chbox.get(i)+",";
				else
					interest +=chbox.get(i);
			}
			map.put("interest",interest);
			if(Mservice.update(map) > 0) {
				mv.addObject("codeS", "300");
			}else {
				mv.addObject("codeS", "201");
			}
			mv.setViewName("jsonView");
			return mv;
		}
		
}


