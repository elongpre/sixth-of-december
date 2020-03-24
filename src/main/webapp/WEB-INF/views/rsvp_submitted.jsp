<%@ include file="../common/header.jspf" %>
<div class="site_body">
  <div class="site_title">R&eacute;pondez S'il Vous Pla&icirc;t</div>
  <div class="site_content">
<%  String param;
    int guest_num = 1;
    while( (param = request.getParameter("guest"+guest_num+"_name")) != null) {  %>
      <p><b>Reservation received for:</b> <%= param %></p>
<%    guest_num++;
    } 
    if(request.getParameter("NotAttending") != null){
%>
      <p>We're sorry you can't make our wedding!</p>
<%  } else { %>
      <p><b>Dates attending:</b>
        <% if(request.getParameter("5th") != null){%><%= request.getParameter("5th")%><% } %>
        <% if(request.getParameter("6th") != null){%><%= request.getParameter("6th")%><% } %>
        <% if(request.getParameter("7th") != null){%><%= request.getParameter("7th")%><% } %>
        <% if(request.getParameter("8th") != null){%><%= request.getParameter("8th")%><% } %>
        <% if(request.getParameter("9th") != null){%><%= request.getParameter("9th")%><% } %>
        of December, 2020
      </p>
<%  } %>
    <p><b>Additional Comments Provided:</b></p>
    <p><%= request.getParameter("additional_comments") %></p>
  </div>
</div>
<%@ include file="../common/footer.jspf" %>