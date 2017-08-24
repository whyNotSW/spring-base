package com.not.why.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.not.why.repository.TestDAO;
import com.not.why.vo.Member;
import com.not.why.vo.Member2;

@Service
public class TestService {
	@Autowired(required = false)
	private TestDAO dao;

	public List<Member> testMember(Member mem) {
		return dao.testMember(mem);
	}
	public List<Member2> liMember(Member2 mem) {
		return dao.liMember(mem);
	}
}
