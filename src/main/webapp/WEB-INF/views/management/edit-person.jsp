<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pl">
<%@include file="../../partials/_headTag.jspf" %>
<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.jspf -->
    <%@include file="../../partials/_navbar.jspf" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.jspf -->
        <%@include file="../../partials/_sidebar.jspf" %>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="display-3">Użytkownik</h4>
                                <p class="card-description">
                                    <!--  ja tym bardziej -->
                                </p>
                                <form method="post" id="charger-data"
                                      action='<c:url value="/editPerson/${person.id}"/>'>
                                    <div class="form-group">
                                        <label for="firstName">Imię</label>
                                        <input class="form-control" type="text"
                                               id="firstName"
                                               name="firstName"
                                               value="${person.firstName}"
                                        >
                                    </div>
                                    <div class="form-group">
                                        <label for="lastName">Nazwisko</label>
                                        <input class="form-control" type="text"
                                               id="lastName"
                                               name="lastName"
                                               value="${person.lastName}"
                                        >
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input class="form-control" type="text"
                                               id="email"
                                               name="email"
                                               value="${person.email}"
                                        >
                                    </div>
                                    <div class="form-group">
                                        <label for="userName">Username</label>
                                        <input class="form-control" type="text"
                                               id="userName"
                                               name="userName"
                                               value="${person.userName}"
                                        >
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Hasło</label>
                                        <input class="form-control" type="text"
                                               id="password"
                                               name="password"
                                               value="${person.password}"
                                        >
                                    </div>
                                    <div class="form-group">
                                        <label for="personType">Uprawnienia</label>
                                        <input class="form-control" type="text"
                                               id="personType"
                                               name="personType"
                                               value="${person.personType}"
                                        >
                                    </div>

                                    <button type="submit" form="charger-data" class="btn btn-primary me-2">Zapisz
                                    </button>
                                    <input type="hidden"
                                           name="${_csrf.parameterName}"
                                           value="${_csrf.token}"/>
                                    <a class="btn btn-light" href='<c:url value="/persons"/>' role="button">Anuluj</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:../../partials/_footer.jspf -->
            <%@include file="../../partials/_footer.jspf" %>
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->

<!-- plugins:js -->
<script src="../../../resources/vendors/base/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<script src="../../../resources/vendors/chart.js/Chart.min.js"></script>
<script src="../../../resources/js/jquery.cookie.js" type="text/javascript"></script>
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="../../../resources/js/off-canvas.js"></script>
<script src="../../../resources/js/hoverable-collapse.js"></script>
<script src="../../../resources/js/template.js"></script>
<script src="../../../resources/js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="../../../resources/js/dashboard.js"></script>
<!-- End custom js for this page-->
</body>

</html>

