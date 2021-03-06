<%@ include file="../common/header.jspf" %>
<div class="site_body">
  <div style="max-width: 80%; margin-left: auto; margin-right: auto;">
    <img src="images/splash.jpg" alt="Sage and Evan" style="width: 100%;height:auto;">
  </div>
  <!-- 
  <div class="site_title">You're Invited!</div>
  <div class="site_content">
    <p>In lieu of a traditional wedding, we will be hosting a wedding event for five days (5th - 9th of December, 2020)
        at a lovely beach house in Oceanside, California. Family members will be invited to join us on
        December 5th & 6th, while friends will be invited to join us on December 7th, 8th, & 9th.</p>
  </div>
   -->
  <div class="site_title">A Pause in Time!</div>
  <div class="site_content">
    <p> We regret to inform you that we decided to delay our wedding celebration. 
        We want everyone to stay safe during the ongoing pandemic, and a large wedding celebration goes against that.
        Do not worry! We are still going to get married, however we ask that you congratulate us online instead of in person.
        We hope that in a year, we will be able to invite you to our 1 year anniverary where we host the party we had planned for this year!
    </p>
  </div>
  <div class="site_content" style="text-align: center;"
    <p>Signing the Certificate on the 6th of December, 2020</p>
    <p id="countdown"></p>
  </div>
</div>
<%@ include file="../common/footer.jspf" %>

<script>
  var wed_date = new Date(Date.UTC(2020, 11, 6, 19)).getTime(); // 11am Pacific -> 7pm UTC
  function countdown(){
    var now = new Date().getTime();
    var distance = wed_date - now;
    var seconds = Math.floor(distance/1000);
    if (distance > 0) {
      document.getElementById("countdown").innerHTML = "Counting down! Time left: " + seconds.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,') + " seconds";
    } else {
      var end_date = new Date(Date.UTC(2020, 11, 10, 7)).getTime();
      if (now < end_date) {  
        seconds = Math.floor((end_date - now) / 1000);
        document.getElementById("countdown").innerHTML = "Beach house party for the next " + seconds.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,') + " seconds!";
      } else {
        clearInterval(x);
        document.getElementById("countdown").innerHTML = "Too late! It's over. Check out some memories under Photos (if Evan isn't lazy about creating that webpage)";
      }
    }
  }
  countdown();
  setInterval(countdown, 1000);
</script>