<%-- 
    Document   : createRegion
    Created on : 11 Des 19, 16:38:58
    Author     : ASUS
--%>

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
                            <h2 class="title-1">Detail Data</h2>
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
                                <form>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">ID</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("id")%>" id="id" name="id" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">First Name</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("firstName")%>" id="firstName" name="firstName" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">Last Name</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("lastName")%>" id="lastName" name="lastName" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">Email</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("email")%>" id="email" name="email" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">Hire Date</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("hireDate")%>" id="hireDate" name="hireDate" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">Phone Number</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("phoneNumber")%>" id="phoneNumber" name="phoneNumber" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">Commission</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("commision")%>" id="commision" name="commision" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">Salary</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("salary")%>" id="salary" name="salary" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">Job</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("job")%>" id="job" name="job" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">Manager</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("manager")%>" id="manager" name="manager" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                     <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="hf-email" class=" form-control-label">Department</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" value="<%= request.getAttribute("department")%>" id="department" name="department" placeholder="" class="form-control" readonly>
                                    </div>
                                </div>
                                    
                                 <a href="employeeServlet?action=list" class="btn btn-primary btn-sm" data-dismiss="modal">Back
                                 
                                 </a>
                                
                                <a href="<%= request.getAttribute("id") %>" class="view_data" 
                                      data-toggle="modal" id="<%=  request.getAttribute("id") %>" data-target="#editModal">
                                       <input type="submit" name="submit" value="Edit"  class="btn btn-primary btn-sm"/>
                                    </a>
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



<jsp:include page="templates/footer.jsp"></jsp:include>