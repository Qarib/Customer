<%@ page import="legal.LegalCustomerCRUD" %><%--
  Created by IntelliJ IDEA.
  User: hamid
  Date: 1/10/2019
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="fa" dir="rtl">
<link rel="stylesheet" href="../design.css" type="text/css">
<head>
    <title>حذف مشتری</title>
</head>
<body class="Del">
<%
    LegalCustomerCRUD legalCustomerCRUD = new LegalCustomerCRUD();
    legalCustomerCRUD.Delete(Integer.parseInt(request.getParameter("delete")));
    out.print("مشتری با موفقیت حذف شد");
%>
<a href="searchResult.jsp"><input type="button"  class="Button3" value="بازگشت"></a>

</body>
</html>
