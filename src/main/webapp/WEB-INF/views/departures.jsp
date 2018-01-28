<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <table class="table">
                <thead>
                    <tr>
                        <th>FlightNr</th>
                        <th>to</th>
                        <th>scheduled</th>
                        <th>Gate</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>HC1873</td>
                        <td>Salice Salentino</td>
                        <td class="time">03:00</td>
                        <td>C90</td>
                    </tr>
                    <tr>
                        <td>SJ7612</td>
                        <td>Smetlede</td>
                        <td class="time">05:45</td>
                        <td>Q06</td>
                    </tr>
                    <tr>
                        <td>EP9758</td>
                        <td>Cicagna</td>
                        <td class="time">08:30</td>
                        <td>G12</td>
                    </tr>
                    <tr>
                        <td>BX0641</td>
                        <td>Morwell</td>
                        <td class="time">10:30</td>
                        <td>N65</td>
                    </tr>
                    <tr>
                        <td>LA7235</td>
                        <td>Gierle</td>
                        <td class="time">11:45</td>
                        <td>U40</td>
                    </tr>
                    <tr>
                        <td>TA5931</td>
                        <td>Imphal</td>
                        <td class="time">12:15</td>
                        <td>A73</td>
                    </tr>
                    <tr>
                        <td>VI8870</td>
                        <td>Santipur</td>
                        <td class="time">14:30</td>
                        <td>W99</td>
                    </tr>
                    <tr>
                        <td>WH7977</td>
                        <td>Hattersheim am Main</td>
                        <td class="time">15:15</td>
                        <td>J94</td>
                    </tr>
                    <tr>
                        <td>SC4242</td>
                        <td>Borgerhout</td>
                        <td class="time">16:45</td>
                        <td>B55</td>
                    </tr>
                    <tr>
                        <td>QF2335</td>
                        <td>Purral</td>
                        <td class="time">17:30</td>
                        <td>Q53</td>
                    </tr>
                    <tr>
                        <td>SC9861</td>
                        <td>Neumünster</td>
                        <td class="time">18:45</td>
                        <td>R43</td>
                    </tr>
                    <tr>
                        <td>IT7237</td>
                        <td>Milestone</td>
                        <td class="time">19:20</td>
                        <td>D65</td>
                    </tr>
                    <tr>
                        <td>TV9385</td>
                        <td>Woodstock</td>
                        <td class="time">20:50</td>
                        <td>E33</td>
                    </tr>
                    <tr>
                        <td>NW0528</td>
                        <td>Giove</td>
                        <td class="time">21:40</td>
                        <td>M35</td>
                    </tr>
                    <tr>
                        <td>ZO1387</td>
                        <td>Sint-Kruis</td>
                        <td class="time">22:25</td>
                        <td>R66</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
var now = new Date();   
var timeContainers = document.getElementsByClassName("time");

for (var i = 0; i < timeContainers.length; i++) {
    //split time into hours and minutes
    var [hours,minutes] = timeContainers[i].innerHTML.split(':');
    //parse hours and numbers into numbers
    var dateToCompare = new Date(now.getFullYear(),now.getMonth(),now.getDate(),Number(hours),Number(minutes))
    if(now.valueOf() - dateToCompare.valueOf() > 0){
        timeContainers[i].innerHTML += " arrived";
        timeContainers[i].style.color='green';
    }
    else {
        timeContainers[i].style.color='red';
    }
}
</script>