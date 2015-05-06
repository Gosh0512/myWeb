package com.gosh.memberController;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gosh.memberDAO.MemberDAO;
import com.gosh.memberDTO.MemberDTO;


@RequestMapping("/member")
@Controller
public class MemberController {

	@Autowired
	MemberDAO memberdao;

	@RequestMapping("/index.do")
	public String memberIndex() {
		return "member/member_index";
	}

	@RequestMapping("/insertOK.do")
	public ModelAndView memberInsert(@RequestParam String email,
			@RequestParam String id, @RequestParam String nickname,
			@RequestParam String pass, @RequestParam String sex,
			@RequestParam String year, @RequestParam String month,
			@RequestParam String day, HttpSession session,ModelAndView mav) {

		MemberDTO dto = new MemberDTO();
		dto.setEmail(email);
		dto.setId(id);
		dto.setNickname(nickname);
		dto.setPass(pass);
		dto.setSex(sex);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/mm/dd");
		Date dd = null;

		try {
			dd = sdf.parse(year + "/" + month + "/" + day);
			// 입력받은 년,월,일을 date 포맷으로 변경
		} catch (ParseException e) {
			e.printStackTrace();
		}

		session.setAttribute("logininfo", true);
		session.setAttribute("id", dto.getId());
		session.setAttribute("pass", dto.getPass());

		dto.setBirthDay(dd);
		memberdao.memberJoin(dto);
		mav.setViewName("index");
		return mav;
	}

	@RequestMapping("login.do")
	public String login() {
		return "member/login";
	}

	@RequestMapping("/findlogin.do")
	public void findlogin(HttpServletRequest request) {
		request.getSession().setAttribute("logininfo", true);
	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping("profile.do")
	public ModelAndView profile(ModelAndView mav,@RequestParam int idx,HttpServletRequest req) {
		
		List article = memberdao.getProfile(idx);
		
		mav.setViewName("profile");
		mav.addObject("profileList", article);
		return mav;
	}
	
	@RequestMapping("loginOK.do")
	public ModelAndView loginOK(@RequestParam String id,@RequestParam String pass,ModelAndView mav,HttpSession session){
		
		String passok = memberdao.getLoginpass(id);
		
		if(passok.equals(pass)){
			session.setAttribute("logininfo", true);
			session.setAttribute("id", id);
			session.setAttribute("pass", pass);

			mav.setViewName("index");
		}else{
			mav.setViewName("loginfail");
		}
		return mav;
	}

}
