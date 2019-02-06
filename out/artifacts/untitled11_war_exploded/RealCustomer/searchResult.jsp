
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="to.RealCustomer" %>
<%@page import="bl.RealCustomerManeger" %>
<%@ page import="java.util.AbstractList" %>
<%@ page import="da.RealCustomerDA" %>
<%@ page import="java.util.ArrayList" %>
<link rel="stylesheet" href="../design.css" type="text/css">
<html lang="fa" dir="rtl">
<head>
    <title>نتیجه جستجو</title>
</head>
<body class="SearchResult">
<table  border="1" class="table">
    <tr class="tr">
        <td>شماره مشتری</td>
        <td>نام </td>
        <td>نام خانوادگی</td>
        <td>نام پدر</td>
        <td>تاریخ تولد</td>
        <td>شماره ملی</td>
        <td> ویرایش </td>
        <td>حذف مشتری</td>
    </tr>

<%
       RealCustomerDA realCustomerDA = new RealCustomerDA();
       ArrayList <RealCustomer> list = realCustomerDA.select (request.getParameter("customerNumber"),request.getParameter("name"),request.getParameter("family"),request.getParameter("fatherName"),request.getParameter("dateOfBirth"),request.getParameter("nationalCode"));
       for (RealCustomer realCustomer : list){
          %>
    <tr>
        <td><%=realCustomer.getCustomerNumber()%></td>
        <td><%=realCustomer.getName()%></td>
        <td><%=realCustomer.getFamily()%></td>
        <td><%=realCustomer.getFatherName()%></td>
        <td><%=realCustomer.getDateOfBirth()%></td>
        <td><%=realCustomer.getNationalCode()%></td>



        <td>
            <form action="customerUpdateResult.jsp">
            <input type="submit"  class="update" value="ویرایش" >
            <input type="hidden" value="<%=realCustomer.getCustomerNumber()%>" name="update">
        </form>
    </td>

        <td>
            <form action="customerDelete.jsp">
                <input type="submit"  class="delete" value="حذف">
        <input type="hidden" value="<%=realCustomer.getCustomerNumber()%>" name="delete">
        </form>
        </td>

    <%

       }
%>
    </tr>
        <a href="customerSearch.jsp"><input type="submit" class="Button3" value="بازگشت"></a>
</table>
</body>
</html>
