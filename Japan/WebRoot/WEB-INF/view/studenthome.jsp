<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%= basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />     
    <title>学生中心主页</title>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/stu-style.css" rel="stylesheet">
</head>

<body>

<!--header-->
<jsp:include page="top.jsp"></jsp:include>

<div style="height:60px;"></div>

<!--header,end-->
<div id="content" class="row hidden-xs">
     <div class="col-md-3 col-sm-3">
        <div class="post-format-content">
              <div class="post-thumbnail"> 
                   <img src="images/left.jpg" class="img-responsive"> 
              </div>
              <div class="content-wrap">
                   <p class="entry-title">                     
                       <span class="featured-image">
                          今日复习: <span id="restudy-all-word">30</span><br>
                          &nbsp;&nbsp;&nbsp;已复习: <span id="restudy-finished-word"><s:property value="#request.todayreviewed"/></span><br>
                          &nbsp;&nbsp;&nbsp;未复习: <span id="restudy-unfinished-word"><s:property value="#request.needreview"/></span><br><br>
                          <a href="dailypractice.jsp"><input type="button" class="btn btn-primary" value="开始复习"/></a>
                       </span>
                   </p>
              </div>
        </div>
     </div>
     <div class="col-md-6 col-sm-6">
         <div class="post-format-content">
               <div class="post-thumbnail"> 
                     <img src="images/middle.jpg" class="img-responsive"> 
               </div>
               <div class="content-wrap">
                    <p class="entry-title">
                       <span class="featured-image">
                           在学课程：<span id="book" class="book"><s:property value="%{#session.usr.getBooks().getBookName()}"/></span><br>
                           距离完成还有<span id="day" class="day"><s:property value="#request.havedays"/></span>天<br>
                           已学: <span id="study-finished-word"><s:property value="#request.learned"/></span><br>
                           &nbsp;&nbsp;&nbsp;&nbsp;一共: <span id="study-all-word"><s:property value="#request.bookwords"/></span><br><br>
                           <a href="wordlearnAction"><input type="button" class="btn btn-primary" value="开始背单词"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
                           <a href="studentbookAction"><input type="button" class="btn btn-primary" value="修改学习计划"></a>
                        </span>
                    </p>
               </div>
         </div>
     </div>
     <div class="col-md-3 col-sm-3">
         <div class="post-format-content">
               <div class="post-thumbnail"> 
                     <img src="images/right.jpg" class="img-responsive"> 
               </div>
               <div class="content-wrap">
                    <p class="entry-title">
                        <span class="featured-image">
                            近日作业：<br />
                            <c:forEach var="task" items="${sessionScope.studenttask}" varStatus="status">
                            	<c:if test="${status.count}<=4">
                            		${person.name }
                            		<c:url var="studenttask" value="">
                            			<c:param name="taskNo" value=""></c:param>
                            			<c:param name="taskwordNo" value=""></c:param>
                            		</c:url>
                            		<a href="${studenttask}"><span id="lesson-name"></span></a>
                            	</c:if>
					        </c:forEach>
                        </span>
                    </p>
               </div>
         </div>
     </div>
</div>
</div>

<div class="container">
 <img src="images/wordtag.png" class="img-responsive" />
</div>

<!--背单词情况板块-->  
<div class="row word-study">
<div class="container-my">
     <div class="col-md-4 hidden-sm hidden-xs">
           <img src="images/spare1.jpg" class="img-responsive">
     </div>

     <div class="col-xs-12 col-sm-6 col-md-4 word-div1">
          <h2 class="study-plan">在学课程：<span id="book"><s:property value="%{#session.usr.getBooks().getBookName()}"/></span></h2><br>
          <div class="progress">
                    <div class="progress-bar" style="width: <s:property value="#request.percent"/>%; background:#8bc4e8">
                          <span><s:property value="#request.percent"/>%</span>
                    </div>
          </div>
          <p class="study-plan">距离完成还有<span id="day"><s:property value="#request.havedays"/></span>天</p>
          <div class="row">
          <div class="col-sm-3 col-md-3 col-sm-offset-3 col-xs-3 col-xs-offset-3">
               <p>已学</p>
               <p id="study-finished-word"><s:property value="#request.learned"/></p>
          </div>
          <div class="col-sm-3 col-md-3 col-xs-3">
               <p>一共</p>
               <p id="study-all-word"><s:property value="#request.bookwords"/></p>
          </div>
          </div>
          <a href="studentbookAction"><input type="button" class="btn btn-primary" value="修改计划"></a>
     </div>

     <div class="col-xs-12 col-sm-6 col-md-4 word-div1">
          <h2>今日任务</h2><br>
          <div class="row">
          <div class="col-sm-3 col-md-3 col-sm-offset-3 col-xs-3 col-xs-offset-3">
               <p>已学</p>
               <p id="oneday-finished-word"><s:property value="#request.todaylearned"/></p>
          </div>
          <div class="col-sm-3 col-md-3 col-xs-3">
               <p>一共</p>
               <p id="oneday-all-word"><s:property value="#request.todayTask"/></p>
          </div>
          </div>
          <a href="wordlearnAction"><input type="button" class="btn btn-primary" value="开始背单词"/></a>
     </div>
