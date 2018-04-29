
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录错误</title>
    </head>
    <body>
        <%
            String flag = (String)request.getAttribute("flag");
            request.removeAttribute("flag");
            String errorMessage = null;
            if(flag.equals("1")){
                errorMessage = "验证码输入错误！";
            }
            if(flag.equals("2")){
                errorMessage = "用户名或密码错误！";
            }
            if(flag.equals("3")){
                errorMessage = "服务器在维护！";
            }
        %>
        <p><%= errorMessage%></p>
        <p>
            请重新
            <a href="login.jsp">登录</a>
        </p>
    </body>
</html>
