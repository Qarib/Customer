
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fa" dir="rtl">
<head>
    <title>جستجوی مشتری</title>
    <link rel="stylesheet" href="../design.css" type="text/css">
</head>
<h4 class="center-pill">عملیات جستجوی مشتری حقیقی</h4>
<body class="Search">
<form action="searchResult.jsp">
    <div class="table-cell2">
<table>


          شماره مشتری
    <br/>
    <input class="name-cell" type="text" name="customerNumber">

    <br/>
         نام
    <br/>
    <input type="text" name="name">
    <br/>

        نام خانوادگی
    <br/>
    <input type="text" name="family">
<br/>
         نام پدر
    <br/>
    <input type="text" name="fatherName">
    <br/>
     تاریخ تولد
    <br/>
    <input type="text" name="dateOfBirth">
    <br/>
     کد ملی
    <br/>
    <input type="text" name="nationalCode">
    <br/>
    <input class="search" type="submit" value="جستجو">

</table>
    </div>
</form>


<a href="realCustomerService.jsp"><input class="Button3" type="button" value="بازگشت"></a>
</body>
</html>
