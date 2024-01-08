<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
		<!-- 브라우저의 호환성 보기 모드를 막고, 해당 브라우저에서 지원하는 가장 최신 버전의 방식으로 HTML 보여주도록 설정.-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
		
		<title>Insert title here</title>
		
		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
	</head>
	<body>
		<h2>jsp 종합예제</h2>
		<hr>
		
		<%!
			String [] members = {"김길동", "홍길동", "김사랑", "박사랑" };
			int num1 = 10;
			
			int calc(int num2) {
				return num1 + num2;
			}
		%>
		
		<h3>
			1. JSP 주석
			<!-- HTML 주석 화면에서는 안보이고 소스보기에는 보임 -->
			<%-- jsp 주석  --%>
		</h3>
		<h3>
			2. calc (10) 메서드 실행 결과 : 
			<%=calc(10) %></h3>
		<hr>
		<h3>3. include : hello.jsp</h3>
			<%-- <%include file = "../hello.jsp" %> --%>
		<hr>
		<h3>4. 스크립트(배열 데이터 출력)</h3>
			<ul>
				<%
					for (String name  : members) {
				%>
					<li><%=name %></li>
				<%
					}
				%>	
			</ul>	
	</body>
</html>