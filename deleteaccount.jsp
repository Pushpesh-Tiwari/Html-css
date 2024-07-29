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
        If you want to reconnect you are welcome anytime!!! 
        </marquee>
        <hr>
        <br> 
        <form action="deletecode.jsp" method="post">
            <table class="formtheme" border ="0" cellspacing="10" cellpadding="10">
                <tr>
                    <td colspan="2" class="centred-text"> 
                        <h1>Delete-Account</h1>
                    </td>
                </tr>
                
                <tr>
                    <td>Login-Id:</td>
                    <td><input type="text" placeholder="enter id here" name="id" class="texttheme"></td> 
                </tr>
                
                <tr>
                    <td>Password:</td>
                    <td><input type="password" placeholder="enter password here" name="pwd" class="texttheme" ></td> 
                </tr>
                
                <tr>
                    <td>Confirm-Password:</td>
                    <td><input type="password" placeholder="confirm password here" name="cnfpwd" class="texttheme" ></td> 
                </tr>
               
                <tr>
                   <td colspan="4"class="singlebox"> 
                       <input type="submit" Value="DELETE">
                   </td>
               </tr>
            </table>
        </form>
    </body>
</html>
