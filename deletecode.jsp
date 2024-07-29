<%@page  import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager"%>
<%@page  import="java.sql.ResultSet" %>

<%
    
    String userId=request.getParameter("id");
    String password=request.getParameter("pwd");
    String confpassword=request.getParameter("cnfpwd");
    
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
         if(password.equals(confpassword))
         {
      PreparedStatement st1=
con.prepareStatement("delete from registrationtab where id=?");           
     st1.setString(1,userId);
     st1.executeUpdate();
     response.sendRedirect("home.jsp");
         }
    }  
%>