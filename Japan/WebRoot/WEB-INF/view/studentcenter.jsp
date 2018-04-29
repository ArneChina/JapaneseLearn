<%-- 
    Document   : studentcenter
    Created on : 2017-3-31, 11:38:56
    Author     : 韩立文-本地
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%= basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
</head>
<!-- 
<iframe src="japan/turn.njfu?page=studentcenter_left"></iframe>
<iframe src="japan/turn.njfu?page=studentinformation" id="_right" name="_right"></iframe>
 -->
<frameset cols="30%,*" border="5">
    <frame src="japan/turn.njfu?page=studentcenter_left" />
    <frame src="japan/turn.njfu?page=studentinformation" name="_right"/>
</frameset>
<noframes></noframes>
</html>
