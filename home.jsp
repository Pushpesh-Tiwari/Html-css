<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href="style.css"/>
    <body>
        <%@include file="header.jsp"%>
<!--        <img src="images/group-three-modern-architects.jpg" width="100%" >-->
        <br> <br>
        <form action="reg_usingbeans.jsp" method="post" >
            <table align="left" cellspacing="10" cellpadding="10" 
                    class="formtheme">     <!<!-- here -->
                <tr>
                    <td colspan='4'align="center"><h1>Sure4job Registration form </h1></td>
                </tr>
               <tr>
                 <td>Name:</td>
                 <td><input type="text" name="fname" class="texttheme"></td>
                 <td>Contact No:</td>
                 <td><input type="text" name="cno" class="texttheme"></td>
               </tr>
               
               <tr>
                 <td>Email:</td>
                 <td><input type="email" name="mail" class="texttheme"></td>
                 <td>Age:</td>
                 <td><input type="text" name="age" class="texttheme"></td>
               </tr>
               
               <tr>
                 <td>Skill:</td>
                 <td><input type="text" name="skill" class="texttheme"></td>
                 <td>Education:</td>
                 <td><input type="text" name="edu" class="texttheme"></td>
               </tr>
               
               <tr>
                 <td>Date of Rg:</td>
                 <td><input type="date" name="date" class="texttheme"></td>
                 
                <td>SELECT CITY:</td>
                <td><select class="texttheme" name="cityname">
                  <option>Select-City<option>
                  <option>Indore</option>
                  <option>Ujjain</option>
                  <option>Devas</option>
                  <option>Bhopal</option>
                  <option>Jabalpur</option>
                </td></select> 
               </tr>
               
               <tr>
                 <td>User-Id:</td>
                 <td><input type="text" name="id" class="texttheme"></td>
                 <td>Password:</td>
                 <td><input type="password" name="pwd" class="texttheme"></td>
               </tr>
               
               <tr>
                 <td colspan="2">User-Type:</td>
                 <td>    </td>
                 <td colspan="2">
                 <select class="texttheme" name="typ">
                  <option>Select-option<option>
                  <option>Seeker</option>
                  <option>Provider</option>
                  <option>Admin</option>
                </td></select>
               </tr>
               
               <tr>
                   <td colspan="4" class="singlebox" class="texttheme"> 
                       <input type="submit" Value="REGISTER" >
                   </td>
               </tr>
                     
            </table>
               
        </form>
    </body>
</html>
