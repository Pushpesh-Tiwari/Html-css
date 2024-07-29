<%-- 
    Document   : alljobs
    Created on : 27-Jun-2024, 4:23:17 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link href="style.css" rel="stylesheet"/>
    <body>
        <table WIDTH="100%"  class="tabtheme">
            <tr>
                <td><a href="home.jsp"  class="link">HOME</a></td>
                <td><a href="deleteaccount.jsp" class="link">Del-Account</a></td>
                <td><a href="contact.jsp" class="link">CONTACT</a></td>
                <td><a href="pwdchange.jsp" class="link">Change-Password</a></td>
                <td><a href="login.jsp" class="link">SIGN IN</a></td>
                <td><a href="alljobs.jsp" class="link">All-jobs</a></td>  
            </tr>
        </table>
        <br>
        <hr>
        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.PreparedStatement,java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.util.ArrayList"%>
        <%
        Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","1508");
     
     PreparedStatement st=
con.prepareStatement("select * from alljobtab");
     ResultSet rs=st.executeQuery();
     ArrayList list1 = new ArrayList();
     ArrayList list2 = new ArrayList();
     ArrayList list3 = new ArrayList();
     ArrayList list4 = new ArrayList();
     ArrayList list5 = new ArrayList();
     ArrayList list6 = new ArrayList();
     while(rs.next()){
        list1.add(rs.getString(1));
        list2.add(rs.getString(2));
        list3.add(rs.getString(3));
        list4.add(rs.getFloat(4));
        list5.add(rs.getFloat(5));
        list6.add(rs.getString(6));
     }
        %> 
        <table width="100%" cellspacing="5" cellpadding="5">
            <tr align="center" bgcolor="lightblue">
                <td>JOB ID</td>
                <td>JOB</td>
                <td>Description</td>
                <td>Amount</td>
                <td>Time</td>
                <td>Status</td>
            </tr>
            <% for(int i=0;i<list1.size();i++)
            {
            %>
           <tr align="center">
            <td><%=list1.get(i)%></td>
            <td><%=list2.get(i)%></td>
            <td><%=list3.get(i)%></td>
            <td><%=list4.get(i)%></td>
            <td><%=list5.get(i)%></td>
            <td><%=list6.get(i)%></td>
          </tr>
          <% } %>
        </table>
        <hr>
    </body>
</html>
