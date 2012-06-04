<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">
$(document).ready(function(){
	$('#loginForm_account_groupFlg').attr('value', true);
});



$(function(){
  $("#changePassword").click(function(){
    $.getJSON("AJAX_changePassword.action",{newPassword: $('#newPassword').val(), ajax: 'true'}, function(data){
     	$('#linkChangePassword').css('display', 'inline');
    	$('#spanChangePassword').css('display', 'none');
    });
  });
});


function displayChangePassword() {
	$('#spanChangePassword').css('display', 'inline');
	$('#linkChangePassword').css('display', 'none');
}
function hideChangePassword() {
	$('#linkChangePassword').css('display', 'inline');
	$('#spanChangePassword').css('display', 'none');
}


function showGroup(flg) {
	if(flg) {

		$('#loginForm_account_groupFlg').attr('value', true);
		
		$('#typeGroup').css('display', 'inline');
		$('#typePerson').css('display', 'none');
	} else {
		$('#loginForm_account_groupFlg').attr('value', false);

		$('#typePerson').css('display', 'inline');
		$('#typeGroup').css('display', 'none');
	}
}

</script>

    <div id="header" role="banner">
      <div id="topnav" role="contentinfo">
      
<s:if test="%{loginFailedFlag}">
<font color="red"><strong><s:actionerror/></strong></font>
</s:if>
      
      
          <s:if test="%{#session.accountSession==null}">
           <s:form id="loginForm" theme="simple" action="Login_login">
           
           <s:hidden name="account.groupFlg"/>

      <span id="typePerson" style="display:none"><s:a href="#" theme="simple" onclick="showGroup(true)">Show Group?</s:a>
       Name:<s:textfield theme="simple" name="account.name" cssClass="required"/></span>
       
      <span id="typeGroup"><s:a href="#" theme="simple" onclick="showGroup(false)">Show Person?</s:a>
      Group:<s:select id="typeGroup" theme="simple" name="account.id" headerKey="0" list="groupAccountList" listKey="id" listValue="name"/></span>
      
           <s:password id="groupPassword" name="account.password" theme="simple" cssClass="required"/>
           <s:submit id="loginFormLogin" cssClass="submit" theme="simple" key="common.button.login" name="loginButton"/>
           </s:form>
          </s:if>
          <s:else>
          
<span id="linkChangePassword">
  <strong><s:text name="common.header.rightNavigation.welcome"/><s:property value="#session.accountSession.displayName"/></strong>
  <s:url id="loginLogout" value="Login_logout.action"/>
  <s:a href="%{loginLogout}"><s:text name="common.header.rightNavigation.logout"/></s:a>
  | <s:a href="#" theme="simple" onclick="displayChangePassword()"><s:text name="common.header.rightNavigation.changePassword"/></s:a>
</span>
            
<span id="spanChangePassword" style="display:none">
  <s:text name="common.label.newPassword"/>
  <sup title="<s:text name='common.label.mandatory'/>"><s:text name="common.label.star"/></sup>
  <s:textfield id="newPassword" name="newPassword" theme="simple" cssClass="required"/>
  <s:a href="#" id="changePassword" onclick="displayChangePassword()"><s:text name="common.buttion.submit"/></s:a>
  <s:a href="#" id="cancelChangePassword" onclick="hideChangePassword()"><s:text name="common.button.cancel"/></s:a>
</span>
          </s:else>

             </div>

      <h1><strong>
         <a href="html/ReleaseNotes.2.0.html" title="<s:text name='common.brand.hint'/>" target="_blank">
          <s:text name="common.brand.name"/>
         </a>
      </strong></h1>
      <span><s:text name="common.brand.description"/></span>
    </div>
    <div id="nav" role="navigation">
      <div class="hlist">
        <!-- main navigation: #nav_main -->
        <ul>
      <s:set name="headerID"><%= request.getParameter("headerID") %></s:set>
      <s:if test="#headerID==0">
          <li class="active"><strong><s:text name="common.header.navigation.bar0"/></strong></li>
      </s:if>
      <s:else>
          <s:url id="linkListList" value="LinkList_list.action"/>
          <li><s:a href="%{linkListList}"><s:text name="common.header.navigation.bar0"/></s:a></li>
      </s:else>
      
      <s:if test="#headerID==1">
          <li class="active"><strong><s:text name="common.header.navigation.bar1"/></strong></li>
      </s:if>
      <s:else>
          <s:url id="linkListList" value="LinkList_list.action"/>
          <li><s:a href="%{linkListList}"><s:text name="common.header.navigation.bar1"/></s:a></li>
      </s:else>
      
      <s:if test="#headerID==2">
          <li class="active"><strong><s:text name="common.header.navigation.bar2"/></strong></li>
      </s:if>
      <s:else>
          <s:url id="linkListList" value="LinkList_list.action"/>
          <li><s:a href="%{linkListList}"><s:text name="common.header.navigation.bar2"/></s:a></li>
      </s:else>
      
      <s:if test="#headerID==3">
          <li class="active"><strong><s:text name="common.header.navigation.bar3"/></strong></li>
      </s:if>
      <s:else>
          <s:url id="linkListList" value="LinkList_list.action"/>
          <li><s:a href="%{linkListList}"><s:text name="common.header.navigation.bar3"/></s:a></li>
      </s:else>
      
      <s:if test="#headerID==4">
          <li class="active"><strong><s:text name="common.header.navigation.bar4"/></strong></li>
      </s:if>
      <s:else>
          <s:url id="linkListList" value="LinkList_list.action"/>
          <li><s:a href="%{linkListList}"><s:text name="common.header.navigation.bar4"/></s:a></li>
      </s:else>
      
      <s:if test="#headerID==5">
          <li class="active"><strong><s:text name="common.header.navigation.bar5"/></strong></li>
      </s:if>
      <s:else>
          <s:url id="linkListList" value="LinkList_list.action"/>
          <li><s:a href="%{linkListList}"><s:text name="common.header.navigation.bar5"/></s:a></li>
      </s:else>
      
      <s:if test="#headerID==6">
          <li class="active"><strong><s:text name="common.header.navigation.bar6"/></strong></li>
      </s:if>
      <s:else>
          <s:url id="linkListList" value="LinkList_list.action"/>
          <li><s:a href="%{linkListList}"><s:text name="common.header.navigation.bar6"/></s:a></li>
      </s:else>
      
      <s:if test="#headerID==7">
          <li class="active"><strong><s:text name="common.header.navigation.bar7"/></strong></li>
      </s:if>
      <s:else>
          <s:url id="linkListList" value="LinkList_list.action"/>
          <li><s:a href="%{linkListList}"><s:text name="common.header.navigation.bar7"/></s:a></li>
      </s:else>

        </ul>
      </div>
    </div>
