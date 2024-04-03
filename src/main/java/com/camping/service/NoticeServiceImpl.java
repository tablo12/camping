package com.camping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camping.domain.NoticeVO;
import com.camping.mapper.NoticeMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	
	@Setter(onMethod_ = @Autowired )
	private NoticeMapper mapper;
	
	@Override
	public void noticeregister(NoticeVO notice) {

		log.info("NoticeRegister......" + notice);
		
		mapper.insertSelectKey(notice);
	}

	@Override
	public NoticeVO noticeget(int board_no) {

		log.info("get.........." + board_no);
		
		return mapper.read(board_no);
	}

	@Override
	public boolean noticemodify(NoticeVO notice) {

		log.info("Modify....." + notice);
		
		return mapper.update(notice) == 1;
	}

	@Override
	public boolean noticeremove(int board_no) {

		log.info("Remove...." + board_no);
		
		return mapper.delete(board_no) == 1;
	}

	@Override
	public List<NoticeVO> getList() {

		log.info("getList.........");
		
		return mapper.getList();
	}

	@Override
	public boolean plusCnt(int board_no) {

		log.info("plusCnt......");
		
		return mapper.plusCnt(board_no);
	}


	

}
