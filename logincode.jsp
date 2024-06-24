<%@page  import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager"%>
<%@page  import="java.sql.ResultSet" %>

<%
    
    String userId=request.getParameter("uId");
    String password=request.getParameter("pwd");
    
      Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");
     PreparedStatement st=
con.prepareStatement("select * from transportusers  where userid=? and password=?");
     st.setString(1,userId);
     st.setString(2,password);
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
         response.sendRedirect("auth.jsp");
     }
     else
     {
    response.sendRedirect("login.jsp");
     }
%>
