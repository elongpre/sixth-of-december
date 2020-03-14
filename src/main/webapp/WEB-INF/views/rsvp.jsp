<%@ include file="../common/header.jspf" %>
<div class="site_body">
  <div class="site_title">R&eacute;pondez S'il Vous Pla&icirc;t</div>
  <div class="site_content">
    Please keep our <a href="/schedule">schedule</a> in mind as you make plans for the event.<br>
    We plan to celebrate with Family on December 5th and 6th, with a small wedding ceremony on the 6th.<br>
    We plan to celebrate with Friends on December 7th, 8th, and 9th.<br>
  </div>
  <div class="site_content">
    <table class="rsvp_table"><tr>
      <td class="rsvp_td"><button id="add_guest" class="rsvp_button add_guest" onclick="add_guest()" style="float:right;">Add Guest</button></td>
      <td class="rsvp_td vertical_line"></td>
      <td class="rsvp_td_comment vertical_line"></td>
    </tr></table>
    <form id="rsvp_form" class="rsvp_form" action="/rsvp_submitted" method="post">
      <table class="rsvp_table">
        <tr>
          <td id="rsvp_guests" class="rsvp_td">
            <label for="guest1_name">Guest Name:</label><br>
            <input class="rsvp_text" type="text" id="guest1_name" name="guest1_name" placeholder="Full Name..."><br>
          </td>
          <td class="rsvp_td vertical_line">
            <label>Days Attending:</label><br>
            <input type="checkbox" id="5th" name="5th" value="5th"><label for="5th">5th of December</label><br>
            <input type="checkbox" id="6th" name="6th" value="6th"><label for="6th">6th of December</label><br>
            <input type="checkbox" id="7th" name="7th" value="7th"><label for="7th">7th of December</label><br>
            <input type="checkbox" id="8th" name="8th" value="8th"><label for="8th">8th of December</label><br>
            <input type="checkbox" id="9th" name="9th" value="9th"><label for="9th">9th of December</label><br>
          </td>
          <td class="rsvp_td_comment vertical_line">
            <label for="additional_comments">Additional Comments:</label><br>
            <textarea class="rsvp_comment" name="additional_comments" placeholder=" Special Accommodations? &#13;&#10; Dietary Restrictions? &#13;&#10; Anything else?"></textarea>
          </td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td class="rsvp_td" style="float:right;">
            <input type="submit" class="rsvp_button submit" value="Submit"><br>
          </td>
        </tr>
      </table>
    </form>
  </div>
</div>
<%@ include file="../common/footer.jspf" %>
<script>
  var total_guests = 1;
  function add_guest(){
	  if(total_guests < 15) {
  	  total_guests++;
	    var label = document.createElement("label");
	    label.htmlFor = "guest"+total_guests+"_name";
	    label.innerHTML = "Additional Guest:";
	    document.getElementById("rsvp_guests").appendChild(label);
	    document.getElementById("rsvp_guests").appendChild(document.createElement("br"));
      var input = document.createElement("input");
      input.classList.add("rsvp_text");
      input.type = "text";
      input.id = "guest"+total_guests+"_name"; 
      input.name = "guest"+total_guests+"_name";
      input.placeholder = "Full Name...";
      document.getElementById("rsvp_guests").appendChild(input);
      document.getElementById("rsvp_guests").appendChild(document.createElement("br"));
	  }
  }
</script>