function check() {
    if (document.profile.name.value === "") {
        alert("名前が入力されていません。");
    return(false);
    }
    if (document.profile.password.value === "") {
        alert("パスワードが入力されていません。");
        return(false);
    }
    if (document.profile.departure.value === "") {
        alert("乗車駅が入力されていません。");
        return(false);
    }
    if (document.profile.arrival.value === "") {
        alert("降車駅が入力されていません。");
        return(false);
    }
    if (document.profile.line.value === "") {
        alert("使用路線が入力されていません。");
        return(false);
    }
    else{
        return(true);
    }
}