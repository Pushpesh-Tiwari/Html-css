<%-- 
    Document   : contact.jsp
    Created on : 24-Jun-2024, 11:29:29 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link  href="style.css" rel="stylesheet"/>
    <body>
        
        <%@include file="header.jsp"%>
        <hr>
        <br><br><br>
        <table WIDTH="100%" align="center">
            <tr align="center">
                <td width="30%">
                    <img src="images/callus.jpg" alt="Call-Us" width="200px" 
                     cellpadding="10" height="200px"/><br>
                    <h2>+91-6456466578</h2>
                </td>
                <td width="30%">
                    <img src="images/mail.jpg" alt="email" width="200px" height="200px"/><br>
                    <h2>sure4job@gmail.com</h2>
                </td>
                <td width="30%">
                    <img src="images/whatsapp.jpg" alt="Whatsapp-Us" width="200px" height="200px"/><br>
                    <h2>+91-89898989</h2>
                </td>
                <td></td>
                <td></td>
            </tr>
        </table>
        <hr>
        <iframe width="520" height="400" frameborder="2" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" 
src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=MR10%20Indore+(Sukjliya)&amp;t=&amp;z=11&amp;
ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
      <form  action="contactservlet"  method="post">
  <table   cellspacing="10"
           cellpadding="10"  style="width:300px;
            height:100px;
            margin-left:550px;
            margin-top:-400px;
           " border="0">
    <tr align="center">
        <td colspan="2">
            <h2>FILL THE FORM TO CONTACT US</h2>
        </td>
    </tr>
    <tr>
        <td>FULL NAME</td>
        <td><input type="text" name="fnm" class="texttheme"></td>
    </tr>
    <tr>
        <td>CONTACT</td>
        <td><input type="number" name="contact" class="texttheme"></td>
    </tr>
    <tr>
        <td>PURPOSE</td>
        <td><textarea class="textareatheme"  name="concern"></textarea></td>
    </tr>
    
    <tr align="center">
        <td colspan="4">
            <input type="submit" value="SEND">
        </td>
    </tr>
</table>
    </form>
    </body>
</html>
