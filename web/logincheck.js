function logincheck() {
    if (document.login.name.value === "") {
        alert("名前が入力されていません。");
        return(false);
    }
    if (document.login.password.value === "") {
        alert("パスワードが入力されていません。");
        return(false);
    }
    else{
        return(true);
    }
}