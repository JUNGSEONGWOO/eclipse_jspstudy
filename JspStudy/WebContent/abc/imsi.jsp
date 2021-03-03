<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 2번째 예제</title>
</head>
<body>
<%
	//자바 코드를 분리해서 코딩할때도 쓸 수 있다 순서대로 실행
	//int count=3;
%>
<%
	//int count=3;//지역
	for(int i=0;i<count;i++){
		out.println("<h1>JSP 테스트"+i+"!</h1><br>");
	}
	out.println("count="+count);
	
	//1)자바스크립트 코드<script></script>와 html태그를 같이 사용x
	//2)표현식은 스크립트릿 안에 사용x
	%>
<%!
	//선언문(Declaration)=>모양이 script 와 비슷
	//선언되 ㄴ위치에 상관없이 변수를 불러다 사용이 가능=>멤버변수처럼
	int count=3;
%>
	<p>
	스크립트 밖에서 출력 count 값은?<%=count%><br>
	수식계산:<%=(3+5)%>
</body>
</html>