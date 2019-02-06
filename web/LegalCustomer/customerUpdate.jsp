<%@ page import="legal.LegalCustomer" %>
<%@ page import="legal.LegalCustomerCRUD" %><%--
  Created by IntelliJ IDEA.
  User: hamid
  Date: 1/10/2019
  Time: 12:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fa" dir="rtl">
<link rel="stylesheet" href="../design.css" type="text/css">
<head>
    <title>نتیجه ویرایش</title>
</head>
<body class="update1">
<%
    LegalCustomer legalCustomer = new LegalCustomer();
    LegalCustomerCRUD legalCustomerCRUD = new LegalCustomerCRUD();
    if (request.getParameter("companyName") !=null || !request.getParameter("companyName").equals("") || request.getParameter("companyRegistrationDate")!=null || !request.getParameter("companyRegistrationDate").equals("") || request.getParameter("economicalNumber") !=null || !request.getParameter("economicalNumber").equals("")) {
        legalCustomer.setCompanyName(request.getParameter("companyName"));
        legalCustomer.setCompanyRegistrationDate(request.getParameter("companyRegistrationDate"));
        legalCustomer.setEconomicalNumber(request.getParameter("economicalNumber"));
    }


    legalCustomerCRUD.Update(Integer.parseInt(request.getParameter("customerNumber")),legalCustomer);
%>
<a href="searchResult.jsp"><input type="button" class="Button3" value="بازگشت"></a>
<%
    out.print("ویرایش مشتری با شماره"+ legalCustomer.getCustomerNumber()+"با موفقیت انجام شد");
%>
</body>
</html>
