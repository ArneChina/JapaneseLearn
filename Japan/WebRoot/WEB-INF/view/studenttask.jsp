<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%= basePath %>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>学生作业</title>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stu-style.css">
</head>
<body>
 <!--header-->
<jsp:include page="top.jsp"></jsp:include>

<div class="page-style">
<div class="home-content">
<ul class="pagination" style="margin-top:100px;">
        
        <s:bean name="org.apache.struts2.util.Counter" id="counter">
            <s:param name="first" value="1" />
            <s:param name="last" value="#session.wordsaccount" />
            <s:iterator status="statu">
                <s:url id="studenttask" action="studenttaskAction">
                    <s:param name="taskwordNo" value="#statu.count-1"></s:param>
                </s:url>
                <s:if test="#statu.count-1 == #request.wordNo">
                    <li class="active"><s:a href="%{studenttask}"><s:property value="#statu.count" /></s:a></li>
                </s:if>
                <s:else>
                    <li><s:a href="%{studenttask}"><s:property value="#statu.count" /></s:a></li>
                </s:else>
            </s:iterator>
        </s:bean>
</ul>
</div>
</div>

<div class="container" style="margin-top:30px;">
<div class="question">
<p class="question-l" id="question-l">题目</p>
</div>
</div>

<!--选项-->
<div class="table-responsive" style="margin-top:50px;">
<div class="container">
  <table class="table table-bordered">
     <tr>
        <td class="col-md-1">
        <span class="pay_list_c1 on">
        <label><input type="radio" name="abc"><i>✓</i>A</label>
        </span>
        </td>
        <td class="col-md-8">
        <p id="choice_a">选项1</p>
        </td>
     </tr>
     <tr>
        <td>
        <span class="pay_list_c1 on">
        <label><input type="radio" name="abc"><i>✓</i>B</label>
        </span>
        </td>
        <td>
        <p id="choice_b">选项2</p>
        </td>
     </tr>
     <tr>
        <td>
        <span class="pay_list_c1 on">
        <label><input type="radio" name="abc"><i>✓</i>C</label>
        </span>
        </td>
        <td>
        <p id="choice_c">选项3</p>
        </td>
     </tr>
     <tr>
        <td>
        <span class="pay_list_c1 on">
        <label><input type="radio" name="abc"><i>✓</i>D</label>
        </span>
        </td>
        <td>
        <p id="choice_d">选项4</p>
        </td>
     </tr>
</table>
</div>
</div>
                
<ul class="pager" style="margin-top:50px;">
    <s:url id="studenttask_up" action="studenttaskAction">
        <s:param name="taskwordNo" value="%{#request.wordNo-1}"></s:param>
    </s:url>
    <s:url id="studenttask_down" action="studenttaskAction">
        <s:param name="taskwordNo" value="%{#request.wordNo+1}"></s:param>
    </s:url>
<li><s:a href="%{studenttask_up}">上一题</s:a></li>
<li><s:a href="%{studenttask_down}">下一题</s:a></li>
</ul>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="javascript/stu-script.js"></script>
</body>
</html>


