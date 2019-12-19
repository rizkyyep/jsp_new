<%-- 
    Document   : createEmployee
    Created on : Dec 16, 2019, 2:52:12 AM
    Author     : Elsa
--%>

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
                            <h2 class="title-1">Add New Employee</h2>
                        </div>
                    </div>
                </div>
                <div class="row m-t-25">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Employee</strong> Form
                            </div>
                            <div class="card-body card-block">
                                <form action="employeeServlet?action=insert" method="post" class="form-horizontal">                                 
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-password" class=" form-control-label">Employee</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="firstName" name="firstName" placeholder="Enter First Name..." class="form-control">
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="lastName" name="lastName" placeholder="Enter Last Name..." class="form-control">
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="email" name="email" placeholder="Enter Email..." class="form-control">
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="salary" name="salary" placeholder="Enter Salary..." class="form-control">
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="jobId" name="jobId" placeholder="Enter Job..." class="form-control">
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="departmentId" name="departmentId" placeholder="Enter Department..." class="form-control">
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="managerId" name="managerId" placeholder="Enter Manager..." class="form-control">
                                        </div>
                                    </div>
                                    <input type="submit" name="submit" value="Save" class="btn btn-primary btn-sm"/>
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
                            
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END MAIN CONTENT-->


<jsp:include page="templates/footer.jsp"></jsp:include>
