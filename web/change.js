function change(){
    var departure = document.getElementById('departure').value;
    var arrival = document.getElementById('arrival').value;
        var str = '乗車駅:<input type="text" name="departure" value="'+arrival+'" id="departure"><br>\n\
                         <input type ="button" value ="↑↓" onclick ="change()"><br>\n\
                   降車駅:<input type="text" name="arrival" value="'+departure+'" id="arrival"><br>\n\
                         <input type="submit" value="検索">';
    document.getElementById('change').innerHTML = str;
}