<%-- 
    Document   : footer
    Created on : Dec 18, 2019, 11:45:17 AM
    Author     : Rizky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- ============================================================== -->
<!-- footer -->
<!-- ============================================================== -->
<footer class="footer text-center">
    All Rights Reserved by Matrix-admin. Designed and Developed by <a href="https://wrappixel.com">WrapPixel</a>.
</footer>
<!-- ============================================================== -->
<!-- End footer -->
<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->

<!-- Bootstrap tether Core JavaScript -->
<script src="assets/assets/libs/popper.js/dist/umd/popper.min.js"></script>
<script src="assets/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="assets/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
<script src="assets/assets/extra-libs/sparkline/sparkline.js"></script>
<!--Wave Effects -->
<script src="assets/dist/js/waves.js"></script>
<!--Menu sidebar -->
<script src="assets/dist/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="assets/dist/js/custom.min.js"></script>
<!--This page JavaScript -->
<!-- <script src="../../dist/js/pages/dashboards/dashboard1.js"></script> -->
<!-- Charts js Files -->
<script src="assets/assets/libs/flot/excanvas.js"></script>
<script src="assets/assets/libs/flot/jquery.flot.js"></script>
<script src="assets/assets/libs/flot/jquery.flot.pie.js"></script>
<script src="assets/assets/libs/flot/jquery.flot.time.js"></script>
<script src="assets/assets/libs/flot/jquery.flot.stack.js"></script>
<script src="assets/assets/libs/flot/jquery.flot.crosshair.js"></script>
<script src="assets/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
<script src="assets/dist/js/pages/chart/chart-page-init.js"></script>

<!--datatables js-->


<script type="text/javascript">
    /****************************************
     *       Basic Table                   *
     ****************************************/
//    $('#listItem').DataTable();
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

</body>

</html>
