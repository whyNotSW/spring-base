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
	<pre>
	
	<modelVersion>4.0.0</modelVersion>
	<groupId>com.not</groupId>
	<artifactId>why</artifactId>
	<name>whyNot</name>
	<packaging>war</packaging>
	<version>1.0.0-BUILD-SNAPSHOT</version>
	<!-- TODO : whyNot 기본 설정 변경 1 프로퍼티스 버전업-->
	<!-- 최신 버전은 4.3.3이지만 호환성을 위해 4.3.0으로 조정함 -->
	<properties>
		<java-version>1.8</java-version>
		<org.springframework-version>4.3.0.RELEASE</org.springframework-version>
		<org.aspectj-version>1.8.10</org.aspectj-version>
		<org.slf4j-version>1.7.25</org.slf4j-version>
	</properties>
	
	
	<!-- TODO : whyNot 추가 사항 1 오라클 드라이버 메이븐 설정하기 -->
	<repositories>
		<!-- ojdbc14 설정시
		<repository>
			<id>mesir-repo</id>
			<url>http://mesir.googlecode.com/svn/trunk/mavenrepo</url> 
		</repository> -->
		<!-- ojdbc6 설정시 -->
		<repository>
			<id>codelds</id>
			<url>https://code.lds.org/nexus/content/groups/main-repo</url>
		</repository>
	</repositories>
	<!-- TODO : whyNot 추가 사항 1 END -->


	<!-- 현재 프로젝트에서 사용하는 라이브러리 선언 -->
	<dependencies>
		<!-- Spring -->
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-context</artifactId>
			<version>${org.springframework-version}</version>
			<exclusions>
				<!-- Exclude Commons Logging in favor of SLF4j -->
				<exclusion>
					<groupId>commons-logging</groupId>
					<artifactId>commons-logging</artifactId>
				</exclusion>
			</exclusions>
		</dependency>
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-webmvc</artifactId>
			<version>${org.springframework-version}</version>
		</dependency>


		<!-- TODO : whyNot 추가 사항 2 어떠한 형태의 데이터도 json 형식의 데이터로 자동으로 변환 (Ajax, 페이징처리 
			등 다양하게 사용가능. ) 출처: http://addio3305.tistory.com/91 [흔한 개발자의 개발 노트] -->
		<dependency>
			<groupId>com.fasterxml.jackson.core</groupId>
			<artifactId>jackson-core</artifactId>
			<version>2.6.4</version>
		</dependency>
		<dependency>
			<groupId>com.fasterxml.jackson.core</groupId>
			<artifactId>jackson-databind</artifactId>
			<version>2.6.4</version>
		</dependency>
		<!-- TODO : whyNot 추가 사항 2 END -->
		
		
		<!-- mybatis 필요 라이브러리 -->
        <!-- https://mvnrepository.com/artifact/org.mybatis/mybatis -->
		<dependency>
		    <groupId>org.mybatis</groupId>
		    <artifactId>mybatis</artifactId>
		    <version>3.4.4</version>
		</dependency>
		<!-- https://mvnrepository.com/artifact/org.mybatis/mybatis-spring -->
		<dependency>
		    <groupId>org.mybatis</groupId>
		    <artifactId>mybatis-spring</artifactId>
		    <version>1.3.1</version>
		</dependency>
		<dependency>
		    <groupId>org.springframework</groupId>
		    <artifactId>spring-jdbc</artifactId>
		    <version>${org.springframework-version}</version>
		</dependency>
		<!-- TODO : whyNot 커넥션풀 이전 버전?
			++ 커넥션풀, spring-jdbc, commons-dbcp, mybatis, 관계 정확한 이해못함.
		-->	
		<dependency>
		    <groupId>commons-dbcp</groupId>
		    <artifactId>commons-dbcp</artifactId>
		    <version>1.4</version>
		</dependency>
        <!-- https://mvnrepository.com/artifact/org.apache.commons/commons-dbcp2 -->
		<!-- commons-dbcp 과 commons-dbcp2의 차이?? 뭔지 모르겠음.. 
		<dependency>
		    <groupId>org.apache.commons</groupId>
		    <artifactId>commons-dbcp2</artifactId>
		    <version>2.1.1</version>
		</dependency>
		-->
		<!-- mybatis 필요 라이브러리 END -->
		
        <!-- spring-test 왜쓰는지 모르겠음.. -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-test</artifactId>
            <version>${org.springframework-version}</version>
        </dependency>
 
 		<!-- 오라클 jdbc 라이브러리 -->
        <!-- 오라클 10g, 11g 에서 사용가능
		<dependency>
			<groupId>com.oracle</groupId>
			<artifactId>ojdbc14</artifactId>
			<version>10.2.0.4.0</version>
		</dependency> -->
		<!-- 오라클 11g 에서 사용가능 -->
		<dependency>
			<groupId>com.oracle</groupId>
			<artifactId>ojdbc6</artifactId>
			<version>11.2.0.3</version>
		</dependency>
        
		<!-- AspectJ : 포인트 컷을 위한 라이브러리???-->
		<!-- https://mvnrepository.com/artifact/org.aspectj/aspectjrt -->
		<dependency>
			<groupId>org.aspectj</groupId>
			<artifactId>aspectjrt</artifactId>
			<version>${org.aspectj-version}</version>
		</dependency>


		<!-- Logging -->
		<!-- logback 로깅 관련 -->
		<!-- https://mvnrepository.com/artifact/ch.qos.logback/logback-classic -->
		<dependency>
		    <groupId>ch.qos.logback</groupId>
		    <artifactId>logback-classic</artifactId>
		    <version>1.2.3</version>
		</dependency>
		
		<!-- https://mvnrepository.com/artifact/org.slf4j/slf4j-api -->
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-api</artifactId>
			<version>${org.slf4j-version}</version>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>jcl-over-slf4j</artifactId>
			<version>${org.slf4j-version}</version>
			<scope>runtime</scope>
		</dependency>
		<dependency>
			<groupId>org.slf4j</groupId>
			<artifactId>slf4j-log4j12</artifactId>
			<version>${org.slf4j-version}</version>
			<scope>runtime</scope>
		</dependency>
		
		<!-- log4j2 부분인것 같음. logback과 별개로 커넥션 풀에서 사용됨.. -->
        <dependency>
            <groupId>org.bgee.log4jdbc-log4j2</groupId>
            <artifactId>log4jdbc-log4j2-jdbc4</artifactId>
            <version>1.16</version>
        </dependency>
		
		
		<!-- @Inject -->
		<!-- https://blog.outsider.ne.kr/785 참고해볼것.. 아직 제대로 이해 못함 -->
		<dependency>
			<groupId>javax.inject</groupId>
			<artifactId>javax.inject</artifactId>
			<version>1</version>
		</dependency>

		<!-- Servlet -->
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>javax.servlet-api</artifactId>
			<!-- 2.5 - 3.1.0 -->
			<version>3.1.0</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet.jsp</groupId>
			<artifactId>jsp-api</artifactId>
			<!-- 2.1 - 2.2 -->
			<version>2.2</version>
			<scope>provided</scope>
		</dependency>
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>jstl</artifactId>
			<version>1.2</version>
		</dependency>
		

		<!-- Test -->
		<!-- http://www.nextree.co.kr/p11104/ 참고해볼것. 잘 모르겠음. -->
		<dependency>
			<groupId>junit</groupId>
			<artifactId>junit</artifactId>
			<version>4.7</version>
			<scope>test</scope>
		</dependency>
	</dependencies>
	
	
	
	<build>
		<plugins>
			<plugin>
				<artifactId>maven-eclipse-plugin</artifactId>
				<version>2.9</version>
				<configuration>
					<additionalProjectnatures>
						<projectnature>org.springframework.ide.eclipse.core.springnature</projectnature>
					</additionalProjectnatures>
					<additionalBuildcommands>
						<buildcommand>org.springframework.ide.eclipse.core.springbuilder</buildcommand>
					</additionalBuildcommands>
					<downloadSources>true</downloadSources>
					<downloadJavadocs>true</downloadJavadocs>
				</configuration>
			</plugin>
			<!-- TODO : whyNot 기본 설정 변경 4 
			<plugin>
				<groupId>org.apache.maven.plugins</groupId> 
				<artifactId>maven-compiler-plugin</artifactId>
				<version>2.5.1</version>
				<configuration>
					<source>1.6</source>
					<target>1.6</target>
					<compilerArgument>-Xlint:all</compilerArgument> 
					<showWarnings>true</showWarnings>
					<showDeprecation>true</showDeprecation> 
				</configuration>
			</plugin> -->
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-compiler-plugin</artifactId>
				<version>2.5.1</version>
				<configuration>
					<source>1.8</source>
					<target>1.8</target>
					<compilerArgument>-Xlint:all</compilerArgument>
					<showWarnings>true</showWarnings>
					<showDeprecation>true</showDeprecation>
				</configuration>
			</plugin>
			<plugin>
				<groupId>org.codehaus.mojo</groupId>
				<artifactId>exec-maven-plugin</artifactId>
				<version>1.2.1</version>
				<configuration>
					<mainClass>org.test.int1.Main</mainClass>
				</configuration>
			</plugin>
		</plugins>
	</build>
</project>

	</pre>
</body>
</html>