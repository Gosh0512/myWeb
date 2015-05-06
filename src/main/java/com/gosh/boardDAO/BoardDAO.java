package com.gosh.boardDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gosh.boardDTO.BoardDTO;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSessionTemplate session;
	
	public List<BoardDTO> getBoardList(){
		return session.selectList("boardMapper.boardList");
		
	}

	public List<BoardDTO> getContentList(int idx) {
		// TODO Auto-generated method stub
		return session.selectList("boardMapper.contentList",idx);
	}

}
