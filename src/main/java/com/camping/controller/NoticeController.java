package com.camping.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.camping.domain.NoticeVO;
import com.camping.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/notice/*")
@AllArgsConstructor
public class NoticeController {
	
	private NoticeService service;
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_MEMBER')") //표현식으로 hasAnyRole을 사용해 체크
	@GetMapping("/noticelist")
	public void noticelist(Model model) {
		
		log.info("noticelist");
		
		model.addAttribute("noticelist", service.getList());
		
	}
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_MEMBER')") //표현식으로 hasAnyRole을 사용해 체크
	@GetMapping("/noticeregister")
	public void noticegister() {
		
	}
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_MEMBER')") //표현식으로 hasAnyRole을 사용해 체크
	@PostMapping("/noticeregister")
	public String noticeregister(NoticeVO notice, RedirectAttributes rttr) {
		
		log.info("noticeregister: " + notice);
		
		service.noticeregister(notice);
		
		rttr.addFlashAttribute("result", notice.getBoard_no());
		
		return "redirect:/notice/noticelist";
		
	}	
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_MEMBER')") //표현식으로 hasAnyRole을 사용해 체크
	@GetMapping({"/noticeget" , "/noticemodify"})
	public void noticeget(@RequestParam("board_no") int board_no, Model model) {
		
		log.info("noticeget or noticemodify");
		
		service.plusCnt(board_no);
		
		model.addAttribute("notice", service.noticeget(board_no));

	}
	
	@PreAuthorize("principal.username == #notice.mem_id") //표현식으로 hasAnyRole을 사용해 체크
	@PostMapping("/noticemodify")
	public String noticemodify(NoticeVO notice, RedirectAttributes rttr) {
		
		log.info("modify: " + notice);
		
		if (service.noticemodify(notice)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/notice/noticelist";
	}
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_MEMBER')") //표현식으로 hasAnyRole을 사용해 체크
	@PostMapping("/noticeremove")
	public String noticeremove(@RequestParam("board_no") int board_no, RedirectAttributes rttr) {
		
		log.info("remove..." + board_no);
		
		if (service.noticeremove(board_no)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/notice/noticelist";
	}
	
	
}
