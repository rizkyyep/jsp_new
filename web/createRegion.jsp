<%-- 
    Document   : createRegion
    Created on : 11 Des 19, 16:38:58
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Region</title>
    </head>
    <body>
        <h1>Create Region</h1>
    <form action="${pageContext.request.contextPath}/regionServlet" method="post">
        <table border="0">
            <tbody>
                <tr>
                    <td>ID</td>
                    <td>:</td>
                    <td>
                        <input type="text" name="idRegion" id="idRegion" placeholder="ID Region" required />
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td><input type="text" name="nameRegion" id="nameRegion" placeholder="Name Region" required/></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" value="Save" />
                        <input type="reset" name="reset" value="reset" />
                    </td>
                </tr>
            </tbody>
        </table>

<!--    <p>Secret text field.        
    <input type="password" name="pass" /></p>

    <p>Single-selection radiobuttons.        
    <input type="radio" name="gender" value="M" /> Male
    <input type="radio" name="gender" value="F" /> Female</p>

    <p>Single-selection checkbox.
    <input type="checkbox" name="agree" /> Agree?</p>

    <p>Multi-selection checkboxes.
    <input type="checkbox" name="role" value="USER" /> User
    <input type="checkbox" name="role" value="ADMIN" /> Admin</p>

    <p>Single-selection dropdown.
    <select name="countryCode">
        <option value="NL">Netherlands</option>
        <option value="US">United States</option>
    </select></p>

    <p>Multi-selection listbox.
    <select name="animalId" multiple="true" size="2">
        <option value="1">Cat</option>
        <option value="2">Dog</option>
    </select></p>

    <p>Text area.
    <textarea name="message"></textarea></p>-->
</form>
    </body>
</html>
