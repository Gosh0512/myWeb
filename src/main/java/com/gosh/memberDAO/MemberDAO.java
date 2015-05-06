package com.gosh.memberDAO;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gosh.memberDTO.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate session;
	
	public void memberJoin(MemberDTO dto){
		session.insert("memberMapper.memberList",dto);
	}
	
	public List getProfile(int idx){
		return session.selectList("memberMapper.profile",idx);
	}

	public String getLoginpass(String id) {
		// TODO Auto-generated method stub
		return session.selectOne("memberMapper.Loginpass", id);
	}
}
