<%@page  import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager"%>
<%@page  import="java.sql.ResultSet" %>

<%
    
    String userId=request.getParameter("id");
    String password=request.getParameter("pwd");
    String usertyp=request.getParameter("typ");
    
      Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","1508");
     
     PreparedStatement st=
con.prepareStatement("select * from registrationtab where id=? and password=?");
               
     st.setString(1,userId);
     st.setString(2,password);
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
         if(usertyp.equals("Seeker"))
         {
         response.sendRedirect("seekerauth.jsp");
         }
         if(usertyp.equals("Provider"))
         {
         response.sendRedirect("provider_auth.jsp");
         }
    }
     else
     {
    response.sendRedirect("login.jsp");
     }
%>