</div>
</div>

<!--每日一练-->
<div class="row word-test-my">
<div class="container-my">
     <div class="col-md-6 word-div1">
          <h2>每日一练</h2><br>
          <div class="row">
             <div class="col-md-2 col-sm-2 col-xs-3 col-md-offset-2 col-sm-offset-2 col-xs-offset-1">
                 一共<p id="restudy-all-word">30</p>
             </div>
             <div class="col-md-4 col-sm-4 col-xs-4">
               已复习<p id="restudy-finished-word"><s:property value="#request.todayreviewed"/></p>
             </div>
             <div class="col-md-2 col-sm-2 col-xs-3">
               未复习<p id="restudy-unfinished-word"><s:property value="#request.needreview"/></p>
             </div>
          </div><br>
          <a href="dailypractice.jsp"><input type="button" class="btn btn-primary" value="开始复习"/></a>
     </div>
      <div class="col-md-6 hidden-sm hidden-xs">
          <img src="images/spare2.jpg" class="img-responsive">
      </div>
</div>
</div>

<!--作业-->
<div class="container">
     <img src="images/worktag.png" class="img-responsive" />
</div>

<div class="row word-work">
<div class="container-my">
    <s:iterator value="#session.studenttask" id="task" status="statu">
         <s:if test="#statu.count<=4">
         <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:50px;">
             <div class="homework-info">
                 <p id="lesson-name"><s:property value="%{#task.getTask().getCourseName()}" /></p>
                 <p>布置时间</p><p id="lesson-ftime"><s:property value="%{#task.getTask().getStartTime().toString()}" /></p>
                 <p>提交时间</p><p id="lesson-ltime"><s:property value="%{#task.getTask().getEndTime().toString()}" /></p>
                 <s:url id="studenttask" action="studenttaskAction">
                     <s:param name="taskNo" value="%{#task.getTask().getTaskNo()}"></s:param>
                     <s:param name="taskwordNo" value="0"></s:param>
                 </s:url>
                 <s:a href="%{studenttask}"><img src="images/btn1.png"></s:a>
             </div>
         </div>
         </s:if>
     </s:iterator>
</div>
</div>

<!--公告-->
<div class="container">
     <img src="images/adstag.png" class="img-responsive" />
</div>

<div class="row" style="margin-top:50px;">
<div class="container-my">
     <div class="col-md-6 col-sm-6 col-xs-6">
          <img src="images/plate1.png" class="img-responsive">
          <p>狐が井戸に落ちましたが、どうしても上がれなくて、困っていました。そこへ、喉が渇いて困っている山羊がやって来ました。そして、井戸の中に、狐が入っているのを見つけると、その水はうまいかと聞きました。狐は、困っているのに平気な顔をして、水のことをいろいろ褒めたて、山羊に下りてくるように勧めました。山羊は、水が飲みたいばっかりに、うっかり下りて行きました。</p>
          <input type="button" class="btn btn-primary" value="阅读更多">
      </div>
      <div class="col-md-6 col-sm-6 col-xs-6">
           <div class="col-md-6 col-sm-12col-xs-12">
                <img src="images/plate2.png" class="img-responsive sp-img">         
           </div>
           <div class="col-md-6 col-sm-12 col-xs-12">
                <p>狐が井戸に落ちましたが、どうしても上がれなくて、困っていました。そこへ、喉が渇いて困っている山羊がやって来ました。そして、井戸の中に、狐が入っているのを見つけると、その水はうまいかと聞きました。狐は、困っているのに平気な顔をして、水のことをいろいろ褒めたて、山羊に下りてくるように勧めました。山羊は、水が飲みたいばっかりに、うっかり下りて行きました。</p>
                <input type="button" class="btn btn-primary" value="阅读更多">
           </div>
      </div>
</div>
</div>

<footer class="foot hidden-sm hidden-xs">
<p>南京林业大学 &copy; 2017.</p>
</footer>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>

