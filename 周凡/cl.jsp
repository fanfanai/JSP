<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
	</head>
	<body>
		<h1>数据库的所有内容</h1>
		<%
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String url="jdbc:sqlserver://localhost:12500;DatabaseName=JSP";
			Connection con=DriverManager.getConnection(url,"sa","1020");
			Statement z=con.createStatement();
			ResultSet m=z.executeQuery("select*from student");
			while(m.next()){
				out.print(m.getString("id"));
				out.print(m.getString("name"));
				out.print(m.getInt("age")+" ");
				out.print(m.getString("sex"));
				out.print("</br>");
			}
		%>
		<h1>查找的信息：</h1>
		<%
			int age=Integer.parseInt(request.getParameter("age"));
			String cx="select*from student where age=?";
			PreparedStatement zm=con.prepareStstement(cx);
			zm.setInt(1,age);
			m=zm.executeQuery();
			while(m.next()){
				out.print(m.getString("id"));
				out.print(m.getString("name"));
				out.print(m.getInt("age")+" ");
				out.print(m.getString("sex"));
				out.print("</br>");
			}
			m.close();
			z.close();
			con.close();
		%>
	</body>
</html>
