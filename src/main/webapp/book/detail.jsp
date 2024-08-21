<%--
  Created by IntelliJ IDEA.
  User: MZC-USER
  Date: 2024-08-21
  Time: 오후 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상세 페이지</title>
    <script>
        const update = () => {
            let pwd = prompt("비밀번호", "");
            if(pwd == '${gb.pwd}'){
                let cont = prompt("글 내용", "");
                location.href = "/book/edit?num=${gb.num}&content="+cont;
            }else{
                alert("비밀번호가 일치하지 않습니다.")
            }
        }

        const del = () => {
            let pwd = prompt("비밀번호", "");
            if(pwd == '${gb.pwd}'){
                location.href = "/book/del?num=${gb.num}";
            }else{
                alert("비밀번호가 일치하지 않습니다.")
            }
        }
    </script>
</head>
<body>
<h1>상세 페이지</h1>
<table border="1">
    <tr>
        <th>글번호</th>
        <td>${gb.num}</td>
    </tr>
    <tr>
        <th>작성자</th>
        <td>${gb.writer}</td>
    </tr>
    <tr>
        <th>작성일</th>
        <td>${gb.wdate}</td>
    </tr>
    <tr>
        <th>내용</th>
        <td>${gb.content}</td>
    </tr>
</table>
<input type="button" value="수정" onclick="update()">
<input type="button" value="삭제" onclick="del()">
</body>
</html>
