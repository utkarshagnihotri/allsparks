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
%><%@include file="/apps/aemmobile/global.jsp" %><%
%><%@page session="false" %>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1, user-scalable=no">

    <cq:include script="headlibs.jsp"/>
    
    <title><%= xssAPI.encodeForHTML( currentPage.getTitle() == null ? currentPage.getName() : currentPage.getTitle() ) %></title>

    <% currentDesign.writeCssIncludes(pageContext); %>
    <cq:include script="/libs/wcm/core/components/init/init.jsp"/>
    <cq:include script="stats_legacy.jsp"/>
    <cq:include script="/libs/cq/cloudserviceconfigs/components/servicelibs/servicelibs.jsp"/>
    <cq:include script="/libs/wcm/core/browsermap/browsermap.jsp" />
    <cq:include script="/libs/wcm/mobile/components/simulator/simulator.jsp"/>
    <style>
.link:link, header .social a:link, nav ul li a:link, .link:hover, header .social a:hover, nav ul li a:hover, .link:visited, header .social a:visited, nav ul li a:visited {
  color: #ffffff;
  text-decoration: none; }

.allSparkBgs:nth-child(1), nav ul li:nth-child(1), footer .social a:nth-child(1), .profile:nth-child(1) {
  background: #F19401; }
.allSparkBgs:nth-child(2), nav ul li:nth-child(2), footer .social a:nth-child(2), .profile:nth-child(2) {
  background: #039EDF; }
.allSparkBgs:nth-child(3), nav ul li:nth-child(3), footer .social a:nth-child(3), .profile:nth-child(3) {
  background: #0BA35A; }
.allSparkBgs:nth-child(4), nav ul li:nth-child(4), footer .social a:nth-child(4), .profile:nth-child(4) {
  background: #E20250; }

.allSparkFullBgs.orange, .asTable .row .cell .orange.card {
  background: #F19401; }
.allSparkFullBgs.blue, .asTable .row .cell .blue.card {
  background: #039EDF; }
.allSparkFullBgs.green, .asTable .row .cell .green.card {
  background: #0BA35A; }
.allSparkFullBgs.red, .asTable .row .cell .red.card {
  background: #E20250; }

.allSparkAlphaBgs.orange {
  background: rgba(241, 148, 1, 0.5); }
.allSparkAlphaBgs.blue {
  background: rgba(3, 158, 223, 0.5); }
.allSparkAlphaBgs.green {
  background: rgba(11, 163, 90, 0.5); }
.allSparkAlphaBgs.red {
  background: rgba(226, 2, 80, 0.5); }

#timeline {
  width: 66%;
  margin: 80px auto 0;
  position: relative; }
  #timeline:before {
    content: '';
    display: block;
    position: absolute;
    left: 50%;
    top: 0;
    margin: 50px 0 0 -3px;
    width: 3px;
    height: 75%;
    background: #aaa; }
    @media screen and (max-width: 800px) {
      #timeline:before {
        height: 85%;
        margin-top: 0; } }
    @media screen and (max-width: 700px) {
      #timeline:before {
        display: none; } }
  #timeline article {
    width: 100%;
    margin: -80px 0 25px 0;
    position: relative;
    border-radius: 10px; }
    #timeline article:after {
      content: '';
      display: block;
      clear: both; }
    @media screen and (max-width: 700px) {
      #timeline article {
        margin: 0 0 10px 0; } }
  @media screen and (max-width: 800px) {
    #timeline {
      width: 100%;
      float: none; } }
  @media screen and (max-width: 700px) {
    #timeline {
      width: 100%;
      float: none;
      margin: 50px 0 20px; } }

#timeline article div.inner {
  width: 40%;
  float: left;
  margin: 5px 0 0 0;
  min-height: 130px;
  border-radius: 10px;
  padding: 20px;
  color: #fff;
  font-size: 11px; }
  @media screen and (max-width: 700px) {
    #timeline article div.inner {
      width: calc(100% - 75px); } }

#timeline article div.inner span.date {
  display: block;
  width: 60px;
  height: 60px;
  padding: 10px 0;
  position: absolute;
  top: 0;
  left: 50%;
  margin: 25px 0 0 -32px;
  text-transform: uppercase;
  background: #111111;
  color: white;
  border-radius: 10px; }
  @media screen and (max-width: 700px) {
    #timeline article div.inner span.date {
      right: 0;
      left: auto; } }

#timeline article div.inner span.date span {
  display: block;
  text-align: center;
  font-size: 12px; }
  #timeline article div.inner span.date span.month {
    font-size: 18px; }

