<%-- 
    Document   : testJSP
    Created on : 11 Des 19, 8:43:05
    Author     : ASUS
--%>

<%@page import="models.Region"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="createRegion.jsp">Create</a> <br>

        <br>

        <% List<Region> regions = (ArrayList<Region>) request.getAttribute("regions"); %>

        <table border=1>
            <tr>
                <td>
                    ID
                </td>
                <td>
                    Region Name
                </td>
                <td>
                    
                    Action
                </td>

            <tr>

                <% for (Region region : regions) { %>
            <tr>
                <td>
                    <% out.println(region.getRegionId()); %>
                </td>
                <td>
                    <% out.println(region.getRegionName()); %>
                </td>
                <td>
                    <%

                    %>
                </td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
