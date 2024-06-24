<html>
    <link  href="style.css" rel="stylesheet"/>
    <body> 
        <%@include file="header.jsp" %>
<img src="Images/packers.gif" width="100%">

<form  action="registrationcode.jsp"  method="post">
<table  align="left" border=0 cellspacing="10" cellpadding="10"  class="formtheme">
    <tr align="center" bgcolor="orange">
        <td colspan="4">SEND YOU REQUEST- REGISTER HERE</td>
    </tr>
    <tr>
        <td>FULL NAME</td>
        <td><input type="text" name="fNm" class="texttheme"></td>
        <td>ID</td>
        <td><input type="text" name="uId"  class="texttheme"></td>
    </tr>
    <tr>
        <td>PASSWORD</td>
        <td><input type="password" name="pwd" class="texttheme"></td>
        <td>CONTACT</td>
        <td><input type="number" name="contact" class="texttheme"></td>
    </tr>
    <tr>
        <td>MAIL ID</td>
        <td><input type="email" name="mailId" class="texttheme"></td>
        <td>GENDER</td>
        <td><select class="texttheme"  name="gender">
                <option>SELECT GENDER</option>
                <option>FEMALE</option>
                <option>MALE</option>
            </select></td>
    </tr>
    <tr>
        <td>ADDRESS</td>
        <td><textarea class="texttheme"  name="address"></textarea></td>
        <td>CITY</td>
        <td><select class="texttheme"  name="city">
                <option>SELECT CITY</option>
                <option>INDORE</option>
                <option>UJJAIN</option>
                <option>DEWAS</option>
                <option>BHOPAL</option>
            </select></td>
    </tr>
    
    <tr>
        <td>DOB</td>
        <td><input type="date" class="texttheme"  name="dOB"></textarea></td>
        <td>COUNTRY</td>
        <td><select class="texttheme"  name="country">
                <option>SELECT COUNTRY</option>
                <option>BHARAT</option>
                <option>PAKISTAN</option>
                <option>SRI LANKA</option>
            </select></td>
    </tr>
    <tr align="center">
        <td colspan="4">
            <input type="submit" value="REGISTER">
            <input type="reset" value="CLEAR">
        </td>
    </tr>
</table>
    </form>

<!--<img src="Images/packers.jpg"  class="imgtheme">-->
    </body>
    </html>
