<%-- 
    Document   : testJSP
    Created on : 11 Des 19, 8:43:05
    Author     : ASUS
--%>

<%@page import="models.Region"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="templates/header.jsp"></jsp:include>
<jsp:include page="templates/sidebar.jsp"></jsp:include>
<jsp:include page="templates/topbar.jsp"></jsp:include>
    <!-- MAIN CONTENT-->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1">Region Data</h2>
                            <a href="createRegion.jsp" class="au-btn au-btn-icon au-btn--blue">
                                <i class="zmdi zmdi-plus"></i>add item</a>
                        </div>
                    </div>
                </div>
                <div class="row m-t-25">
                    <div class="col-12">
                        <div class="table-responsive table--no-card m-b-30">
                            <table class="table table-borderless table-striped table-earning">
                            <% List<Region> regions = (ArrayList<Region>) request.getAttribute("regions"); %>
                            <thead>
                                <tr>
                                    <th>Region ID</th>
                                    <th>Region Rame</th>
                                    <th class="text-right">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (Region region : regions) {%>
                                <tr>
                                    <td><%=region.getRegionId()%></td>
                                    <td><%= region.getRegionName()%></td>
                                    <td class="text-right">
                                        <a href="regionServlet?action=edit&id=<%= region.getRegionId()%>" 
                                           class="btn btn-success"><i class="fas fa-edit"></i> Edit</a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="regionServlet?action=delete&id=<%=region.getRegionId()%> " 
                                           class="btn btn-danger"><i class="fas fa-trash"></i> Delete</a>
                                    </td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                        <h1>Halaman Utama!</h1>
                        <a href="regionServlet?action=list">Region</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->


<jsp:include page="templates/footer.jsp"></jsp:include>
