
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../design.css" type="text/css">
<html lang="fa" dir="rtl">
<head>
    <title>جستجوی مشتری حقوقی</title>
</head>
<h4 class="center-pill">عملیات جستجوی مشتری حقیقی</h4>
<body class="Search">
<form action="searchResult.jsp">
    <div class="table-cell2">
    شماره مشتری
        <br/>
        <input type="text" name="customerNumber">
    <br/>
    نام شرکت
        <br/>
        <input type="text" name="companyName">
    <br/>
    تاریخ ثبت شرکت
        <br/>
        <input type="text" name="companyRegistrationDate">
        <br/>
        کد اقتصادی
    <br/>
    <input type="text" name="economicalNumber">
        <br/>
    <input type="submit" value="جستجو">

    </div>
</form>

<a href="legalCustomerOperations.jsp"><input type="button"  class="Button3" value="بازگشت"></a>

</body>
</html>
