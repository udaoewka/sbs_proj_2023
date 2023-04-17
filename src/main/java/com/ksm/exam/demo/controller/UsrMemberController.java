package com.ksm.exam.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ksm.exam.demo.service.MemberService;
import com.ksm.exam.demo.vo.Member;

@Controller
public class UsrMemberController {
	
	@Autowired
	private MemberService memberService;
	
	public UsrMemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public Member doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNo, String email) {
		int id = memberService.join(loginId, loginPw, name, nickname, cellphoneNo, email);
		Member member = memberService.getMemberById(id);
		
		return member;
	}
	
	@RequestMapping("/usr/member/getMembers")
	@ResponseBody
	public List<Member> getMembers(){
		return memberService.getMembers();
	}

}
