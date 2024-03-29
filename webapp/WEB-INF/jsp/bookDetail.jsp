<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍详情</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/all.min.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
</head>

<body>
<%@include file="head.jsp"%>

<form action="/order/save" method="post">
    <div class="big-book-item">
        <div class="book-img"  >
            <img src="/images/${book.bkimg!=null?book.bkimg:"default_book.png"}">
        </div>
        <div class="book-detail">
            <div>书名：${book.bkname}</div>
            <div>价格：${book.bkprice}</div>
            <div>卖家ID：${book.uid}</div>
            <p>描述：${book.bkdescription}</p>
            <div>售卖状态：${book.status==0?"未售出":"已售出"}</div>
            <div>上架状态：${book.onsell==0?"待审核":"已上架"}</div>
            <input type="hidden" name="bkid" value="${book.bkid}"/>

            <input name="suid" type="hidden" value="${book.uid}"/>
            <div>${book.status==0?"<input class=\"btn btn-success btn-md\" type=\"submit\" value=\"购买\"/>":""}
                <a href="/message/chat?toUser=${book.uid}"><i class="fas fa-sms" style="color: #168539; margin-top: 10px; margin-left: 10px;">联系卖家</i></a>
            </div>
        </div>
    </div>
</form>
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
</body>
</html>
