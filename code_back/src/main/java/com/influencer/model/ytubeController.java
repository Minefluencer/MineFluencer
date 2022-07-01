package com.influencer.model;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.YtubeService;
import vo.YtubeVO;

/**
 * @author ChoiSungRim
 * @since 22-05-28
 */

@Controller
public class ytubeController {
	@Autowired
	YtubeService Yservice;
	
	//Database 바로 저장.
	@RequestMapping(value = "/ytube")
	public ModelAndView indexf(ModelAndView mv) {
		mv.setViewName("ytube/ytube");
		return mv;
	} 
	
	@RequestMapping(value = "/ytubedata", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView input1 (HttpServletRequest request,ModelAndView mv,YtubeVO vo){
		
		if(vo!=null) {
			Yservice.insert(vo);
		}
		return mv;
	}
	
}
