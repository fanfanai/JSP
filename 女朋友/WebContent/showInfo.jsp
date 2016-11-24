<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>重燃你的欲望吧~~~</title>
</head>
<body>
<%
    GirlFriend gf = (GirFriend)session.getAttribute("myGirlFriend");//从刚才的页面中得到选项内容
    String phone = request.getParameter("phone");//从刚才的页面得到选项内容
    
    
    int  shengqizhi = gf.getshengqizhi();//获得现在女朋友的生气值
    int aixinzhi= gf.getaixinzhi();//获得现在女朋友的爱值
    
    if(phone.equals("0")){
    	shengqizhi = shengqizhi + 10;//如果选择了手机静音shengqizhi+10
     }else if(phone.equals("1")){
    	shengqizhi = shengqizhi + 30;//如果选择了打游戏shengqizhi+30
     }else if(phone.equals("2")){
	    aixinzhi = aixinzhi + 20;//如果选择了给她买东西aixinzhi+30
     }else{
    	 aixinzhi = aixinzhi + 10;//如果选择了在工作 ai + 30
    	 shengqizhi = shengqizhi + 10; //shengQi + 10
     }
     gf.setshengqizhi(shengqizhi);//把最后的结果赋值给gf变量
     gf.getAi(aixinzhi);
     
     if(gf.getshengqizhi() > 20){//做个判断
    	 out.print("<h1>恭喜你,你已经洗白了~~<h1>");	 
     }else{
    	 out.print("<h1>少年你要小心咯，女朋友的怒气已经达到<h1>" + gf.getshengqizhi() + "</h1>");	
    	 
    	 if(gf.getaixinzhi() > 30){
    		out.print("<h1>哎呦，不错哦，女票还是蛮喜欢你的嘛~~~<h1>");
    	 }
    	 out.print("<p><a href='status.jsp'>继续测试！</a></p>");
     }
     if(gf.getaixinzhi() > 100){
    	 out.print("<h1>恭喜你们可以步入殿堂</h1>");
     } 
    %>
</body>
</html>