#timeline article div.inner h2 {
  margin: 0;
  color: #fff;
  font-size: 20px;
  position: relative;
  line-height: 22px;
  font-size: 18px; }
  #timeline article div.inner h2:after {
    content: '';
    position: absolute;
    top: 25px;
    right: -25px;
    width: 20px;
    height: 20px;
    -webkit-transform: rotate(-45deg); }

#timeline article div.inner h3 {
  margin: 5px 0 15px;
  font-weight: 400; }
#timeline article div.inner ul li {
  padding-left: 20px;
  position: relative; }
  #timeline article div.inner ul li:before {
    position: absolute;
    top: 4px;
    left: 0px;
    content: '\f0a4';
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit; }

#timeline article:nth-child(2n+2) div.inner {
  float: right; }
  @media screen and (max-width: 700px) {
    #timeline article:nth-child(2n+2) div.inner {
      float: left; } }

#timeline article:nth-child(2n+2) div.inner h2:after {
  left: -25px; }
  @media screen and (max-width: 700px) {
    #timeline article:nth-child(2n+2) div.inner h2:after {
      left: auto; } }

#timeline article:nth-child(1) div.inner, #timeline article:nth-child(6) div.inner {
  background: #E20250; }
  #timeline article:nth-child(1) div.inner h2:after, #timeline article:nth-child(1) div.inner span.date, #timeline article:nth-child(6) div.inner h2:after, #timeline article:nth-child(6) div.inner span.date {
    background: #E20250; }
#timeline article:nth-child(3) div.inner, #timeline article:nth-child(8) div.inner {
  background: #0BA35A; }
  #timeline article:nth-child(3) div.inner h2:after, #timeline article:nth-child(3) div.inner span.date, #timeline article:nth-child(8) div.inner h2:after, #timeline article:nth-child(8) div.inner span.date {
    background: #0BA35A; }
#timeline article:nth-child(2) div.inner, #timeline article:nth-child(5) div.inner {
  background: #039EDF; }
  #timeline article:nth-child(2) div.inner h2:after, #timeline article:nth-child(2) div.inner span.date, #timeline article:nth-child(5) div.inner h2:after, #timeline article:nth-child(5) div.inner span.date {
    background: #039EDF; }
#timeline article:nth-child(4) div.inner, #timeline article:nth-child(7) div.inner {
  background: #F19401; }
  #timeline article:nth-child(4) div.inner h2:after, #timeline article:nth-child(4) div.inner span.date, #timeline article:nth-child(7) div.inner h2:after, #timeline article:nth-child(7) div.inner span.date {
    background: #F19401; }

* {
  box-sizing: border-box;
  padding: 0;
  margin: 0; }

html, body {
  background: #fff;
  margin: 0;
  padding: 0; }

html, body {
  font-family: 'Lato';
  -webkit-font-smoothing: antialiased; }

a {
  outline: none;
  text-decoration: none; }

.clearFix {
  clear: both; }

ul, li {
  margin: 0;
  padding: 0;
  list-style: none; }

#ieContainer {
  display: none; }

.container .schedule {
  float: right;
  background: #222;
  width: 300px;
  height: 700px; }
.container .posts {
  float: right;
  background: #0B1B22;
  width: 300px;
  height: 700px; }

header {
  position: relative;
  background: #111;
  height: 550px;
  padding-top: 100px; }
  @media screen and (max-width: 700px) {
    header {
      position: fixed;
      width: 100%;
      height: 235px;
      top: 0;
      left: 0;
      z-index: 2;
      padding-top: 25px; } }
  @media screen and (max-width: 700px) and (orientation: landscape) {
    header {
      position: relative; } }
  header .allsparklogo {
    text-align: center;
    display: none; }
    @media screen and (max-width: 700px) {
      header .allsparklogo {
        display: block; } }
  header .logo {
    display: block;
    margin: 50px auto 0;
    text-align: center; }
    @media screen and (max-width: 700px) {
      header .logo svg {
        width: 50%;
        height: 35px; } }
    @media screen and (max-width: 700px) {
      header .logo {
        margin-top: 5px; } }
  header .siriusLogo {
    position: absolute;
    top: 20px;
    left: 20px; }
    header .siriusLogo img {
      width: 120px; }
      @media screen and (max-width: 700px) {
        header .siriusLogo img {
          width: 90px; } }
    @media screen and (max-width: 700px) {
      header .siriusLogo {
        top: 5px;
        left: 5px; } }
  header .social {
    position: absolute;
    top: 20px;
    right: 20px; }
    header .social a {
      display: inline-block;
      font-size: 20px;
      text-align: center;
      margin-left: 15px;
      text-decoration: none;
      color: #ffffff; }
      @media screen and (max-width: 700px) {
        header .social a {
          font-size: 16px; } }
    @media screen and (max-width: 700px) {
      header .social {
        top: 10px;
        right: 10px; } }

nav {
  position: absolute;
  bottom: 0;
  width: 100%; }
  nav ul {
    list-style: none;
    text-align: center; }
    nav ul li {
      display: inline-block;
      text-align: center;
      cursor: pointer;
      padding: 10px 15px;
      color: #fff;
      letter-spacing: 1.5px;
      margin: 0 10px;
      width: 130px;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px; }
      @media screen and (max-width: 700px) {
        nav ul li {
          width: 24%;
          margin: 0;
          letter-spacing: 1px;
          font-size: 12px;
          padding: 10px 5px; } }

section > div {
  padding: 50px;
  transition: 2s; }
  @media screen and (max-width: 700px) {
    section > div {
      padding: 20px; } 
section #schedule, section #timeline, section #liveblog, section #guests {
  display: block; }}
