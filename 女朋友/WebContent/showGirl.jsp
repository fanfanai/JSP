<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>设计女朋友</title>
<!-- 初始化女朋友 -->
<jsp:useBean id="myGirlFriend" class="kwx.GirlFriend" scope="session" />
<!-- 满足现实世界的需求~~~~ -->
<jsp:setProperty property="*" name="myGirlFriend" />

<!-- 给小女朋友添加参数~~~
<jsp:setproperty name="myGirlFriend" property="piaoliangZhi" />
<jsp:setproperty name="myGirlFriend" property="tizhong" />
<jsp:setproperty name="myGirlFriend" property="shengao" />
<jsp:setproperty name="myGirlFriend" property="shengqizhi" />
<jsp:setproperty name="myGirlFriend" property="aixinzhi" />
-->
</head>
<body>
<p> 女朋友的颜值: <jspgetProperty name="myGirlFriend" property="piaoliangZhi" />分</p>
<p> 女朋友的体重: <jspgetProperty name="myGirlFriend" property="tizhng" />kg</p>
<p> 女朋友的身高: <jspgetProperty name="myGirlFriend" property="shengao" />cm</p>
<p> 女朋友的怒值: <jspgetProperty name="myGirlFriend" property="shengqizhi" /></p>
<p> 女朋友的爱值: <jspgetProperty name="myGirlFriend" property="aixinzhi" /></p>

<p><a href="status.jsp">前方高能！！开始测试！！！</a></p>
</body>
</html>