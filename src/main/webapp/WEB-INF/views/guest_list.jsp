<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="../common/header.jspf" %>
<div class="site_body">
  <div class="site_title">Guest List</div>
  <div class="simple" style="font-size:20px">Guest Name,6th,7th,8th,9th,Not Attending,Additional Comments,Additional Guests</div>
<% 
  ArrayList<String> guest_list = (ArrayList<String>)request.getAttribute("guest_list");
  for(String entry : guest_list) {
%>
  <div class="simple" style="font-size:20px"><%= entry%></div>
<%	  
  }
%>
  <div class="simple" style="font-size:20px">End of Guest List</div>
</div>
<%@ include file="../common/footer.jspf" %>