section .default {
  padding: 20px; }
#carousel .section {
  display: none; }
section #guests {
  text-align: center; }
section #schedule {
  padding: 50px 0; }
  section #schedule .scheduleBox {
    margin-bottom: 50px;
    padding: 0 50px;
    overflow-x: auto; }
    section #schedule .scheduleBox .note {
      font-size: 11px;
      color: #bbb; }
    @media screen and (max-width: 700px) {
      section #schedule .scheduleBox {
        padding: 20px; } }
  section #schedule .date {
    margin: 0 50px 35px; }
    section #schedule .date h1 {
      float: left;
      width: 50%;
      text-align: right;
      padding-right: 15px;
      font-size: 34px;
      font-weight: normal;
      font-family: "Lato-Thin", "Lato"; }
      @media screen and (max-width: 700px) {
        section #schedule .date h1 {
          float: none;
          width: 100%;
          text-align: center;
          font-size: 24px;
          padding: 0;
          font-family: "Lato-Thin", "Lato"; } }
    section #schedule .date .info {
      float: right;
      text-align: left;
      width: 50%;
      padding-left: 15px;
      border-left: 1px dotted;
      line-height: 20px;
      font-size: 14px;
      font-weight: normal;
      font-family: "Lato-Light", Lato; }
      @media screen and (max-width: 700px) {
        section #schedule .date .info .loc {
          text-align: center; } }
      @media screen and (max-width: 700px) {
        section #schedule .date .info {
          float: none;
          text-align: center;
          width: 100%;
          border-left: 0;
          padding-left: 0;
          font-size: 12px; } }
    @media screen and (max-width: 700px) {
      section #schedule .date {
        margin: 0 20px 10px; } }
@media screen and (max-width: 700px) {
  section {
    /*margin-top: 235px;*/
    z-index: 1; } }
@media screen and (max-width: 700px) and (orientation: landscape) {
  section {
    margin-top: 0; } }

footer {
  padding-bottom: 20px;
  text-align: center;
  font-family: Lato;
  font-size: 13px; }
  footer .aboutUs {
    width: 50%;
    margin: 0 auto;
    line-height: 20px; }
    @media screen and (max-width: 700px) {
      footer .aboutUs {
        width: 100%;
        padding: 10px;
        font-size: 12px;
        line-height: 14px; } }
  footer .social {
    padding-top: 15px; }
    footer .social a {
      display: inline-block;
      color: #ffffff;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      font-size: 20px;
      padding: 7px 0;
      margin: 2px; }

