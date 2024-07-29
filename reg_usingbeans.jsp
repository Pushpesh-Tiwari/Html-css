<jsp:useBean id="obj"  class="beanpack.registration_bean"/>
<!-- id is used for object creation -->
<jsp:setProperty name="obj" property="*"/>

<%
obj.insertRecord();
response.sendRedirect("login.jsp");
%>