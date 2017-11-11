<%-- 
    Document   : middle-right
    Created on : 20 Jun, 2012, 9:29:19 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="middle-right">
                   <!--<div style="width:400px;height:300px;-webkit-border-radius: 20px;-moz-border-radius: 20px;border-radius: 20px;background-color:#E3A20B;">-->
<!--<div style="width:400px;height:300px;-webkit-border-radius: 20px;-moz-border-radius: 20px;border-radius: 20px;background:rgba(227,162,11,0.3);">-->
  <!--<h3>Register For Free And Start Playing Rummy</h3>-->
  <BR>
<!--  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.ni</p>-->

 <s:form action="actionRegister">
      
     <s:textfield name="username" size="28" maxlength="45" value="" placeholder="User Name" id="username"  required="true"/>
          
    <s:password name="password" size="28" maxlength="45" value="" id="password" placeholder="Password" required="true"/>
          
          <s:textfield name="email" size="28" maxlength="45" value="" id="email" placeholder="E-mail" required="true"/>
          
          <s:select name="gender"  value=""  required="true" list="{'gender:','Male','Female'}" />
          <s:select name="state"  value=""  required="true" list=
"{'State:','Andaman and Nicobar Islands','Andhra Pradesh','Arunachal Pradesh','Assam','Bihar','Chandigarh','Chhattisgarh','Dadra and Nagar Haveli','Daman and Diu','Goa','Gujarat','Haryana','Himachal Pradesh','Jammu and Kashmir','Jharkhand','Karnataka','Kerala','Lakshadweep','Madhya Pradesh','Maharashtra','Manipur','Meghalaya','Mizoram','Nagaland','Orissa','Pondicherry','Punjab','Rajasthan','Sikkim','Tamil Nadu','Tripura','Uttar Pradesh','Uttarakhand','Mayank','West Bengal'}"/>
           <s:textfield name="mobile" size="28" maxlength="45" value="" id="mobile" placeholder="Mobile Number" required="true"/>
          
          <sj:datepicker id="dob" name="dob" placeholder="Date of Birth(YYYY-MM-DD)"  size="28" displayFormat="yy-mm-dd" required="true"/>
      
      <s:checkbox name="checkme" fieldValue="true" label="I agreed to terms and condition"/>
      <s:submit cssClass="minimal" value="Join To Play"></s:submit>
      </s:form>

</div>
      <!-- </div>-->
           <!--</div>-->
    </body>
</html>

