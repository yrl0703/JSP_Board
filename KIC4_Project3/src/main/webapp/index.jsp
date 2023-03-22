<%@page contentType="text/html;charset=utf-8"%>
<jsp:useBean id="memDao" class="member.MemberDAO"/>
<%
boolean loginReset = memDao.loginReset();
System.out.println("초기화=>"+loginReset);

response.sendRedirect("http://localhost:8090/KIC4_Project3/M_mainpage.shop");
%>
