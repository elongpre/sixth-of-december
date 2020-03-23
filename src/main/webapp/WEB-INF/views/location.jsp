<%@ include file="../common/header.jspf" %>
<link href="css/modal.css" rel="stylesheet">
<div class="site_body">
  <div class="site_title">Location Information</div>
  <div class="site_content">
    <div class="site_sub_title">The Beach House</div>
    <div style="margin: auto">
      <img id="inside" class="src_image" src="images/house_inside.jpg" alt="inside">
      <img id="roof" class="src_image" src="images/house_roof.jpg" alt="roof">
      <img id="beach" class="src_image" src="images/house_beach.jpg" alt="beach">
      <div id="image_modal" class="modal">
        <span class="close_button">&times;</span>
        <img class="modal-content" id="modal_image">
      </div>
    </div>
    <p>Address: <a href='https://goo.gl/maps/mSRFiAHCLkp4V9F3A' target="_blank">1643 S Pacific St, Oceanside, CA 92054</a></p> 
	
    <p>There is <b>NO PARKING</b> at the beach house.</p>
  </div>
  <div class="site_content">
    <div class="site_sub_title">Transportation Options</div>
    <table><tr>
      <td style="width: 60%; vertical-align: top;">    
        <p><u>We suggest public transportation!</u> In fact, that's how we plan to get there!</p>
        <p>The COASTER train goes from downtown San Diego to the Oceanside Transit Center in about an hour.
          It costs $6.50 to go one way or $15 for a day pass. 
        </p>
        <p><a href='https://www.gonctd.com/services/coaster-commuter-rail/' target="_blank">Click here for more info about the COASTER train</a></p>
        <p>From the Oceanside Transit Center, you can call a ride-share or walk the last 1.6 miles to the beach house.
           Take a look at the map to the right.<br>
           Ride share options include: <a href="https://www.uber.com">Uber</a> and <a href="https://www.lyft.com">Lyft</a>.</p>
        
        <p><u>If you come by car:</u></p>
        <p>You <i>might</i> be able to find street parking in the neighborhood near the wedding beach house.
          You <i>might</i> be able to park at a nearby park, such as Buccaneer Beach Park or Lions Club Park
          (wow I said park a lot in that sentence). You <i>might</i> be able to park at the Moreno Street Park &amp; Ride bus stop.
          Whatever you do, you should definitely make a plan about where you're going to look for parking <b><i>before</i></b> you 
          actually get to Oceanside, because Evan &amp; Sage are not familiar with the area and will not be able to help you on the day of your arrival.</p>
        <p> ALSO (disclaimer): We are not taking any responsibility for anything that happens to you, your car, or your stuff if you take any of these suggestions. 
          We've never tried any of them for ourselves; we are just informing you of things we might try if we brought a car to this party that 
          has no parking. So PLEASE use your best judgment, read all the street signs, don't break any laws, and get to our wedding safely :)</p>
      </td>
      <td style="width: 40%; vertical-align: top;">
        <a href='https://goo.gl/maps/J1cBxBKfUR3EsikM7' target="_blank"><img src="images/mapp.jpg" style="width: 100%;height:auto;padding-top:20px;"></a>
      </td>
    </tr></table>
  </div>
</div>
<%@ include file="../common/footer.jspf" %>

<script>
  var modal = document.getElementById("image_modal");
  var modal_image = document.getElementById("modal_image");
  
  var inside_img = document.getElementById("inside");
  inside_img.onclick = function(){
	  modal.style.display = "block";
	  modal_image.src = this.src;
	}
  var roof_img = document.getElementById("roof");
  roof_img.onclick = function(){
	  modal.style.display = "block";
	  modal_image.src = this.src;
	}
  var beach_img = document.getElementById("beach");
  beach_img.onclick = function(){
	  modal.style.display = "block";
	  modal_image.src = this.src;
	}

  var span = document.getElementsByClassName("close_button")[0];
  span.onclick = function() { 
	  modal.style.display = "none";
	}
  window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	} 
  
  </script>