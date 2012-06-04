<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<s:include value="headerA0.jsp">
  <s:param name="title"><s:text name="linkList.title"/></s:param>
</s:include>

<body>
<script type="text/javascript">
$(document).ready(function(){
	$('#addLinkForm').validate();
});

$(function(){
	$("a").click(function(){
     $.getJSON("AJAX_updateNumClick.action",{linkId: $(this).attr('id'), ajax: 'true'}, function(data){
    });
   });
});
</script>

<div class="page_margins">
  <div class="page">

  <s:include value="headerB0.jsp">
    <s:param name="headerID">0</s:param>
  </s:include>

    <div id="main">
      <!-- begin: #col1 - first float column -->
      <div id="col1" role="complementary">

<s:if test="%{failed}">
</s:if>
<s:else>
<font color="red"><strong><s:actionerror/></strong></font>
</s:else>

    <!-- Start: add link form -->
<s:if test="%{addLinkFailedFlag}">
<script type="text/javascript">
$(document).ready(function(){
	blockAddLinkForm();
});
</script>
</s:if>
    

        <div id="col1_content" class="clearfix">

	<s:iterator value="beanList">
          <div class="subcolumns equalize box-top">
	<s:iterator value="top">
            <div class="lframe">
              <div class="subcl">

                <h6><s:property value="linkTypeName" /></h6>
                <ul>
                  <s:iterator value="linkList">
                    <li><a id="<s:property value='id'/>" href="<s:property value='url'/>" title="<s:property value='description'/>" target="_blank"><s:property value='name'/></a>&nbsp;(<s:property value="numClick"/>)</li>
                  </s:iterator>
                </ul>
                <a href="#" class="hideme">&rarr; read more ...</a>
              </div>
            </div>
	</s:iterator>
          </div>
          <h3 class="hideme">Summing up</h3>
          <div class="subcolumns equalize no-ie-padding box-bottom">
	<s:iterator value="top">
            <div class="lframe">
              <div class="subcl">
              <!-- Here we will have pagination. -->
              </div>
            </div>
	</s:iterator>
          </div>
          
	</s:iterator>
	
	
        <s:if test="%{#session.accountSession!=null}">
              
<s:form id="addLinkForm" theme="simple" action="LinkList_add" cssClass="yform" validate="true">
<s:if test="%{addLinkFailedFlag}">
<font color="red"><strong><s:actionerror/></strong></font>
</s:if>
<s:token name="token"/>


<fieldset>
  <legend><s:text name="addLinkForm.legend"/></legend>
  <!-- Sub template: 2 columns with 50/50 division -->
  <div class="subcolumns">
  <div class="c50l">
  <div class="subcl type-text">
      <label for="LinkList_add_name">
        <s:text name="addLinkForm.label.name" />
        <sup title="<s:text name='common.label.mandatory'/>"><s:text name="common.label.star"/></sup>
      </label>
      <s:textfield theme="simple" name="link.name" cssClass="required"/>
  </div>
  
  <div class="subcl type-text">
      <label for="LinkList_add_url">
        <s:text name="addLinkForm.label.url" />
        <sup title="<s:text name='common.label.mandatory'/>"><s:text name="common.label.star"/></sup>
      </label>
      <s:textfield theme="simple" name="link.url" cssClass="required"/>
  </div>
  </div>
  
  <div class="c50r">
    <div class="subcr type-text">
      <label for="LinkList_add_description">
        <s:text name="addLinkForm.label.description" />
        <sup title="<s:text name='common.label.mandatory'/>"><s:text name="common.label.star"/></sup>
      </label>
      <s:textfield theme="simple" name="link.description" cssClass="required"/>
    </div>
    
    <div class="subcr type-select">
      <label for="LinkList_add_type">
        <s:text name="addLinkForm.label.type"/>
        <sup title="<s:text name='common.label.mandatory'/>"><s:text name="common.label.star"/></sup>
      </label>
      <s:select theme="simple" name="linkTypeId" headerKey="0" list="linkTypeList" listKey="id" listValue="name"/>
    </div>
  </div>
  </div>
  </fieldset>

    <div class="type-button">
      <s:submit id="addLinkFormSubmit" cssClass="submit" theme="simple" name="loginButton" key="common.buttion.submit"/>
    </div>

    </s:form>
        </s:if>
        </div>
        <div id="ie_clearing">&nbsp;</div>
        <!-- End: IE Column Clearing -->
      </div>
      <!-- end: #col1 -->

    </div>
    <s:include value="footerA0.jsp" />
  </div>
</div>
<s:include value="footerB0.jsp" />
</body>
</html>
