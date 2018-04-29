<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%= basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>单词书</title>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/stu-style.css">
</head>
<body>
<!--header-->
<jsp:include page="top.jsp"></jsp:include>

<div class="container" style="margin-top:50px;">
    <h1 class="exam">选择单词书</h1>
    <hr/>
</div>

<div class="row">
    <div class="container">

        <div class="col-md-8">  
          <table class="table table-hover table-responsive" id='table1'>
             <tr>
               <td></td>
               <td>书名</td>
               <td>单词数</td>
               <td></td>
             </tr>
             <s:iterator value="#request.books" id="book" status="statu">
                <tr class="active">
                    <td><img src="images/book1.jpg" /></td>
                    <td><p id="b-title"><s:property value="#book.bookName" /></p></td>
                    <td><p class="b-count"><span id="b-bumber">${request.booksammount[statu.count-1]}</span>个单词</p></td>
                    <td><span class="pay_list_c1 on">
                    <label><input type="radio" name="abc"><i>✓</i>选择</label><br>
                    </span></td>
                  </tr>
             </s:iterator>
          </table>
        </div>

        <div class="col-md-3 col-md-offset-1 col-sm-6">
        <p style="color:#999;font-family:'Courier New', Courier, monospace;font-weight:bold;font-size:36px;">选择完成时间</p>
        <div class="clearfix dome3_box">
                <!--日历 begin-->
            <div class="data_box" id="data_box">
                <span  class="showDate" >点击选择日期</span>
                <div class="sel_date dn">
                    <div class="clearfix">
                        <span class="prev_y fl"><<</span><span class="prev_m fl"><</span>
                        <span class="next_y fr">>></span><span class="next_m fr">></span>
                        <div class="show_mn">
                            <input type="text" class="showDate2 year" value="选择年份" />
                            <span class="ml5 mr5"> 年 </span>
                            <input type="text" class="showDate2 month" value="选择月份" />
                            <span class="ml5"> 月 </span>
                        </div>              
                    </div>
                    <table class="data_table">
                        <thead>
                            <tr>
                                <td>日</td><td>一</td><td>二</td><td>三</td><td>四</td><td>五</td><td>六</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <td>1</td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                            <tr>
                                <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!--日历 end-->
        </div><br />
        <p style="font-size:18px;">&nbsp;&nbsp;平均每天学<span id="oneday-word-number"> 0 </span>个</p>
        &nbsp;&nbsp;<input class="btn btn-primary" value="完成" onclick=""/>
        </div>
    </div>
</div>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="js/stu-script.js"></script>
</body>
</html>
