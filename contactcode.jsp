<%@page  import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement,java.sql.DriverManager"%>
<%
        String fullName = request.getParameter("fnm");
        String contno = request.getParameter("contact");
        String qery_det = request.getParameter("concern");
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","1508");
        PreparedStatement st=
             con.prepareStatement("insert into contactus values(?,?,?)");
                st.setString(1,fullName);
                st.setString(2,contno);
                st.setString(3,qery_det);
                
                st.executeUpdate();
                con.close();
                response.sendRedirect("home.jsp"); 
%>