<%@ page import="legal.LegalCustomer" %>
<%@ page import="legal.LegalCustomerManeger" %><%--
  Created by IntelliJ IDEA.
  User: hamid
  Date: 1/9/2019
  Time: 6:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fa" dir="rtl">
<head>
    <title>نتیجه ثبت مشتری حقوقی</title>
    <link rel="stylesheet" href="../design.css" type="text/css">
</head>
<body class="RejisterResult">
<%
    LegalCustomer legalCustomer=new LegalCustomer();
    legalCustomer.setCompanyName(request.getParameter("companyName"));
    legalCustomer.setCompanyRegistrationDate(request.getParameter("registrationDate"));
    legalCustomer.setEconomicalNumber(request.getParameter("economicalNumber"));
    LegalCustomerManeger legalCustomerManeger=new LegalCustomerManeger();
    legalCustomerManeger.legal(legalCustomer);
    out.print("مشتری حقوقی با موفقیت ثبت شد");
%>
<a href="legalCustomerOperations.jsp"><input type="button" class="Button3" value="بازگشت"></a>

</body>
</html>
