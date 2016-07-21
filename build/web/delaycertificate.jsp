<%-- 
    Document   : delaycertificate
    Created on : 2016/07/13, 13:47:07
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>遅延証明書発行</title>
        <link rel ="stylesheet" href ="stylesheet.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <script src="sort.js"></script>
    </head>
    <body>
        <h1><i class="fa fa-file-text" aria-hidden="true"></i>遅延証明書発行</h1><br>
        <a href="Timeline"><i class="fa fa-home" aria-hidden="true"></i>トップページに戻る</a><br><br>
        <a href="http://traininfo.jreast.co.jp/delay_certificate/">東日本旅客鉄道株式会社(JR東日本)</a><br><br>
        <a href="http://www.kotsu.metro.tokyo.jp/subway/schedule/delay.html">東京都交通局（都営地下鉄、都電荒川線、日暮里・舎人ライナー）</a><br><br>
        東京地下鉄株式会社（東京メトロ）<br>
        <form name="sort_form">
            <select name="sort" onchange="location.href=value;">
                <option value="">路線を選択して下さい</option>
                <option value="http://www.tokyometro.jp/delay/history/ginza.html">東京メトロ銀座線</option>
                <option value="http://www.tokyometro.jp/delay/history/marunouchi.html">東京メトロ丸ノ内線</option>
                <option value="http://www.tokyometro.jp/delay/history/hibiya.html">東京メトロ日比谷線</option>
                <option value="http://www.tokyometro.jp/delay/history/tozai.html">東京メトロ東西線</option>
                <option value="http://www.tokyometro.jp/delay/history/chiyoda.html">東京メトロ千代田線</option>
                <option value="http://www.tokyometro.jp/delay/history/yurakucho.html">東京メトロ有楽町線</option>
                <option value="http://www.tokyometro.jp/delay/history/hanzomon.html">東京メトロ半蔵門線</option>
                <option value="http://www.tokyometro.jp/delay/history/namboku.html">東京メトロ南北線</option>
                <option value="http://www.tokyometro.jp/delay/history/fukutoshin.html">東京メトロ副都心線</option>
            </select>
        </form>
        <br>
        東武鉄道株式会社<br>
        <form name="sort_form">
            <select name="sort" onchange="location.href=value;">
                <option value="">路線を選択して下さい</option>
                <option value="http://railway.tobu.co.jp/delay/list/1.html">東武伊勢崎線</option>
                <option value="http://railway.tobu.co.jp/delay/list/2.html">東武日光線</option>
                <option value="http://railway.tobu.co.jp/delay/list/11.html">東武野田線</option>
                <option value="http://railway.tobu.co.jp/delay/list/17.html">東武東上線</option>
                <option value="http://railway.tobu.co.jp/delay/list/18.html">東武越生線</option>
            </select>
        </form>
        <br>
        東京急行電鉄株式会社（東急）<br>
        <form name="sort_form">
            <select name="sort" onchange="location.href=value;">
                <option value="">路線を選択して下さい</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=1">東急東横線　上り　渋谷方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=11">東急東横線　下り　横浜方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=2">東急目黒線　上り　目黒方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=12">東急目黒線　下り　日吉方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=3">東急田園都市線　上り　渋谷方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=13">東急田園都市線　下り　中央林間方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=4">東急大井町線　上り　大井町方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=14">東急大井町線　下り　溝の口方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=5">東急池上線　上り　五反田方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=15">東急池上線　下り　蒲田方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=6">東急多摩川線　上り　多摩川方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=16">東急多摩川線　下り　蒲田方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=8">東急こどもの国線　上り　長津田方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=18">東急こどもの国線　下り　こどもの国方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=7">東急世田谷線　上り　三軒茶屋方面</option>
                <option value="http://www.tokyu.co.jp/railway/delay/result.php?line=17">東急世田谷線　下り　下高井戸方面</option>
            </select>
        </form>
            <br><br>
        <a href="http://www.seibu-group.co.jp/railways/delay/index.asp">西武鉄道株式会社</a><br><br>
        <a href="http://www.keisei.co.jp/keisei/tetudou/delay/index.htm">京成電鉄株式会社</a><br><br>
        <a href="https://www.keio.co.jp/train/delay/index.html">京王電鉄株式会社</a><br><br>
        <a href="http://delay.keikyu.co.jp/delay/?from=top">京浜急行電鉄株式会社(京急)</a><br><br>
        <a href="http://www.odakyu.jp/program/emg/index.html">小田急電鉄株式会社</a><br><br>
        <a href="http://service.twr.co.jp/delay_certificate/index.html">東京臨海高速鉄道株式会社（りんかい線）</a><br><br>
        <a href="http://www.yurikamome.co.jp/delay/index">株式会社ゆりかもめ</a><br><br>
        <a href="http://www.mir.co.jp/info/delay.html">首都圏新都市鉄道株式会社（つくばエクスプレス）</a><br><br>
        <a href="http://www.hokuso-railway.co.jp/pc/index.html">北総鉄道株式会社</a><br><br>
        <a href="http://www.sotetsu.co.jp/train/certificate/delay_list.cgi">相模鉄道株式会社(相鉄)</a><br><br>
        <a href="http://www.toyokosoku.co.jp/station/delay">東葉高速鉄道株式会社</a><br><br>
        <a href="http://www.mm21railway.co.jp/service/delay/">横浜高速鉄道株式会社（みなとみらい線）</a><br><br>
        <a href="http://web.s-rail.co.jp/delay/">埼玉高速鉄道株式会社</a>
    </body>
</html>