.profile {
  width: 200px;
  height: 320px;
  display: inline-block;
  vertical-align: top;
  margin: 10px;
  border-radius: 10px;
  color: #ffffff; }
  .profile .pic {
    width: 100%;
    height: 220px;
    border-bottom: 2px solid #ffffff;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px; }
  .profile .name {
    padding: 10px;
    font-size: 18px;
    letter-spacing: 1.2px; }
  .profile .desig {
    padding: 0 10px 3px;
    font-size: 13px; }
  .profile .domain {
    padding: 0 10px;
    font-size: 11px; }

.asTable {
  display: table;
  margin: 0 auto; }
  .asTable.fullTable {
    width: 100%; }
  .asTable .row {
    display: table-row; }
    .asTable .row .cell {
      display: table-cell;
      padding: 5px;
      font-size: 14px;
      vertical-align: middle; }
      .asTable .row .cell .timings {
        margin-bottom: 10px;
        font-weight: 600;
        font-size: 11px;
        text-align: center; }
      .asTable .row .cell .card {
        position: relative;
        background: #eee;
        border-radius: 5px;
        height: 150px;
        width: 130px;
        padding: 10px;
        color: #fff;
        font-size: 14px;
        font-family: "Lato-Regular", Lato;
        line-height: 20px;
        cursor: pointer;
        margin-bottom: 10px; }
        .asTable .row .cell .card.joint {
          height: 310px; }
          @media screen and (max-width: 700px) {
            .asTable .row .cell .card.joint {
              height: 60px;
              width: 100%;
              margin-right: 0; } }
        .asTable .row .cell .card .hall {
          position: absolute;
          bottom: 5px;
          right: 10px;
          font-size: 12px; }
        @media screen and (min-width: 1200px) {
          .asTable .row .cell .card {
            width: 120px; } }
        @media screen and (max-width: 700px) {
          .asTable .row .cell .card {
            display: inline-block;
            vertical-align: top;
            margin-right: 5px;
            width: 48%;
            font-family: "Lato-Light", "Lato";
            font-weight: 200; } }
        @media screen and (max-width: 322px) {
          .asTable .row .cell .card {
            margin: 1%;
            width: 48%;
            font-family: "Lato-Light", "Lato";
            font-weight: 200; } }
      @media screen and (max-width: 700px) {
        .asTable .row .cell {
          display: block; } }

.countdown {
  font-size: 44px;
  font-family: "Lato-Light", "Lato";
  text-align: center; }
  .countdown span {
    font-size: 18px; }
    @media screen and (max-width: 700px) {
      .countdown span {
        font-size: 12px; } }
  @media screen and (max-width: 800px) {
    .countdown {
      font-weight: 200; } }
  @media screen and (max-width: 700px) {
    .countdown {
      font-size: 20px;
      font-family: "Lato-Light", "Lato";
      font-weight: 400; } }

.stage {
  position: relative;
  width: 400px;
  height: 240px;
  margin: 0 auto;
  perspective: 1000px; }
  @media screen and (max-width: 700px) {
    .stage {
      display: none; } }
  .stage .cube {
    position: absolute;
    width: inherit;
    height: inherit;
    top: 20px;
    transform-style: preserve-3d;
    transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
    animation: rotation3D linear infinite 17s;
    backface-visibility: hidden; }
    .stage .cube span {
      position: absolute;
      width: 200px;
      height: 200px;
      color: #ffffff;
      left: 165px;
      top: 15px;
      display: block; }
      @media screen and (max-width: 700px) {
        .stage .cube span {
          width: 100px;
          height: 100px; } }

#face1 {
  background-color: #023d52;
  top: 30px;
  background-image: url("../img/logo.png");
  background-position: 50% 50%;
  background-repeat: no-repeat;
  background-size: 50%;
  transform: translateZ(100px); }
  @media screen and (max-width: 700px) {
    #face1 {
      -ms-transform: translateZ(50px);
      -moz-transform: translateZ(50px);
      -webkit-transform: translateZ(50px);
      transform: translateZ(50px); } }

#face2 {
  background-color: #3d686c;
  top: 30px;
  background-image: url("../img/logo.png");
  background-position: 50% 50%;
  background-repeat: no-repeat;
  background-size: 50%;
  transform: translateZ(-100px) rotateY(180deg); }
  @media screen and (max-width: 700px) {
    #face2 {
      -ms-transform: translateZ(-50px) rotateY(180deg);
      -moz-transform: translateZ(-50px) rotateY(180deg);
      -webkit-transform: translateZ(-50px) rotateY(180deg);
      transform: translateZ(-50px) rotateY(180deg); } }

#face3 {
  background-color: #0BA35A;
  top: 30px;
  background-image: url("../img/sirius.png");
  background-position: 50% 50%;
  background-repeat: no-repeat;
  background-size: 80%;
  transform: translateX(100px) rotateY(90deg); }
  @media screen and (max-width: 700px) {
    #face3 {
      -ms-transform: translateX(50px) rotateY(90deg);
      -moz-transform: translateX(50px) rotateY(90deg);
      -webkit-transform: translateX(50px) rotateY(90deg);
      transform: translateX(50px) rotateY(90deg); } }

#face4 {
  background-color: #039EDF;
  top: 30px;
  background-image: url("../img/sirius.png");
  background-position: 50% 50%;
  background-repeat: no-repeat;
  background-size: 80%;
  transform: translateX(-100px) rotateY(-90deg); }
  @media screen and (max-width: 700px) {
    #face4 {
      -ms-transform: translateX(-50px) rotateY(-90deg);
      -moz-transform: translateX(-50px) rotateY(-90deg);
      -webkit-transform: translateX(-50px) rotateY(-90deg);
      transform: translateX(-50px) rotateY(-90deg); } }

