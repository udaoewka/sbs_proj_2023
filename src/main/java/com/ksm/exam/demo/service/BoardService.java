package com.ksm.exam.demo.service;

import org.springframework.stereotype.Service;

import com.ksm.exam.demo.vo.Board;

@Service
public class BoardService {
   
   private BoardRepository boardRepository;
   
   public BoardService(BoardRepository boardRepository) {
      this.boardRepository = boardRepository;
   }
   
   public Board getBoardById(int id) {
      return boardRepository.getBoardById(id);
   }
}

