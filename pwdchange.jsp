<%-- 
    Document   : login
    Created on : 22-Jun-2024, 9:24:24 am
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .formtheme{
            border:inset;
            border-color: black;
            margin-top:120px;
            margin-left:550px;
            background-color:rgba(238,221,130,0.5);
            font-family:arial;
                font-size:20px;
        }
        
/*        body
        {
            background-image: url('images/loginwall.png');
                background-size:100%;
                background-repeat: no-repeat;
        }*/
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link  href="style.css" rel="stylesheet"/>    <!-- calling css classes -->
    <body>
        <%@include file="header.jsp" %>
        <hr>
                                        <!-- alternate,scroll,slide-->
    <marquee scrollamount="10" behavior="scroll" font-size:50px >  <!-- increase font size -->
        Password should be 8 characters long consisting special characters 
        </marquee>
        <hr>
        <br> 
        <form action="pwdcode.jsp" method="post">
            <table class="formtheme" border ="0" cellspacing="10" cellpadding="10">
                <tr>
                    <td colspan="2" class="centred-text"> 
                        <h1>Password-Reset</h1>
                    </td>
                </tr>
                
                <tr>
                    <td>Login-Id:</td>
                    <td><input type="text" placeholder="enter id here" name="id" class="texttheme"></td> 
                </tr>
                
                <tr>
                    <td>Password:</td>
                    <td><input type="password" placeholder="enter password here" name="opwd" class="texttheme" ></td> 
                </tr>
                
                <tr>
                    <td>New-Password:</td>
                    <td><input type="password" placeholder="enter new password here" name="npwd" class="texttheme" ></td> 
                </tr>
                
                <tr>
                    <td>Confirm New Password:</td>
                    <td><input type="password" placeholder="confirm new password here" name="cnpwd" class="texttheme" ></td> 
                </tr>
                <tr>
                   <td colspan="4"class="singlebox"> 
                       <input type="submit" Value="RESET">
                   </td>
               </tr>
            </table>
        </form>
    </body>
</html>