#face5 {
  background-color: #F19401;
  top: 30px;
  background-image: url("../img/nameLogo.png");
  background-position: 50% 50%;
  background-repeat: no-repeat;
  background-size: 80%;
  transform: translateY(100px) rotateX(-90deg); }

#face6 {
  background-color: #E20250;
  top: 30px;
  padding: 15px;
  background-image: url("../img/nameLogo.png");
  background-position: 50% 50%;
  background-repeat: no-repeat;
  background-size: 80%;
  line-height: 60px;
  font-size: 70px;
  transform: translateY(-100px) rotateX(90deg); }

@-moz-keyframes rotation3D {
  from {
    transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg); }
  to {
    transform: rotateX(-360deg) rotateY(-720deg) rotateZ(-1080deg); } }
@-webkit-keyframes rotation3D {
  from {
    transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
    -webkit-transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg); }
  to {
    -webkit-transform: rotateX(-360deg) rotateY(-720deg) rotateZ(-1080deg);
    transform: rotateX(-360deg) rotateY(-720deg) rotateZ(-1080deg); } }
@-o-keyframes rotation3D {
  from {
    transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg); }
  to {
    transform: rotateX(-360deg) rotateY(-720deg) rotateZ(-1080deg); } }
@keyframes rotation3D {
  from {
    transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg); }
  to {
    transform: rotateX(-360deg) rotateY(-720deg) rotateZ(-1080deg); } }
@-webkit-keyframes spin {
  from {
    -webkit-transform: rotateY(0) rotateX(0) rotateZ(0); }
  to {
    -webkit-transform: rotateY(-360deg) rotateX(360deg) rotateZ(0); } }
.eventOverlay {
  display: none;
  position: fixed;
  background: rgba(0, 0, 0, 0.94);
  color: #ffffff;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  padding: 30px;
  z-index: 99;
  font-family: "Lato-Light", Lato; }
  .eventOverlay .close {
    position: absolute;
    top: 20px;
    right: 20px;
    width: 40px;
    height: 40px;
    z-index: 2;
    cursor: pointer; }
  .eventOverlay .content {
    width: 500px;
    position: relative;
    margin: 40px auto 0; }
    @media screen and (max-width: 700px) {
      .eventOverlay .content {
        width: 100%;
        margin: 0; } }
  .eventOverlay h1 {
    font-size: 44px;
    font-family: "Lato-Light", Lato;
    font-weight: normal;
    margin-bottom: 10px;
    padding-bottom: 10px;
    border-bottom: 1px solid #ffffff; }
    @media screen and (max-width: 700px) {
      .eventOverlay h1 {
        font-size: 30px;
        padding-right: 40px;
        font-family: 'Lato';
        font-weight: 200; } }
  .eventOverlay p.eventDesc {
    font-size: 18px;
    text-align: justify;
    margin-bottom: 30px; }
    @media screen and (max-width: 700px) {
      .eventOverlay p.eventDesc {
        font-size: 16px;
        margin-bottom: 10px;
        font-family: "Lato-Light", "Lato";
        font-weight: 200; } }
  .eventOverlay p.eventTime {
    margin: 10px 0 0;
    font-size: 24px; }
    .eventOverlay p.eventTime i {
      padding-right: 10px; }
    @media screen and (max-width: 700px) {
      .eventOverlay p.eventTime {
        font-size: 12px;
        margin-bottom: 10px;
        font-family: "Lato-Light", "Lato";
        font-weight: 200; } }
  .eventOverlay .presenters {
    margin-top: 20px; }
    .eventOverlay .presenters img {
      width: 50px;
      float: left;
      margin-right: 15px; }
    .eventOverlay .presenters ul {
      float: left;
      min-height: 60px;
      border-left: 1px dotted #ffffff;
      padding-left: 15px; }
      .eventOverlay .presenters ul li {
        margin-bottom: 5px;
        font-size: 14px; }
  .eventOverlay .logo {
    position: absolute;
    width: 100%;
    left: 0;
    bottom: 15px;
    text-align: center; }
    @media screen and (max-width: 700px) {
      .eventOverlay .logo {
        display: none; } }
  @media screen and (max-width: 700px) {
    .eventOverlay {
      font-family: "Lato-Regular", "Lato";
      font-weight: 200; } }

/*# sourceMappingURL=styles.css.map */


.liveBlogFeeds{
	width: 500px; height:600px; border: 0px; margin: 0 auto;display: block;
	
}
@media screen and (max-width: 700px) {
	   .liveBlogFeeds{ width: 90%;}
}
    </style>    
</head>