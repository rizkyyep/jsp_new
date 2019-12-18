<%-- 
    Document   : listRegion
    Created on : Dec 18, 2019, 1:22:36 PM
    Author     : Rizky
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Region"%>
<%@page import="java.util.List"%>
<jsp:include page="templates/header.jsp"></jsp:include>
<jsp:include page="templates/topbar.jsp"></jsp:include>
<jsp:include page="templates/sidebar.jsp"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Dashboard</h4>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Library</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <table id="listItem" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>Region ID</th>
                                    <th>Region Name</th>
                                    <th class="text-right">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% List<Region> regions = (ArrayList<Region>) request.getAttribute("regions"); %>
                                <%for (Region region : regions) {%>
                                <tr>
                                    <td><%=region.getRegionId()%></td>
                                    <td><%= region.getRegionName()%></td>
                                    <td class="text-right">
                                        <a href="regionServlet?action=edit&id=<%= region.getRegionId()%>" 
                                           data-toggle="tooltip" data-placement="top" 
                                           title="Edit"><i class="fas fa-edit fa-lg" style="color:#26a65b;"></i></a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="regionServlet?action=delete&id=<%=region.getRegionId()%> " 
                                           data-toggle="tooltip" data-placement="top" 
                                           title="Delete"><i class="fas fa-trash fa-lg" style="color:#f03434;"></i></a>
                                    </td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>  
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function () {
        $('#listItem').DataTable(
                {
                    "columnDefs": [
                        {"orderable": false, "targets": 2}
                    ]
                }
        );

    });
</script>
