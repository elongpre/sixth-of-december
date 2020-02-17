<%@ include file="../common/header.jspf" %>
<div class="site_body">
  <div class="site_title">
    R&eacute;pondez S'il Vous Pla&icirc;t
  </div>
  <div class="site_content">
<%  String param;
    int guest_num = 1;
    while( (param = request.getParameter("guest"+guest_num+"_name")) != null) {  %>
      <p>Reservation recieved for: <%= param %></p>
<%    guest_num++;
    } %>
    <p>Dates attending:
      <% if(request.getParameter("5th") != null){%><%= request.getParameter("5th")%><% } %>
      <% if(request.getParameter("6th") != null){%><%= request.getParameter("6th")%><% } %>
      <% if(request.getParameter("7th") != null){%><%= request.getParameter("7th")%><% } %>
      <% if(request.getParameter("8th") != null){%><%= request.getParameter("8th")%><% } %>
      <% if(request.getParameter("9th") != null){%><%= request.getParameter("9th")%><% } %>
      of December, 2020
    </p>
    <p>Additional Comments Provided:</p>
    <p>
    <% if(request.getParameter("5th") != null){%><%= request.getParameter("additional_comments") %><%; 
    } else { %>No additional comments<% } %>
    </p>
  </div>
</div>
<%@ include file="../common/footer.jspf" %>