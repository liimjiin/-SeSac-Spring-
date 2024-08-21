<%--
  Created by IntelliJ IDEA.
  User: MZC-USER
  Date: 2024-08-21
  Time: 오후 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>방명록 작성</title>
</head>
<body>
<table border="1">
  <form action="/book/add" method="post">
  <tr>
    <th>작성자</th>
    <td><input type="text" name="writer"></td>
  </tr>
    <tr>
    <th>비밀번호</th>
    <td><input type="password" name="pwd"></td>
  </tr>
    <tr>
    <th>내용</th>
    <td><input type="text" name="content"></td>
  </tr>
    <input type="submit" value="등록">
</form>
</table>
</body>
</html>
