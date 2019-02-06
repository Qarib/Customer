
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="to.RealCustomer" %>
<%@ page import="bl.RealCustomerManeger" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.io.RandomAccessFile" %>
<html>
<head>
    <title>نتیجه ثبت مشتری </title>
</head>
<body>
<%
    RealCustomer realCustomer =new RealCustomer();
    realCustomer.setName(request.getParameter("name"));
    realCustomer.setFamily(request.getParameter("family"));
    realCustomer.setFatherName(request.getParameter("fatherName"));
    realCustomer.setDateOfBirth(request.getParameter("dateOfBirth"));
    realCustomer.setNationalCode(request.getParameter("nationalCode"));
    RealCustomerManeger realCustomerManeger=new RealCustomerManeger();
    realCustomerManeger.rgisterPerson(realCustomer);
    out.print("مشتری حقیقی با موفقیت ثبت شد");


%>
<a href="realCustomerService.jsp"><input type="button" value="بازگشت"></a>
</body>
</html>
