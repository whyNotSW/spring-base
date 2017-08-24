<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	});
</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>1 user_id</th>
			<th>2 user_name</th>
			<th>3 email</th>
			<th>4 password</th>
			<th>5 register_date</th>
			<th>6 auth</th>
		</tr>
		<c:forEach var="testM" items="${testMem }">
			<tr>
				<td>${testM.user_id}</td>
				<td>${testM.user_name}</td>
				<td>${testM.email}</td>
				<td>${testM.password}</td>
				<td>${testM.register_date}</td>
				<td>${testM.auth}</td>
			</tr>
		</c:forEach>
	</table>
	
	<pre>
	** 공부해야할사항 **
- spring ajax (ObjcetMapper객체 활용)
	http://www.nextree.co.kr/p11205/
- 트랜잭션 활용한 SQL?
- logging 툴 활용 공부
	* logging툴의 종류
	commons-logging : spring3 에서 사용하던 logging툴
	log4j : 효율적인 메모리 관리로 그동안 많이 사용되었다.
	logback : log4j보다 성능이 더 우수하여 최근에 많이 사용되고 있다.
	SLF4J : logback을 사용하기 위한 인터페이스
 	참고 : http://doublesprogramming.tistory.com/82
 => logback 활용예정.

- pom 파일
	< scope >provided < /scope> 등 등 스코프 사용처 확인

일정계획(세부사항)

1주차 : 스프링 MVC

2주차 : 로그인
1일 : 로그인 페이지 + DB // email, pass, pass2, 인증번호 4가지
2일 : 유효성 검사 // email유효성 검사, pass유효성 검사, (ajax활용)
3일 : email(인증번호) // 신규 email 방식 확인.
4일 : CSS (새창? 기존창 확정 및 화면 변화(로그인전, 로그인후, 로그아웃)
5일 : 테스트 및 마무리

3주차 : 게시판(시험 많은주)
1일 : 게시판 기본 구현(DB) .. 게시판 페이지 및 모듈화 구조 잡기(여러 게시판 반복 구현가능하게)
2일 : 게시판 리스트
3일 : 게시판 글쓰기
4일 : 게시판 삭제, 수정
5일 : 게시판 CSS
6일 : 게시판 CSS

4주차 : 게시판(휴일 많은주)
2일 : 게시판 페이징
3일 : 게시판 페이징 마무리
4일 : 게시판 댓글(계층형)
5일 : 게시판 댓글 마무리
6일 : 게시판 테스트 및 마무리

5주차 : DB구축
1일 : DB테이블 확정(구조화)
2일 : DB무결성 조건 체크 및 확정(pk, fk, null, 삭제 조건, 트리거, 시퀀스)
3일 : DB무결성 조건 체크 및 확정(pk, fk, null, 삭제 조건, 트리거, 시퀀스)
4일 : DB 더미데이터 만들기
5일 : 웹페이지 테스트 및 버그 픽스
6일 : 웹페이지 테스트 및 버그 픽스

6주차 : 부트스트랩(실제적으로 아는게 너무 없어서 계획세우기 힘듬.)
1일 : 부트스트랩 테마 확정 및 페이지 구조화(head등.. 파일 분류)
2일 : 부트스트랩 메인 페이지
3일 : 부트스트랩 로그인 페이지
4일 : 부트스트랩 게시판 페이지(1/2)
5일 : 부트스트랩 게시판 페이지(2/2)
6일 : 테스트 및 버그 픽스

7주차 : 코드테스트 및 리뷰 기간(취업준비 및 파이널 마무리)
- 테스트 및 리펙토링
- 실제로는 시간 분할 힘듬: 전주 까지 마무리 해야하는 상황으로 예상.

	
	</pre>
</body>
</html>