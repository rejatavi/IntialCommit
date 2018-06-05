<%@ page language="java" contentType="text/plain"%>
<%
int n1=Integer.parseInt(request.getParameter("num1"));
int n2=Integer.parseInt(request.getParameter("num2"));
out.println(n1+n2);
%>