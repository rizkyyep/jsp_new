<%-- 
    Document   : newjsp
    Created on : Dec 16, 2019, 2:42:30 PM
    Author     : Rizky
--%>
<%@page import="models.Employee"%>
<%@page import="models.Department"%>
<%@page import="models.Job"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Country"%>
<%@page import="java.util.List"%>

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
                <option value="<%= request.getAttribute("jobid")%>">
                    <%= request.getAttribute("job")%> 
                </option>


                <option value="<%= request.getAttribute("jobid")%>">----------------</option>


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
                <option value="<%= d.getDepartmentId()%>"><%= d.getDepartmentName()%></option>
                <% }%>
            </select>
        </div>
    </div>
    <center>
        <button class="btn btn-primary" type="submit" name="submit"><i class="fas fa-save"></i> Save</button>
        
        <a href="employeeServlet?action=list" class="btn btn-secondary" data-dismiss="modal">Cancel</a>
    </center>
</form>