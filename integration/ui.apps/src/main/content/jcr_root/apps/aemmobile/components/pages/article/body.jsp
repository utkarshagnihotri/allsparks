<%--
  ADOBE CONFIDENTIAL
  __________________

   Copyright 2012 Adobe Systems Incorporated
   All Rights Reserved.

  NOTICE:  All information contained herein is, and remains
  the property of Adobe Systems Incorporated and its suppliers,
  if any.  The intellectual and technical concepts contained
  herein are proprietary to Adobe Systems Incorporated and its
  suppliers and are protected by trade secret or copyright law.
  Dissemination of this information or reproduction of this material
  is strictly forbidden unless prior written permission is obtained
  from Adobe Systems Incorporated.
--%><%@include file="/libs/foundation/global.jsp" %><%
%><%@page session="false"
          import="com.day.cq.wcm.api.WCMMode"%><%
%><body>
<div class="container" data-dps="paginate" data-page-padding="15" >
    <cq:include script="header.jsp"/>
    <div class="bg">
        <cq:include script="content.jsp"/>
    </div>
    <cq:include script="footer.jsp"/>
</div><%
%></body>