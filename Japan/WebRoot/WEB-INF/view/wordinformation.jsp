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
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stu-style.css">
    <title>单词详细</title>
    </head>

    <body>
    <!--头部-->
	<jsp:include page="top.jsp"></jsp:include>

    <!--单词详细板块,重新排版的提示信息-->
    <div class="word-information" id="word-information">

    <div class="wordd1" id="wordd1">
    <div class="container">
    <p id="word" style="margin-bottom:-20px;"><s:property value="#session.word.pronunciation"/></p>
    <hr />
    <p id="hint4">词性和释义</p>
    <p id="hint3">
        <s:property value="#session.word.property"/>&nbsp;&nbsp;
        <s:property value="#session.word.chineseExplain"/>&nbsp;&nbsp;
        <s:property value="#session.word.japaneseExplain"/>
    </p>
    <p id="hint4">等级要求</p>
    <table style="border: 0px;margin-bottom: 10px;" id="hint2">
        <tr>
            <td>N1</td><td>N2</td><td>N3</td>
        </tr>
        <tr>
            <td>
                <s:if test="#session.word.n1==1">要求</s:if>
                <s:else>不要求</s:else>
            </td>
            <td>
                <s:if test="#session.word.n2==1">要求</s:if>
                <s:else>不要求</s:else>
            </td>
            <td>
                <s:if test="#session.word.n3==1">要求</s:if>
                <s:else>不要求</s:else>
            </td>
        </tr>
    </table>
    <p id="hint4">例句</p>
    <p id="hint1"><s:property value="#session.word.sentence"/></p>
    </div>
    </div>

    <div class="button-list1">
    <div class="container">
        <form method="post" action="wordlearnAction">
            <input type="submit" value="下一个" id="button4" class="btn btn-primary btn-style" onclick="window.location='wordlearnAction';return false;" />
        </form>
    </div>
    </div>

    </div>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="js/stu-script.js"></script>
    </body>
</html>

