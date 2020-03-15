<%@ include file="../common/header.jspf" %>
<div class="site_body">
  <div style="max-width: 80%; margin-left: auto; margin-right: auto;">
    <img src="images/splash.jpg" alt="Sage and Evan" style="width: 100%;height:auto;">
  </div>
  <div class="site_title">Sage and Evan!</div>
  <div class="site_content">
    <p>5th - 9th of December, 2020</p>
    <p>Signing the Certificate on 6th of December, 2020</p>
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
        document.getElementById("countdown").innerHTML = "Too late! It's over. Check out some memories under Photos";
      }
    }
  }
  countdown();
  setInterval(countdown, 1000);
</script>