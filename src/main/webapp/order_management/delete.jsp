<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="entity.Order" %>
<%@ page import="order_control.Order_Control" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
int order_number = Integer.parseInt(request.getParameter("order_number"));

Order_Control control = new Order_Control();
Boolean result = control.DeleteOrder(order_number);

if(result==false){
	out.println("<script>alert('실패');location.href='Order_Management_UI.jsp';</script>");
}
else{
	out.println("<script>location.href='Order_Management_UI.jsp'</script>");
}
%>
</body>
</html>