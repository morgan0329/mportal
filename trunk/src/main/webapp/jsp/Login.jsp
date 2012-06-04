<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<s:include value="headerA0.jsp">
  <s:param name="title"><s:text name="linkList.title"/></s:param>
</s:include>

<body>
<!-- skip link navigation -->
<ul id="skiplinks">
          <li><a class="skip" href="#nav">Skip to navigation (Press Enter).</a></li>
          <li><a class="skip" href="#col3">Skip to main content (Press Enter).</a></li>
</ul>

<div class="page_margins">
  <div class="page">


  <s:include value="headerB0.jsp">
    <s:param name="headerID">0</s:param>
  </s:include>

    <!-- begin: main content area #main -->
    <div id="main">
      <!-- begin: #col1 - first float column -->
      <div id="col1" role="complementary">
        <div id="col1_content" class="clearfix">
        </div>
      </div>
      <!-- end: #col1 -->
      <!-- begin: #col3 static column -->
      <div id="col3" role="main">
        <div id="col3_content" class="clearfix">
		
<font color="red"><strong><s:actionerror/></strong></font>

    <s:form id="loginForm" theme="simple" action="Login_login" cssClass="yform" validate="true">
    <fieldset>
    <legend><s:text name="loginForm.legend"/></legend>
    <div class="type-text">
      <label for="Login_login_name">
        <s:text name="common.login.name"/>
        <sup title="<s:text name='common.label.mandatory'/>"><s:text name="common.label.star"/></sup>
      </label>
      <s:textfield theme="simple" name="account.name" cssClass="required"/>
    </div>
      
    <div class="type-text">
      <label for="Login_login_password">
        <s:text name="common.login.password"/>
        <sup title="<s:text name='common.label.mandatory'/>"><s:text name="common.label.star"/></sup>
      </label>
      <s:password theme="simple" name="account.password" cssClass="required"/>
    </div>
    
    <div class="type-check">
      <s:checkbox theme="simple" name="autoLoginFlag" value="true"></s:checkbox>
      <label for="Login_login_autoLoginFlag"><s:text name="common.login.autoLogin"/></label>
    </div>

    
    </fieldset>
    <div class="type-button">
      <s:submit id="loginFormLogin" cssClass="submit" theme="simple" key="common.button.login" name="loginButton"/>
    </div>
    </s:form>

        </div>
        <!-- IE Column Clearing -->
        <div id="ie_clearing">&nbsp;</div>
        <!-- End: IE Column Clearing -->
      </div>
      <!-- end: #col3 -->
    </div>
    <!-- end: #main -->
    <!-- begin: #footer -->
    <div id="footer" role="contentinfo">Footer with copyright notice and status information<br />
Layout based on <a href="http://www.yaml.de/">YAML</a></div>
    <!-- end: #footer -->
  </div>
</div>
<!-- full skiplink functionality in webkit browsers -->
<script src="../../yaml/core/js/yaml-focusfix.js" type="text/javascript"></script>
</body>
</html>
