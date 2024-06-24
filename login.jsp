<html>
            <link  href="style.css" rel="stylesheet"/>
    <body> 
        
        <%@include file="header.jsp" %>
        <hr>
                                        <!-- alternate,scroll,slide-->
        <marquee scrollamount="15" behavior="scroll">
        sdaf afasjkdf hdasjfahsdfjk ashfjkasfh asjkhasfjkhafjkasfhsaf
        </marquee>
        <hr>
<br>        <br>        <br>        <br>        
<form  action="logincode.jsp"  method="post">
<table  align="center" border=0 cellspacing="10" cellpadding="10"  class="formtheme">
    <tr align="center"       bgcolor="orange">
        <td colspan="4">USER SIGN IN</td>
    </tr>
    <tr>
        <td>ID</td>
        </tr>
        
        <tr>
            <td><input type="text" name="uId"  placeholder="enter id here" class="texttheme"></td>
    </tr>
    
    <tr >
        <td>PASSWORD</td>
        </tr>
        
        <tr>
        <td><input type="password"  placeholder="enter password here" name="pwd" class="texttheme"></td>
    </tr>
    <tr align="center">
        <td colspan="4">
            <input type="submit" value="SIGN IN">
        </td>
    </tr>
</table>
    </form>

<!--<img src="Images/packers.jpg"  class="imgtheme">-->
    </body>
    </html>
