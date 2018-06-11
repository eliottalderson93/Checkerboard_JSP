<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles.css">
<title>Checkerboard</title>
</head>
<body>
<div class = "wrapper">
<h1>My Checkerboard</h1>
<%int h = Integer.valueOf(request.getParameter("h")); %>
<%int w = Integer.valueOf(request.getParameter("w")); %>
<% for (int height = 0; height < h; height++){%>
<div class = "newline">
	<% for(int width = 0; width<w; width++){%>
		<%if (height%2 == 0) {%>
			<%if(width%2 == 0) {%>
				<div class = "black_box"></div>
				<%} %>
			<%if(width%2 != 0) {%>
				<div class = "purple_box"></div>
			<%} %>
		<%} %>
		<%if (height%2 != 0) {%>
			<%if(width%2 != 0) {%>
				<div class = "black_box"></div>
				<%} %>
			<%if(width%2 == 0) {%>
				<div class = "purple_box"></div>
			<%} %>
		<%} %>
	<% }%>
</div>
<% }%>
</div>
</body>
</html>