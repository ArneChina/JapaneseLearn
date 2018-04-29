

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
</head>

<body>
<div class="header">
  <div class="container">
    <h1 class="brand">
       <a href="/" class="logo">NJFU</a>
    </h1>
    <ul class="list list-inline nav">
       <li class="item"><a href="#" target="_blank">学习新单词</a></li>
       <li class="item"><a href="#" target="_blank">每日一练</a></li>
       <li class="item"><a href="#" target="_blank">完成作业</a></li>
       <li class="item" id="student"><a href="#" target="_blank">1408041学生</a></li>
       <li class="item"><a href="#" target="_blank">登出</a></li>
     </ul>
  </div>
</div>

<div class="top">
    <div class="top-in">
        <div class="top-in-l">已学 <span>0</span></div>
        <div class="top-in-ll">今日目标 <span>52</span></div>
    </div>
</div>

<div class="center-w"> 
    <div id="question-list" style="display:block;">
        <div class="question">
            <p class="question-l" id="question-l">题目</p>
        </div>
<!--选项-->
        <ul class="choice-list">
          <li class="flag-l">
            <a href="#" onclick="foo(this);">
                <div class="book-desc">
                  <p class="b-title" id="choice1">选项1</p>
                </div>
            </a>
          </li>
          <li class="flag-l">
            <a href="#" onclick="foo(this);">
                <div class="book-desc">
                  <p class="b-title" id="choice1">选项2</p>
                </div>
            </a>
          </li>
          <li class="flag-l">
            <a href="#" onclick="foo(this);">
                <div class="book-desc">
                  <p class="b-title" id="choice1">选项3</p>
                </div>
            </a>
          </li>
          <li class="flag-l">
            <a href="#" onclick="foo(this);">
                <div class="book-desc">
                  <p class="b-title" id="choice1">选项4</p>
                </div>
            </a>
          </li>
          </ul>        
    <input type="button" id="test-button1" value="给点提示吧" onclick="hint1()"/>
    </div>

    <div class="bor"></div> 

<!--提示内容，显示单词的具体内容-->
    <div class="word-information" id="word-information" style="display:none;">
        <p id="word">单词</p>
        <p id="hint3">词性和中文注释</p>
        <p id="hint2">词性和日语注释</p>
        <p id="hint1">例句</p>
        <input type="button" value="继续做题吧" id="test-button2" onclick="hint2()" />
    </div>
</div>

<script>
	var div1=document.getElementById("question-list");
	var div2=document.getElementById("word-information");
function hint1()
{
	div1.style.display="none";
	div2.style.display="block";
}
function hint2()
{
	div1.style.display="block";
	div2.style.display="none";
}
</script>
</body>
</html>
