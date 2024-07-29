
<%-- 
    Document   : registrationlogic
    Created on : 21-Jun-2024, 10:44:18?am
    Author     : DELL
--%>

<%@page  import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager"%>
<%
        String fullName = request.getParameter("fname");
        String contno = request.getParameter("cno");
        String email = request.getParameter("mail");
        String ageyr = request.getParameter("age");
        String skillag = request.getParameter("skill");
        String education = request.getParameter("edu");
        String doreg = request.getParameter("date");
        String yrcity = request.getParameter("cityname");  // add this 
        String userid = request.getParameter("id");
        String password = request.getParameter("pwd");
        String usertyp = request.getParameter("typ");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","1508");
        PreparedStatement st=
             con.prepareStatement("insert into registrationtab values(?,?,?,?,?,?,?,?,?,?,?)");
                st.setString(1,fullName);
                st.setString(2,contno);
                st.setString(3,email);
                st.setString(4,ageyr);
                st.setString(5,skillag);
                st.setString(6,education);
                st.setString(7,doreg);
                st.setString(8,yrcity);   
                st.setString(9,userid);
                st.setString(10,password);
                st.setString(11,usertyp);
                st.executeUpdate();
                con.close();
                response.sendRedirect("login.jsp"); 
%>