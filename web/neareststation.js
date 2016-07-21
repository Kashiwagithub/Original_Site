function neareststation() {
    
    if( navigator.geolocation ){
	// 現在地を取得
	navigator.geolocation.getCurrentPosition(

            // [第1引数] 取得に成功した場合の関数
            function( position ){
		// 取得したデータの整理
		var data = position.coords ;

		// データの整理
                    var lat = data.latitude ;
                    var lng = data.longitude ;
                               
        heartrailsURL = "http://geoapi.heartrails.com/api/json?method=searchByGeoLocation&";
        heartrailsURL += "x=" + lng + "&";
        heartrailsURL += "y=" + lat + "&";
        heartrailsURL += "jsonp=getPostal";//JSONPのコールバック関数
        var script = document.createElement('script');
        script.src = heartrailsURL;
        document.body.appendChild(script);
                
            }
        );
    }
}

function getPostal(result) {
        //alert("最寄り駅検索のための郵便番号は"+result["response"]["location"][0].postal.valueOf());
        heartrailsURL = "http://geoapi.heartrails.com/api/json?method=getStations&";
        heartrailsURL += "postal=" + result["response"]["location"][0].postal.valueOf() + "&";
        heartrailsURL += "jsonp=getStation";//JSONPのコールバック関数
        var script = document.createElement('script');
        script.src = heartrailsURL;
        document.body.appendChild(script);
}

function getStation(result){
        var str = "乗車駅:<input type=\"text\" name=\"departure\" value=\""+result["response"]["station"][0].name.valueOf()+"\">";
        document.getElementById("neareststation").innerHTML = str;
        var lng = result["response"]["station"][0].x;
        var lat = result["response"]["station"][0].y;
        
        var mapOptions = {
                    center: new google.maps.LatLng(lat,lng),
                    zoom: 18,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        //地図本体描画
            googlemap = new google.maps.Map(document.getElementById("mapField"), mapOptions);
            var marker = new google.maps.Marker({map: googlemap,position: new google.maps.LatLng(lat,lng)});
        
}


