<%-- 
    Document   : mainView
    Created on : 11 Des 19, 14:20:14
    Author     : ASUS
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
                            <h2 class="title-1">Home</h2>
                        </div>
                    </div>
                </div>
                <div class="row m-t-25">
                    <div class="col-12">
                        <div class="overview-item overview-item--c4">
                            <div class="overview__inner">
                                <div class="overview-box clearfix">
                                    <div class="text">
                                        <h2>Hello</h2>
                                        <span>This is your index</span>
                                    </div>
                                </div>
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
    <!-- END MAIN CONTENT-->


<jsp:include page="templates/footer.jsp"></jsp:include>
