<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="navbar navbar-fixed-top navbar-my" style="background:#FFF;">    
	<div class="container">     
		<div class="navbar-header header-my">    
			<button type="button" class="navbar-toggle icon-my" data-toggle="collapse" data-target="#navBar">    
				<span class="icon-bar bar-my"></span>
				<span class="icon-bar bar-my"></span>
				<span class="icon-bar bar-my"></span>
			</button>
			<a class="navbar-brand logo" href="reloginAction?type=student">NJFU</a>
		</div>    
		<div class="collapse navbar-collapse navbar-right" id="navBar">    
			<ul class="nav navbar-nav nav-my">
				<li <c:if test="${page=='studenthome'}">class="activee"</c:if>>
					<a href="reloginAction?type=student">学生首页</a>
				</li>
				<li <c:if test="${page=='wordlearn'}">class="activee"</c:if>>
					<a href="wordlearnAction">单词学习</a>
				</li>  
				<li <c:if test="${page=='dailypractice'}">class="activee"</c:if>>
					<a href="dailypractice.jsp">每日一练</a>
				</li>  
				<li <c:if test="${page=='studenttask'}">class="activee"</c:if>>
					<a href="作业.html">完成作业</a>
				</li>   
				<li <c:if test="${page=='stuADs'}">class="activee"</c:if>>
					<a href="#">查看公告</a>
				</li>  
				<li <c:if test="${page=='stuperson'}">class="activee"</c:if>>
					<a href="个人信息.html">郭勇</a>
				</li>
				<li><a href="logoutAction">登出</a></li>
			</ul>
		</div>
	</div>
</div>