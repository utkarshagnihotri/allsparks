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
--%><%
%><%@include file="/apps/geometrixx-unlimited-app/global.jsp" %><%
%><%@page session="false" %>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">
    <title>AllSpark 2016</title>
    <link rel="icon" href="favicon.ico?v=3" type="image/x-icon" />
    <link rel="apple-touch-icon" sizes="57x57" href="icons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="icons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="icons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="icons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="icons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="icons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="icons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="icons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="icons/apple-icon-180x180.png">
    
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="icons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Welcome to AllSpark 2016! AllSpark presents an opportunity for consultants in various streams to learn about the latest innovations, best practices and technological revolution in the fields of Digital Experience, Mobility, Commerce, Quality Assurance, Big Data & Analytics and DevOps. Spanning over 2 days, 20 curated technical topics and over a dozen prototypes and exhibits, this is the celebration of Technology and Innovation by the Sirius Global team">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet"> 

    <cq:include script="headlibs.jsp"/>
    
    <title><%= xssAPI.encodeForHTML( currentPage.getTitle() == null ? currentPage.getName() : currentPage.getTitle() ) %></title>

    <% currentDesign.writeCssIncludes(pageContext); %>
    <cq:include script="/libs/wcm/core/components/init/init.jsp"/>
    <cq:include script="stats_legacy.jsp"/>
    <cq:include script="/libs/cq/cloudserviceconfigs/components/servicelibs/servicelibs.jsp"/>
    <cq:include script="/libs/wcm/core/browsermap/browsermap.jsp" />
    <cq:include script="/libs/wcm/mobile/components/simulator/simulator.jsp"/>
</head>