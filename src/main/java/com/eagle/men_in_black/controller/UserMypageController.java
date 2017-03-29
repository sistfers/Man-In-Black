package com.eagle.men_in_black.controller;

import com.eagle.men_in_black.model.MainDto;
import com.eagle.men_in_black.model.UserMypageDto;
import com.eagle.men_in_black.service.UserMypageSvc;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;

@Controller
public class UserMypageController {
	Logger loger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UserMypageSvc UserMypageSvc;


	// 회원정보수정 
		@RequestMapping("mymain.mib")
		public ModelAndView mymain(){
			
			loger.debug("=Controller ===========================");
			loger.debug("codeMSvc === " + "앙 기무띠~");
			loger.debug("============================");
			
			ModelAndView mav = new ModelAndView("mypage/usermypage/MypageMain");
			mav.addObject("msg", "김옥지");
			
			return mav;
			
		}
	// 회원정보수정 
	@RequestMapping("userup.mib")
	public ModelAndView userupdate(){
		
		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "앙 기무띠~");
		loger.debug("============================");
		
		ModelAndView mav = new ModelAndView("mypage/usermypage/Userupdate");
		mav.addObject("msg", "김옥지");
		
		return mav;
		
	}
	// 구매목록 
	@RequestMapping("buylist.mib")
	public ModelAndView buylist(){
		
		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "앙 기무띠~");
		loger.debug("============================");
		
		ModelAndView mav = new ModelAndView("mypage/usermypage/Buylist");
		mav.addObject("msg", "김옥지");
		
		return mav;
		
	}
	// 장바구니 
	@RequestMapping("basketlist.mib")
	public ModelAndView basketlist(){
		
		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "앙 기무띠~");
		loger.debug("============================");
		
		ModelAndView mav = new ModelAndView("mypage/usermypage/Basketlist");
		mav.addObject("msg", "김옥지");
		
		return mav;
		
	}
	// 오늘본 상품 
	@RequestMapping("todayGoods.mib")
	public ModelAndView todayGoods(){
		
		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "앙 기무띠~");
		loger.debug("============================");
		
		ModelAndView mav = new ModelAndView("mypage/usermypage/TodayGoods");
		mav.addObject("msg", "김옥지");
		
		return mav;
		
	}
	// 내가쓴 게시물 보기 
	@RequestMapping("myboard.mib")
	public ModelAndView myboard(){
		
		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "앙 기무띠~");
		loger.debug("============================");

		ModelAndView mav = new ModelAndView("mypage/usermypage/Myboard");
		mav.addObject("msg", "김옥지");
		
		return mav;
		
	}
	
	// 내가쓴 게시물 보기  Q&A
	@RequestMapping("myboardqna.mib")
	public ModelAndView myboardqna(HttpSession session){
		MainDto mainDto = (MainDto)session.getAttribute("LoginInfo");
		String id = mainDto.getUSER_ID();

		ModelAndView mav = new ModelAndView("mypage/usermypage/Myboard_Q&A");
		mav.addObject("msg", "김옥지");
		
		return mav;
		
	}
	
	//내가쓴 게시물 보기  리뷰
	@RequestMapping("myboardreview.mib")
	public ModelAndView myboardreview(HttpSession session ,Model model){
		MainDto mainDto = (MainDto)session.getAttribute("LoginInfo");
		String id = mainDto.getUSER_ID();

		UserMypageDto dto = UserMypageSvc.mib_myreview(id);

		ModelAndView mav = new ModelAndView("mypage/usermypage/Myboard_Review");
		mav.addObject("reviwlist", dto);
		
		return mav;
		
	}
	
	
	// 쿠폰 그리고 적립금 
	@RequestMapping("coupon_Mileage.mib")
	public ModelAndView coupon_Mileage(){
		
		loger.debug("=Controller ===========================");
		loger.debug("codeMSvc === " + "앙 기무띠~");
		loger.debug("============================");
		
		ModelAndView mav = new ModelAndView("mypage/usermypage/Coupon_Mileage");
		mav.addObject("msg", "김옥지");
		
		return mav;
		
	}

	
	
}
