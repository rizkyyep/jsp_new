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
        <style>
            table {
                width:100%;
            }
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th, td {
                padding: 15px;
                text-align: left;
            }
            table#t01 tr:nth-child(even) {
                background-color: #eee;
            }
            table#t01 tr:nth-child(odd) {
                background-color: #fff;
            }
            table#t01 th {
                background-color: #cccccc;
                color: black;
            }
            .container{
                width: 80%;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Region List</h1>
            <button style="background-color: blue; width: 8%; " onclick="window.location.href = 'createRegion.jsp';"> 
                Create</button>

            <br>
            <br>

            <% List<Region> regions = (ArrayList<Region>) request.getAttribute("regions"); %>

            <table  id="t01" border=1>
                <tr>
                    <th>
                        ID
                    </th>
                    <th>
                        Region Name
                    </th>
                    <th style="width: 14%">
                        Action
                    </th>
                <tr>

                    <% for (Region region : regions) {%>
                <tr>
                    <td>
                        <%=region.getRegionId()%>
                    </td>
                    <td>
                        <%= region.getRegionName()%>
                    </td>
                    <td>
                        <a href="/edit?id=<%= region.getRegionId()%> />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="regionServlet?action=delete&id=<%=region.getRegionId()%> ">Delete</a>
                        <!--                        &nbsp;&nbsp;&nbsp;&nbsp;-->
                    </td>
                </tr>
                <% }%>
            </table>
        </div>
    </body>
</html>
