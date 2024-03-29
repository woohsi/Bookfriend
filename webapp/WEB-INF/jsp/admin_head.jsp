<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand " href="/admin_index">后台审核系统</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/index">首页</a></li>
                    <c:if test="${admin.aid==null}">
                        <li><a href="/toAdminLogin">登录</a></li>
                    </c:if>

                    <c:if test="${admin.aid!=null}">

                        <%--书籍审核--%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">书籍审核 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/book/check">查看待审书籍</a></li>
                            </ul>
                        </li>


                        <%--管理员--%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">管理员 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/admin/exit">退出</a></li>
                            </ul>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div><!-- /.container-fluid -->
    </nav>
</div>