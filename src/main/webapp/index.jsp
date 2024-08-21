<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--
  Created by IntelliJ IDEA.
  User: MZC-USER
  Date: 2024-08-21
  Time: 오후 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>INDEX</title>
</head>
<body>
<h1>방명록</h1>
<a href="/book/add">방명록 작성하기</a><br><br>
<c:if test="${list.size() == 0}">
    작성된 방명록이 없습니다.
</c:if>
<c:if test="${list.size() != 0}">
    <table border="1">
        <tr>
            <th>글번호</th>
            <th>작성자</th>
            <th>작성일</th>
        </tr>
        <c:forEach var="g" items="${list}">
            <tr>
                <td><a href="/book/detail?num=${g.num}">${g.num}</a></td>
                <td>${g.writer}</td>
                <td>${g.wdate}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
