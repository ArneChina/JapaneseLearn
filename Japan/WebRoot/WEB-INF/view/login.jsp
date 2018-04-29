<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    System.out.println("path = " + path);
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	System.out.println("basePath = " + basePath);
%>
<!DOCTYPE html>
<html>
    <head>
        <base href="<%= basePath%>">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title>账号登录</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <script src="js/LoginJavaScript.js"></script>
    </head>
    <body>
        <div class="message warning">
            <div class="inset">
                <div class="login-head">
                    <h1>登录界面</h1>			
                </div>
                <form action="loginAction" method="post">
                <p><input type="text" class="text" value="Username" id="Username" name="user"/><a href="#" class="icon user"></a></p>
                <p><input type="password" class="password" value="Password" id="Password" name="password"/> <a href="#" id="changetype" class="icon lock"></a></p>
                <p>
                    <span>身份类别：</span>
                    <select name="type">
                        <option value="student">学生</option>
                        <option value="teacher">教师</option>
                        <option value="admin">管理员</option>
                    </select>
                </p>
                <p>
                    <input type="text" class="piccode" id="piccode" name="checkcode"/>
                    <a href="login.jsp" id="checkCode"><img id="picimg" class="picimg" alt="验证码" src="ImageAction"/></a>
                </p>
                    <div class="submit">
                        <input type="submit" value="登录" />
                        <input type="reset" value="重置"/>
                        <h4><a href="#">忘记密码?</a></h4>
                        <div class="clear">  </div>	
                    </div>
                </form>
            </div>					
            </div>
            <div class="clear"> </div>
            <div class="footer">
                <p>南京林业大学 &copy; 2016.</p>
            </div>
    </body>
</html>
