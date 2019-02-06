<%@ page import="legal.LegalCustomerCRUD" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="legal.LegalCustomer" %><%--
  Created by IntelliJ IDEA.
  User: hamid
  Date: 1/9/2019
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fa" dir="rtl">
<link rel="stylesheet" href="../design.css" type="text/css">
<head>
    <title>ویرایش اطلاعات مشتری</title>
</head>
<body>
<table border="1" class="table">
    <tr class="tr">
        <td>شماره مشتری</td>
        <td>نام شرکت</td>
        <td>تاریخ ثبت شرکت</td>
        <td>کد اقتصادی</td>
    </tr>
    <%
        LegalCustomerCRUD legalCustomerCRUD = new LegalCustomerCRUD();
        ArrayList<LegalCustomer> list = legalCustomerCRUD.selectForUpdate(Integer.parseInt(request.getParameter("update")));
        LegalCustomer legalCustomer = new LegalCustomer();
        legalCustomer.setCustomerNumber(Integer.parseInt(request.getParameter("update")));
        for (LegalCustomer legalCustomer1 : list){

    %>
    <tr>
        <td><%=legalCustomer1.getCustomerNumber()%></td>
        <td><%=legalCustomer1.getCompanyName()%></td>
        <td><%=legalCustomer1.getCompanyRegistrationDate()%></td>
        <td><%=legalCustomer1.getEconomicalNumber()%></td>
    </tr>
    <%
        }
    %>
    <form action="customerUpdate.jsp">
        <tr>
            <td><input type="hidden" name="customerNumber" value="<%=legalCustomer.getCustomerNumber()%>" ></td>
            <td><input type="text" name="companyName"></td>
            <td><input type="date" name="companyRegistrationDate"></td>
            <td><input type="text" name="economicalNumber"></td>
        </tr>
        <input type="submit" class="update" value="ویرایش">
    </form>
    <a href="searchResult.jsp"><input type="button"class="Button3" value="بازگشت"></a>
</table>

</body>
</html>
