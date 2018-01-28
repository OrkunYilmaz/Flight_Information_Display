<script>//set screen sequence
    function slideshow() {
    var screens = [
        {url: "http://localhost:8080/flight_information_display/arrivals", t: 5000},
        {url: "http://localhost:8080/flight_information_display/departures", t: 5000},
    ];
    var currentScreen = 0;
    // cache the element here so we don't need to search for it every two seconds
    var show = $('#show');

    var step = 1000;
    var screenTimer = 0;
    function update() {
        // since step is final we go through an interval(step) untill we reach t
        // and then change the current screen
        if ((screenTimer += step) >= screens[currentScreen].t) {
            currentScreen = (currentScreen + 1) % screens.length;
            show.load(screens[currentScreen].url);
            screenTimer = 0;
        }
    }
    show.load("http://localhost:8080/flight_information_display/arrivals");
    setInterval(update, step);
    }
$(document).ready(slideshow);
</script>
<div id="show"></div>