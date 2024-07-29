<%@page import="javax.swing.JOptionPane"%>
<%@page  import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager"%>
<%@page  import="java.sql.ResultSet" %>

<%
    
    String userId =request.getParameter("id");
    String oldpwd =request.getParameter("opwd");
    String newpwd =request.getParameter("npwd");
    String confpwd =request.getParameter("cnpwd");
    
    
      Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","1508");
     
     PreparedStatement st1=
con.prepareStatement("select * from registrationtab where id=? and password=?");
               
     st1.setString(1,userId);
     st1.setString(2,oldpwd);
     ResultSet rs=st1.executeQuery();
     if(rs.next())
     {
         if(newpwd.equals(confpwd))
         {
     PreparedStatement st2=
con.prepareStatement("update registrationtab set password=? where id=?");
         st2.setString(1,newpwd);
         st2.setString(2,userId);
         st2.executeUpdate();
         response.sendRedirect("login.jsp");
         }    
    }
%>