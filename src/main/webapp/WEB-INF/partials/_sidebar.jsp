<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href='<c:url value="/"/>'>
                <i class="ti-home menu-icon"></i>
                <span class="menu-title">Home</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#transaction-basic" aria-expanded="false"
               aria-controls="transaction-basic">
                <i class="ti-shopping-cart menu-icon"></i>
                <span class="menu-title">Transakcje</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="transaction-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href='<c:url value="/history"/>'>Lista transakcji</a></li>
                    <li class="nav-item"><a class="nav-link" href='<c:url value="/add-income"/>'>Dodaj przychód</a></li>
                    <li class="nav-item"><a class="nav-link" href='<c:url value="/add-outcome"/>'>Dodaj rachunek</a>
                    </li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#graph-basic" aria-expanded="false"
               aria-controls="graph-basic">
                <i class="ti-bar-chart-alt menu-icon"></i>
                <span class="menu-title">Wykresy</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="graph-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href='<c:url value=""/>'>Coś tu będzie</a></li>
                    <li class="nav-item"><a class="nav-link" href='<c:url value=""/>'>Coś tu będzie</a></li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#management-basic" aria-expanded="false"
               aria-controls="management-basic">
                <i class="ti-panel menu-icon"></i>
                <span class="menu-title">Zarządzanie</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="management-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href='<c:url value="/households"/>'>Lista gospodarstw</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href='<c:url value="/chargers"/>'>Lista dostawców</a></li>
                    <li class="nav-item"><a class="nav-link" href='<c:url value="/persons"/>'>Lista użytkowników</a>
                    </li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" href='<c:url value="/editPerson/${param.id}"/>' >
                <i class="ti-settings menu-icon"></i>
                <span class="menu-title">Ustawienia kontem</span>
            </a>
        </li>

<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" data-bs-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">--%>
<%--                <i class="ti-user menu-icon"></i>--%>
<%--                <span class="menu-title">User Pages</span>--%>
<%--                <i class="menu-arrow"></i>--%>
<%--            </a>--%>
<%--            <div class="collapse" id="auth">--%>
<%--                <ul class="nav flex-column sub-menu">--%>
<%--                    <li class="nav-item"> <a class="nav-link" href="../samples/login.html"> Login </a></li>--%>
<%--                    <li class="nav-item"> <a class="nav-link" href="../samples/login-2.html"> Login 2 </a></li>--%>
<%--                    <li class="nav-item"> <a class="nav-link" href="../samples/register.html"> Register </a></li>--%>
<%--                    <li class="nav-item"> <a class="nav-link" href="../samples/register-2.html"> Register 2 </a></li>--%>
<%--                    <li class="nav-item"> <a class="nav-link" href="../samples/lock-screen.html"> Lockscreen </a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </li>--%>

    </ul>
</nav>