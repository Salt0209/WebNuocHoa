let tendn = document.getElementById('tendn_dn');
let matkhau = document.getElementById('matkhau_dn');
let input = document.getElementById('btn_dangnhap');

let click = 0;
btn_dangnhap.onclick = function (e) {
    var valid = true;
    if (!(tendn.value.trim() && matkhau.value.trim())) {
        valid = false;
    }
    if (!valid) {
        e.preventDefault();
        btn_error = document.getElementById("loi_dn");
        btn_error.innerHTML = "điền đầy đủ tài khoản và mật khẩu";
    }
    
    //alert("Hello! I am an alert box!!" + click);
    //if (click > 3) {
    //    btn_dangnhap.style.background = "red";
    //    btn_dangnhap.disabled = true;
    //    btn_error.innerhtml = "nút đã bị vô hiệu hóa";
    //}
}
//function usernameChanged() {
//    if (tendn.value.trim() != "" && matkhau.value.trim() != "") {
//        btn_dangnhap.disabled = false;
//        btn_error.innerHTML = "OK";
//    }
//}
//function passwordChanged() {
//    if (tendn.value.trim() != "" && matkhau.value.trim() != "") {
//        btn_dangnhap.disabled = false;
//        btn_error.innerHTML = "OK";
//    }
//}