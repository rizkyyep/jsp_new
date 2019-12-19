<%-- 
    Document   : createRegion
    Created on : 11 Des 19, 16:38:58
    Author     : ASUS
--%>

<%@page import="models.Department"%>
<%@page import="models.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Job"%>
<%@page import="java.util.List"%>
<jsp:include page="templates/header.jsp"></jsp:include>
<jsp:include page="templates/sidebar.jsp"></jsp:include>
<jsp:include page="templates/topbar.jsp"></jsp:include>
    <!--     MAIN CONTENT-->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="overview-wrap">
                            <h2 class="title-1">Update Data</h2>
                        </div>
                    </div>
                </div>
                <div class="row m-t-25">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Employee Update</strong> Form
                            </div>
                            <div class="card-body card-block">
                                <form action="employeeServlet?action=update" method="post" class="form-horizontal">


                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="stateProvince" class=" form-control-label">ID</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("id")%>"  id="id" name="id" class="form-control" readonly="">
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="stateProvince" class=" form-control-label">First Name</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="text" value="<%= request.getAttribute("firstName")%>"  id="firstName" name="firstName" class="form-control">
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="stateProvince" class=" form-control-label">Last Name</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="text" value="<%= request.getAttribute("lastName")%>"  id="lastName" name="lastName" class="form-control">
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="stateProvince" class=" form-control-label">Email</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="email" value="<%= request.getAttribute("email")%>"  id="email" name="email" class="form-control">
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="stateProvince" class=" form-control-label">Phone Number</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="text" value="<%= request.getAttribute("phoneNumber")%>" id="phoneNumber" name="phoneNumber" class="form-control">
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="stateProvince" class=" form-control-label">Salary</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="text" id="salary" value="<%= request.getAttribute("salary")%>"  name="salary" class="form-control">
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="stateProvince" class=" form-control-label">Commission PCT</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="text" value="<%= request.getAttribute("commision")%>"  id="commissionPct" name="commissionPct" class="form-control">
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="stateProvince" class=" form-control-label">Hire Date</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <input type="text" id="hireDate" value="<%= request.getAttribute("hireDate")%>" name="hireDate" placeholder="Enter State Province..." class="form-control">
                                    </div>
                                </div>

                                <% List<Job> jobs = (ArrayList<Job>) request.getAttribute("jobAll");%>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="selectSm" class=" form-control-label">Job</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <select name="jobId" id="jobId" class="form-control-sm form-control">
                                            <option value="<%= request.getAttribute("job")%>">
                                                <%= request.getAttribute("job")%> 
                                            </option>


                                            <option value="<%= request.getAttribute("job")%>">----------------</option>


                                            <% for (Job j : jobs) {%>
                                            <option value="<%= j.getJobId()%>"><%= j.getJobTitle()%></option>
                                            <% }%>
                                        </select>
                                    </div>
                                </div>

                                <% List<Employee> employees = (ArrayList<Employee>) request.getAttribute("employeeAll");%>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="selectSm" class=" form-control-label">Employee</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <select name="managerId" id="managerId" class="form-control-sm form-control">
                                            <option value="<%= request.getAttribute("managerid")%>">
                                                <%= request.getAttribute("manager")%> <%= request.getAttribute("managerlastname")%> 
                                            </option>


                                            <option value="<%= request.getAttribute("managerid")%>">----------------</option>


                                            <% for (Employee e : employees) {%>
                                            <option value="<%= e.getFirstName()%> <%= e.getLastName()%>"><%= e.getFirstName()%> <%= e.getLastName()%></option>
                                            <% }%>
                                        </select>
                                    </div>
                                </div>
                                <% List<Department> departments = (ArrayList<Department>) request.getAttribute("departmentAll");%>
                                <div class="row form-group">
                                    <div class="col col-md-3">
                                        <label for="selectSm" class=" form-control-label">Department</label>
                                    </div>
                                    <div class="col-12 col-md-9">
                                        <select name="departmentId" id="departmentId" class="form-control-sm form-control">
                                            <option value="<%= request.getAttribute("departmentid")%>">
                                                <%= request.getAttribute("department")%> 
                                            </option>


                                            <option value="<%= request.getAttribute("departmentid")%>">----------------</option>


                                            <% for (Department d : departments) {%>
                                            <option value="<%= d.getDepartmentId()%>"><%= d.getDepartmentName() %></option>
                                            <% }%>
                                        </select>
                                    </div>
                                </div>
                                <input type="submit" name="submit" value="Edit" class="btn btn-primary btn-sm"/>
                            </form>
                        </div>
                        <div class="card-footer">
                        </div>
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
<!--     END MAIN CONTENT-->

<!-- modal update item -->
<!--<div class="modal fade" id="edit<%%>" tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="smallmodalLabel">Small Modal</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                lorem
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary">Confirm</button>
            </div>
        </div>
    </div>
</div>-->

<!--                        
<script type="text/javascript">
    function openModal() {
        $('#editItem').modal('show');
    }
</script>-->
<!-- end modal update item -->





<jsp:include page="templates/footer.jsp"></jsp:include>