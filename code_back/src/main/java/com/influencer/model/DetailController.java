package com.influencer.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.YtubeService;
import vo.YtubeVO;

@Controller
public class DetailController {
	
	@Autowired
	YtubeService Yservice;
	
	//input string 'image' 에러발생 (220714)
	@RequestMapping(value = "/detailf")
	public ModelAndView loginf(ModelAndView mv,
							   @RequestParam(value = "value", required=false) String value) {
		System.out.println("value = " +value);
		List<YtubeVO> list = new ArrayList<>();
		list.addAll(Yservice.infdetail(value));
		System.out.println(list);
		mv.addObject("list",list);
		mv.setViewName("jsonView");
		return mv;
	} 
}
