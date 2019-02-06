<%--
  Created by IntelliJ IDEA.
  User: hamid
  Date: 1/9/2019
  Time: 6:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fa" dir="rtl">
<head>
    <title>ثبت مشتری حقوقی</title>
    <link rel="stylesheet" href="../design.css" type="text/css">
    <script>
        function test(){
           str1 = document.forms ["myform"]["companyName"].value;
            str2= document.forms ["myform"]["registrationDate"].value;
            str3= document.forms ["myform"]["economicalNumber"].value;

            if (str1 ==null ||str1===""|| str2 ==null || str2==="" || str3 ==null || str3==="") {
                alert("لطفا فیلدها را با دقت پر کنید");
            }
                return true;

        }
    </script>

</head>
<body >
<h4 class="center-pill">عملیات ثبت مشتری حقیقی</h4>
<a href="legalCustomerOperations.jsp"><input type="button" class="Button3" value="بازگشت"></a>

<form  action="registrationResult.jsp" name="myform" method="post" onsubmit=" return test(this);">
    <div class="table-cell2">
        <table >
     نام شرکت
    <br/>
   <input type="text"  name="companyName">
<br/>

    تاریخ ثبت شرکت
    <br/>
    <input type="date"  name="registrationDate">
<br/>
     کد اقتصادی شرکت
    <br/>
    <input type="text"  name="economicalNumber">
<br/>
        </table>
    </div>

        <input type="submit" class="rejister" value="ثبت" >

    </form>


</body>
</html>
