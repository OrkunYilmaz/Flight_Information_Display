<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <table class="table">
                <thead>
                    <tr>
                        <th>FlightNr</th>
                        <th>from</th>
                        <th>scheduled</th>
                        <th>Gate</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>KP7809</td>
                        <td>Queilén</td>
                        <td class="time">06:30</td>
                        <td>M13</td>
                    </tr>
                    <tr>
                        <td>BR2168</td>
                        <td>Gargazzone/Gargazon</td>
                        <td class="time">07:45</td>
                        <td>N12</td>
                    </tr>
                    <tr>
                        <td>GN5746</td>
                        <td>Surat</td>
                        <td class="time">08:50</td>
                        <td>X58</td>
                    </tr>
                    <tr>
                        <td>AG0701</td>
                        <td>Arviat</td>
                        <td class="time">09:30</td>
                        <td>K16</td>
                    </tr>
                    <tr>
                        <td>XA2638</td>
                        <td>St. John's</td>
                        <td class="time">11:45</td>
                        <td>C90</td>
                    </tr>
                    <tr>
                        <td>IF4996</td>
                        <td>Terragnolo</td>
                        <td class="time">12:30</td>
                        <td>O52</td>
                    </tr>
                    <tr>
                        <td>PE8164</td>
                        <td>Sagrada Familia</td>
                        <td class="time">13:45</td>
                        <td>P27</td>
                    </tr>
                    <tr>
                        <td>SJ9699</td>
                        <td>Göppingen</td>
                        <td class="time">15:30</td>
                        <td>B88</td>
                    </tr>
                    <tr>
                        <td>AP1796</td>
                        <td>Montemilone</td>
                        <td class="time">16:30</td>
                        <td>B80</td>
                    </tr>
                    <tr>
                        <td>YO9437</td>
                        <td>Alandur</td>
                        <td class="time">20:15</td>
                        <td>U80</td>
                    </tr>
                    <tr>
                        <td>ZT4550</td>
                        <td>Branchon</td>
                        <td class="time">21:30</td>
                        <td>Y11</td>
                    </tr>
                    <tr>
                        <td>FX4429</td>
                        <td>Busso</td>
                        <td class="time">22:15</td>
                        <td>J12</td>
                    </tr>
                    <tr>
                        <td>VZ1860</td>
                        <td>Southaven</td>
                        <td class="time">22:45</td>
                        <td>H10</td>
                    </tr>
                    <tr>
                        <td>UL8163</td>
                        <td>Mersin</td>
                        <td class="time">23:00</td>
                        <td>O36</td>
                    </tr>
                    <tr>
                        <td>JL7586</td>
                        <td>Kirkby Lonsdale</td>
                        <td class="time">23:30</td>
                        <td>F61</td>
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