
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="to.RealCustomer"%>
<%@page import="bl.RealCustomerManeger" %>
<%@page import="da.RealCustomerDA" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<html lang="fa" dir="rtl">
<link rel="stylesheet" href="../design.css" type="text/css">
<head>
    <title> ویرایش اطلاعات مشتری</title>
</head>
<body class="update1">

<%
    RealCustomer personTo = new RealCustomer();
    RealCustomerDA personDA = new RealCustomerDA();
    if (request.getParameter("name")!=null || !request.getParameter("name").equals("") || request.getParameter("family")!=null || !request.getParameter("family").equals("")|| request.getParameter("fatherName")!=null || !request.getParameter("fatherName").equals("") || request.getParameter("dateOfBirth")!=null || !request.getParameter("dateOfBirth").equals("") || request.getParameter("nationalCode")!=null || !request.getParameter("nationalCode").equals("")) {
        personTo.setName(request.getParameter("name"));
        personTo.setFamily(request.getParameter("family"));
        personTo.setFatherName(request.getParameter("fatherName"));
        personTo.setDateOfBirth(request.getParameter("dateOfBirth"));


        personTo.setNationalCode(request.getParameter("nationalCode"));

    }
        personDA.Update(Long.parseLong(request.getParameter("customerNumber")), personTo);




%>
<a href="customerSearch"><input type="button"class="Button3" value="بازگشت"></a>
<%
 out.print("ویرایش با موفقیت انجام شد");
%>


</body>
</html>
