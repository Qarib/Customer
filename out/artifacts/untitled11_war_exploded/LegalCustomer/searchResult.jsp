<%@ page import="legal.LegalCustomerCRUD" %>
<%@ page import="java.util.AbstractList" %>
<%@ page import="legal.LegalCustomer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: hamid
  Date: 1/9/2019
  Time: 9:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fa" dir="rtl">
<head>
    <title>نتیجه جستجوی مشتری حقوقی</title>
    <link rel="stylesheet" href="../design.css" type="text/css">
</head>
<body class="SearchResult">

<table class="table" border="1">
    <tr class="tr">
        <td>شماره مشتری</td>
        <td>نام شرکت</td>
        <td>تاریخ ثبت شرکت</td>
        <td>کد اقتصادی</td>
        <td>ویرایش</td>
        <td>حذف</td>

    </tr>
    <%
        LegalCustomerCRUD legalCustomerCRUD = new LegalCustomerCRUD();
        ArrayList <LegalCustomer> list = legalCustomerCRUD.select(request.getParameter("customerNumber"), request.getParameter("companyName"), request.getParameter("companyRegistrationDate"), request.getParameter("economicalNumber"));
        for (LegalCustomer legalCustomer : list){
    %>
    <tr>
        <td><%=legalCustomer.getCustomerNumber() %></td>
        <td><%=legalCustomer.getCompanyName()%></td>
        <td><%=legalCustomer.getCompanyRegistrationDate()%></td>
        <td><%=legalCustomer.getEconomicalNumber()%></td>


    <td>
        <form action="selectForUpdate.jsp">
            <input type="submit" class="update" value="ویرایش">
            <input type="hidden" value="<%=legalCustomer.getCustomerNumber()%>" name="update">
        </form>
    </td>

    <td>
        <form action="customerDelete.jsp">
            <input type="submit" class="delete" value="حذف">
            <input type="hidden"  value="<%=legalCustomer.getCustomerNumber()%>" name="delete">
        </form>
    </td>

    <%
        }
    %>
    </tr>
    <a href="customerSearch.jsp"><input type="button" class="Button3" value="بازگشت"></a>
</table>

</body>
</html>
