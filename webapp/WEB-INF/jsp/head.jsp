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
                <a class="navbar-brand " href="#">Bookfriend</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-success">搜索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${user==null}">
                        <li><a href="/toLogin">登录</a></li>
                    </c:if>
                    <c:if test="${user!=null}">
                        <%--书籍管理--%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">书籍管理 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/toAddBook">发布书籍</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="/book/list">在售书籍</a></li>
                            </ul>
                        </li>
                        <%--订单管理--%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">订单 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/user/list-buy">我买的</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="/user/list-sell">我卖的</a></li>
                            </ul>
                        </li>
                        <%--个人中心--%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人中心 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/user/userInfo">用户个人信息</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="/user/exit">退出</a></li>
                            </ul>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div><!-- /.container-fluid -->
    </nav>
</div>