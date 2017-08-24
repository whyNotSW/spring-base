package com.not.why.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.not.why.vo.Member;
import com.not.why.vo.Member2;

@Repository
public interface TestDAO {

	public List<Member> testMember(Member mem);
	public List<Member2> liMember(Member2 mem);
}
