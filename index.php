<?php
// pobieramy date na serwerze
$data = date("Y-m-d H:i:s");
// zapisujemy date do pliku
file_put_contents("/var/www/localhost/htdocs/log.txt", "Mikolaj Stachira $data PORT 80");
?>

<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script> 
<script type='text/javascript'>
$(document).ready(function () {
    $.getJSON("http://ipinfo.io/geo", function (data) { // pobieramy jsona z ipinfo.io/geo z ip i strefa czasowa
        let datetime_str = new Date().toLocaleString("en-US", { timeZone: data.timezone }); // uzyskujemy date ze strefy czasowej
        alert("Twoje IP: " + data.ip + " Data: " + datetime_str); // pokazujemy uzytkownikowi ip i date
    }); 
});
</script>