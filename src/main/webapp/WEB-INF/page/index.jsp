<%--
  Created by IntelliJ IDEA.
  User: 张召阳
  Date: 2019/3/18
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>
    <p id="a">hello world</p>
    <button id="btn">按钮</button>
    <script>
        function aa(){
            document.getElementById("a").innerHTML="haha"
        }

        function x() {
            $.ajax({
                url:"http://localhost:8080/SSMWork_war_exploded/hello",
                success:function (result) {
                    alert(result);
                },
                error:function () {
                    alert("shibai ")
                }
            });
        }
        document.getElementById("btn").addEventListener("click",x);

    </script>
</body>
</html>
