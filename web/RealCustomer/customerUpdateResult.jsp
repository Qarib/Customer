<%@ page import="da.RealCustomerDA" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="to.RealCustomer" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fa" dir="rtl">
<link rel="stylesheet" href="../design.css" type="text/css">
<head>
    <title>نتیجه ویرایش</title>
</head>
<body>
<table border="1" class="table">
    <tr class="tr">
        <td>شماره مشتری</td>
        <td>نام</td>
        <td> نام خانوادگی </td>
        <td>نام پدر</td>
        <td>تاریخ تولد</td>
        <td>کد ملی</td>
    </tr>

    <%
        RealCustomerDA realCustomerDA = new RealCustomerDA();
        ArrayList<RealCustomer> list = realCustomerDA.UpdateResult( Long.parseLong(request.getParameter("update")));
        RealCustomer realCustomer1 =new RealCustomer();
        realCustomer1.setId( Long.parseLong(request.getParameter("update")));
        for (RealCustomer realCustomer:list){


    %>
    <tr>
        <td><%=realCustomer.getCustomerNumber()%></td>
        <td><%= realCustomer.getName()%></td>
        <td><%=realCustomer.getFamily()%></td>
        <td><%=realCustomer.getFatherName()%></td>
        <td><%=realCustomer.getDateOfBirth()%></td>
        <td><%=realCustomer.getNationalCode()%></td>

    <%
        }
    %>

    <form action="customerUpdate.jsp">
        <tr>
            <td><input type="hidden" name="customerNumber" value="<%=realCustomer1.getCustomerNumber() %>"></td>
            <td><input type="text" name="name"></td>
            <td><input type="text" name="family"></td>
            <td><input type="text" name="fatherName"></td>
            <td><input type="date" name="dateOfBirth"></td>
            <td><input type="text" name="nationalCode"></td>
        </tr>
        <input type="submit" class="update" value="ویرایش">
    </form>
    <a href="searchResult.jsp"><input type="button" class="Button3" value="بازگشت"></a>
</table>

</body>
</html>
