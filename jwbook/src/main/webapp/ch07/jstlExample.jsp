<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<h2>JSTL 종합예제</h2>
		<hr>
		<h3>set, out</h3>
		<c:set var = "product1" value="<h2>애플 아이폰</h2>"/>
		<c:set var = "product2" value="삼성 갤럭시 노트"/>
		<c:set var = "intArray" value="{[1,2,3,4,5]}"/>
		<p>
		product1(jstl):
		<c:out value="${product1 }" default = "Not registered" escapeXml="true"/>
		</p>
		<p>product1(e1):${product1}</p> 
		<p>intArray[2]:${intArray[2]}</p>
		<hr>
		<h3>forEach: 배열 출력</h3>
		<ul>
			<c:forEach var ="num" varStatus = "i" items ="${iintArray }">
				<li>${i.index} : ${num }</li>
			</c:forEach>
		</ul>
		<hr>
		<h3>if</h3>
		<c:set var = "checkout" value ="true"/>
		<c: if test = "${checkout }">
		<p>주문 제폼 : ${product2}</p> 
		</c: if>
		<c:if test="${!checkout }">
		<p>주문 제품이 아님!! </p>
		</c:if>
		<c:if test="${!empty product2 }">
		<p>
			<b>${product2} 이미 추가됨!!</b>
		</p>
		</c:if>
		<hr>
		<h3>choose, when, otherwise</h3>
		<c:choose>
			<c:when test="${checkout }">
				<p>주문 제품 : ${product2 }</p>
			</c:when>
			<c: otherwise>
			<p>주문 제품이 아님</p>
			</c: otherwise>
			</c:choose>
			<hr>
			
			<h3>forTokens</h3>
			<c: forTokens var = "city" items="Seoul|Tokyo|New York|toronto" delims="|" varStatus = "i">
				<c: if test="${i.first }">도시목록 : </c: if>
				${city }
				<c:if test="${!i.last }">,</c:if>
				</c: forTokens>
				<hr>
	</body>
</html>