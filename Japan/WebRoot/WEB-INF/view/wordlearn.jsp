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
    <title>单词学习</title>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stu-style.css">
</head>

<body>
<!--头部-->
<jsp:include page="top.jsp"></jsp:include>

<div style="height:60px;"></div>

<!--词头，日语读音+汉字写法-->
<div class="word-test" id="word-test">

<div class="wordd" id="wordd">
<div class="container">
<p id="word">
    <s:property value="#session.word.pronunciation"/>&nbsp;&nbsp;
    <s:property value="#session.word.chineseWriting"/>&nbsp;&nbsp;
</p>
</div>
</div>

<div class="point" id="point">
<div class="container">
<!--提示1/隐藏板块，例句-->
<p id="point1" class="point1"><s:property value="#session.word.sentence"/></p>
<!--提示2/隐藏板，词性和日语注释-->
<p id="point2" class="point2">
    <s:property value="#session.word.property"/>&nbsp;&nbsp;
    <s:property value="#session.word.japaneseExplain"/>
</p>
<!--提示3，词性和中文注释-->
<p id="point3" class="point3">
    <s:property value="#session.word.property"/>&nbsp;&nbsp;
    <s:property value="#session.word.chineseExplain"/>
</p>
</div>
</div>

<div class="button-list1" id="button-list1">
<div class="container">
    <a href="wordinfoAction"><input type="button" value="认识" id="button1" class="btn btn-style"/></a>
    <input type="button" value="不认识" id="button2" class="btn btn-style" onClick="display1()"/>
</div>
</div>

<div class="button-list2" id="button-list2">
<div class="container">
    <a href="wordinfoAction"><input type="button" value="查看详细" id="button3" class="btn btn-primary btn-style"/></a>
</div>
</div>

</div>

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="js/stu-script.js"></script>
</body>
</html>
