package com.not.why.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.not.why.service.TestService;
import com.not.why.vo.Member;
import com.not.why.vo.Member2;


@Controller
@RequestMapping("/*")
public class TestController {
	@Autowired(required = false)
	TestService service;
	
	@RequestMapping("test.do")
	public ModelAndView testMember(Member mem, ModelAndView mav){
		mav.addObject("testMem", service.testMember(mem));
		mav.setViewName("testM");
		return mav;
	}
	@RequestMapping("test2.do")
	public ModelAndView testMember2(Member mem, ModelAndView mav){
		mav.setViewName("testM2");
		return mav;
	}
	@RequestMapping("test3.do")
	public ModelAndView testMember3(Member mem, ModelAndView mav){
		mav.setViewName("testM3");
		return mav;
	}
	@RequestMapping("member.do")
	public ModelAndView liMemberC(Member2 mem, ModelAndView mav){
		mav.addObject("testliMember", service.liMember(mem));
		mav.setViewName("liMember");
		return mav;
	}
}
