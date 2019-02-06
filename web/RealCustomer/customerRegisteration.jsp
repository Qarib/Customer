<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fa" dir="rtl" >
<head>
    <title>ثبت مشتری حقیقی</title>
    <link rel="stylesheet" href="../design.css" type="text/css">
    <script>
        function test() {
            var a =document.forms ["myform"]["name"].value;
            var b = document.forms["myform"]["family"].value;
            var c = document.forms["myform"]["fatherName"].value;
            var d = document.forms["myform"]["dateOfBirth"].value;
            var f = document.forms["myform"]["nationalCode"].value;
            if (a == null || a==="" || b==null || b==="" || c==null || c==="" || d==null || d ==="" || f==null || f===""){
                alert("لطفا فیلدها را با دقت پر کنید");
            }
            return true;
        }
    </script>
</head>
<body >
<h4 class="center-pill">عملیات ثبت مشتری حقیقی </h4>

<form action="registerationResult.jsp" name="myform" method="post" onsubmit="return test(this);">
    <div class="table-cell2">
<table >
    نام
<br/>
    <input class="name-cell" type="text" name="name">
    <br/>
    نام خانوادگی
    <br/>
    <input class="name-cell" type="text" name="family">
    <br/>
    نام پدر
<br/>
    <input class="name-cell" type="text" name="fatherName">
    <br/>
    تاریخ تولد
<br/>
    <input class="name-cell" type="date" name="dateOfBirth">
    <br/>
    شماره ملی
    <br/>
    <input class="name-cell" type="text" name="nationalCode">
<br/>

</table>
    </div>

    <input type="submit" value="ثبت" class="rejister"  >

</form>


<a href="realCustomerService.jsp"><input  type="button" class="Button3" value="بازگشت"></a>
</body>
</html>