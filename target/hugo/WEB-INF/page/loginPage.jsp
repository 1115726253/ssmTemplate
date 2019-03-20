<%--
  Created by IntelliJ IDEA.
  User: 张召阳
  Date: 2019/3/20
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>Welcome</title>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
    <form action="<%=path%>/loginto" method="post" method="post">
        账户：<input id="userCode" type="text" name="userCode" >
        密码：<input id="password" type="password" name="password">
        <input type="submit" value="登录"/>
    </form>
    <button id="btn">按钮</button>
    <%--<button id="btn">登录</button>--%>
    <script>
        function login(){
            var userCode=$("#userCode").val();
            var password = $("#userPassword").val();
            if(userCode==""||passworld==""){
                alert("账号密码不能为空");
                return false;
            }

            <%--$("#btn").click(function () {--%>
                <%--$.post("<%=path%>/loginto",{--%>
                    <%--userCode:$("#userCode").val(),--%>
                    <%--password:$("#userPassword").val()--%>
                <%--});--%>
            <%--});--%>
            return true;
        }
        // document.getElementById("btn").addEventListener("click",login);

        $("#btn").click(function () {
            $.post("<%=path%>/loginto",{
                userCode:$("#userCode").val(),
                password:$("#password").val()
            });
        });



    </script>
</body>
</html>
