<%-- 
    Document   : testJSP
    Created on : 11 Des 19, 8:43:05
    Author     : ASUS
--%>

<%@page import="models.Job"%>
<%@page import="models.Department"%>
<%@page import="models.Department"%>
<%@page import="models.Employee"%>
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
                
              <div class="flash-data" data-flashdata="<%= request.getAttribute("flash")%>"> 
                <script>
                    const flashdata = $('.flash-data').data('flashdata');
                    if (flashdata) {
                        swal({
                            title: 'Information',
                            text: 'Success ' + flashdata,
                            type: 'success'
                        });
                    }
                </script>
            </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1">Employee Data</h2>
                            <button data-toggle="modal" data-target="#additem" class="au-btn au-btn-icon au-btn--blue">
                                <i class="zmdi zmdi-plus"></i>add item</button>
                        </div>
                    </div>
                </div>
                <div class="row m-t-25">
                    <div class="col-12">
                        <!--<div class="table-responsive table--no-card m-b-30">-->
                        <table id="listItem" class="table table-borderless table-striped table-earning">
                            <!--<table id="myTable" class="table table-borderless table-striped table-earning">-->
                        <% List<Employee> employee = (ArrayList<Employee>) request.getAttribute("employee"); %>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NAME</th>

                                <th>EMAIL</th>
                                <th>SALARY</th>

                                <th class="text-right">ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for (Employee em : employee) {%>
                            <tr>
                                <td><%=em.getEmployeeId()%></td>
                                <td><%= em.getFirstName()%> <%= em.getLastName()%></td>

                                <td><%= em.getEmail()%></td>
                                <td><%= em.getSalary()%></td>

                                <td class="text-right">
                                    <a href="employeeServlet?action=detail&id=<%=em.getEmployeeId()%> "
                                      data-toggle="tooltip" data-placement="top" title="Details"><i class="fas fa-list-alt"></i></a>

                                    <a href="<%=em.getEmployeeId()%>" class="view_data" 
                                      data-toggle="modal" id="<%=em.getEmployeeId()%>" data-target="#editModal">
                                        <i class="fas fa-edit fa-lg" style="color:#26a65b;"></i>
                                    </a>

                                            <a href="employeeServlet?action=delete&id=<%= em.getEmployeeId()%> " 
                                           class="btn btn-danger tombol-hapus" data-toogle="tooltip" title="Delete"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                    <!--</div>-->
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">


                        <button class="btn btn-primary" onclick="alertsave()" >coba nih</button>


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

<!-- modal add item -->
<div class="modal fade" id="additem" tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="smallmodalLabel">Small Modal</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <div class="card">
                    <div class="card-header"></div>
                    <div class="card-body card-block">
                        <form action="employeeServlet?action=insert" method="post" class="form-horizontal">

                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">First Name</div>
                                    <input type="text" id="firstName" name="firstName" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">Last Name</div>
                                    <input type="text" id="lastName" name="lastName" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">Email</div>
                                    <input type="email" id="email" name="email" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">Phone Number</div>
                                    <input type="text" id="phoneNumber" name="phoneNumber" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">Salary</div>
                                    <input type="text" id="salary" name="salary" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">Commission PCT</div>
                                    <input type="text" id="commissionPct" name="commissionPct" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">Hire Date</div>
                                    <input type="date" id="hireDate" name="hireDate" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-user"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <label for="selectSm" class=" form-control-label">Job</label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <select name="jobId" id="jobId" class="form-control-sm form-control">
                                        <% List<Job> jobId = (ArrayList<Job>) request.getAttribute("jobId"); %>

                                        <option value="0">Please select</option>
                                        <%for (Job em : jobId) {%>
                                        <option value="<%= em.getJobId()%>"><%= em.getJobTitle()%></option>
                                        <%}%>
                                    </select>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <label for="selectSm" class=" form-control-label">Manager</label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <select name="managerId" id="managerId" class="form-control-sm form-control">
                                        <% List<Employee> managerId = (ArrayList<Employee>) request.getAttribute("managerId"); %>

                                        <option value="0">Please select</option>
                                        <%for (Employee mn : managerId) {%>
                                        <option value="<%= mn.getEmployeeId()%>"><%= mn.getFirstName()%></option>
                                        <%}%>
                                    </select>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <label for="selectSm" class=" form-control-label">Department</label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <select name="departmentId" id="departmentId" class="form-control-sm form-control">
                                        <% List<Department> departmentId = (ArrayList<Department>) request.getAttribute("departmentId"); %>

                                        <option value="0">Please select</option>
                                        <%for (Department dm : departmentId) {%>
                                        <option value="<%= dm.getDepartmentId()%>"><%= dm.getDepartmentName()%></option>
                                        <%}%>
                                    </select>
                                </div>
                            </div>
                            <div class="form-actions form-group">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save</button>
                                <button type="button" class="btn btn-warning" data-dismiss="modal"><i class="fa fa-times-circle"></i>Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                       

<!-- memulai modal nya. pada id="$myModal" harus sama dengan data-target="#myModal" pada tombol di atas -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModalLabel">Edit Employee</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                   
                </button>
            </div>
            <div class="modal-body" id="data">

            </div>

            <div class="modal-footer">
                    </div>
        </div>
    </div>
</div>




<!-- Declaration of Datatables -->
<script type="text/javascript">
    $(document).ready(function () {
        $('#listItem').DataTable(
                {
                    "columnDefs": [
                        {"orderable": false, "targets": 4}
                    ]
                }
        );
    });
</script>
<script type="text/javascript">
    function success() {
        swal({
            title: "Success Saved!",
            text: "You Success Saved New Data!",
            icon: "success",
            timer: 2500
        });
    }
</script>


<script type="text/javascript">
    $(document).ready(function () {
        $("body").on('click', '.view_data', function () {
            var id = $(this).attr("id");
            $.ajax({
                url: "employeeServlet?action=edit&id=" + id,
                type: "GET",
                data: {id: id},
                success: function (data) {
                    $("#data").html(data);
                    $("#editModal").modal('show', {backdrop: 'true'});
                }
            });
        });
    });


//   
</script>

<script>
    $('.tombol-hapus').on('click', function () {
        event.preventDefault();

        const href = $(this).attr("href");
        swal({
            title: 'Are you sure?',
            text: "Delete Data",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes'
        }).then((result) => {
            if (result.value) {
                window.location.href = href;
            }
        });
    });
</script>



<jsp:include page="templates/footer.jsp"></jsp:include>