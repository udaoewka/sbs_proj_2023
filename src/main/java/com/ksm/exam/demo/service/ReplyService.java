package com.ksm.exam.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ksm.exam.demo.repository.ReplyRepository;
import com.ksm.exam.demo.vo.Reply;
import com.ksm.exam.demo.vo.ResultData;

@Service
public class ReplyService {
	
	private ReplyRepository replyRepository;
	
	public ReplyService(ReplyRepository replyRepository) {
		this.replyRepository = replyRepository;
	}
	
	public ResultData<Integer> writeReply(int actorId, String relTypeCode, int relId, String body){
		replyRepository.writeReply(actorId, relTypeCode, relId, body);
		int id = replyRepository.getLastInsertId();
		
		return ResultData.from(relTypeCode, body);
	}

	public List<Reply> getForPrintReplies(int loginedMemberId, String string, int id) {
		return replyRepository.getForPrintReplies(loginedMemberId, string, id);
	}

}
