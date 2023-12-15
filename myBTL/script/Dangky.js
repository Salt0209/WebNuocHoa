let form = document.querySelector('.form_dk');
let tendn = document.getElementById('tendn');
let email = document.getElementById('email_dk');
let sdt = document.getElementById('sdt_dk');
let matkhau = document.getElementById('matkhau');
let nlmatkhau = document.getElementById('nlmatkhau_dk');
let inputs = form.querySelectorAll('.input');

//kiểm tra bỏ trống
for (let i = 0; i < inputs.length; i++) {
    inputs[i].onblur = inputs[i].oninput = function () {
        if (inputs[i].value.trim()) {
            setSuccessFor(inputs[i]);
        } else {
            setErrorFor(inputs[i], 'Trường này không được bỏ trống');
        }
    }
}

function setErrorFor(input, message) {
    const formControl = input.parentElement;
    const p = formControl.querySelector('p');
    p.innerText = message;
    formControl.className = 'form-control invalid';
    input.focus();
}

function setSuccessFor(input) {
    const formControl = input.parentElement;
    const p = formControl.querySelector('p');
    p.innerText = '';
    formControl.className = 'form-control valid';
}



//Kiểm tra trùng mật khẩu
nlmatkhau.onblur = nlmatkhau.oninput = function () {
    if (nlmatkhau.value.trim() === matkhau.value.trim()) {
        setSuccessFor(nlmatkhau);
    } else {
        setErrorFor(nlmatkhau, 'Mật khẩu chưa trùng khớp');
    }
}

btn_dangky.onclick = function (e) {
    var valid = true;
    if (!(tendn.value.trim() || email.value.trim() || sdt.value.trim() || matkhau.value.trim() || nlmatkhau.value.trim()))
    {
        let btn_error = document.getElementById('btn_loi');
        btn_error.innerHTML = 'Hãy điền đầy đủ các trường';
        valid = false;
    }
    if (!tendn.value.trim()) {
        setErrorFor(tendn, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    }
    else {
        setSuccessFor(tendn);
    }
    if (!email.value.trim()) {
        setErrorFor(email, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(email);
    }
    if (!sdt.value.trim()) {
        setErrorFor(sdt, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(sdt);
    }
    if (!matkhau.value.trim()) {
        setErrorFor(matkhau, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(matkhau);
    }
    if (!nlmatkhau.value.trim()) {
        setErrorFor(nlmatkhau, 'Trường này không được bỏ trống');
        valid = false;
        console.log(valid);
    } else {
        setSuccessFor(nlmatkhau);
    }
    if (!valid) {
        e.preventDefault();
    }
}

//Kiểm tra email
function validateEmail(email) {
          var em = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    //return re.test(email);
    if (email.value.match(em)) {
        return true;
    } else {
        return false;
    }
}

email.onblur = email.oninput = function () {
          if (!validateEmail(email)) {
              setErrorFor(email, "Sai định dạng email");
          }
          else {
              setSuccessFor(email);
          }
      }


//Check pass Mật khẩu phải có số và ký tự thường và ký tự in hoa
function numberPassword(matkhau) {
    var numbers = /[0-9]/g;
    if (matkhau.value.match(numbers)) {
        return true;
    }
    else return false;
}
function charactersPassword(matkhau) {
    var characters = /[a-z]/g;
    if (matkhau.value.match(characters)) {
        return true;
    }
    else return false;
}
function CharactersPassword(matkhau) {
    var Characters = /[A-Z]/g;
    if (matkhau.value.match(Characters)) {
        return true;
    }
    else return false;
}
function check(matkhau) {
    var a = /(?=.*[@#$%])/
    if (matkhau.value.match(a)) {
        return true;
    } else {
        return false;
    }
}
matkhau.onblur = matkhau.oninput = function () {
    if (!numberPassword(matkhau) || !charactersPassword(matkhau) || !check(matkhau) || !CharactersPassword(matkhau) || matkhau.value.trim().length<6) {
        setErrorFor(matkhau, "Mật khẩu phải có số, ký tự thường, ký tự in hoa, ký tự đặc biệt và lớn hơn hoặc bằng 6 kí tự");
    }
    else {
        setSuccessFor(matkhau);
    }
} 



 //Kiểm tra tên đăng nhập
  tendn.onblur = tendn.oninput = function () {
    if (tendn.value.trim().length < 6) {
        setErrorFor(tendn, 'Tên đăng nhập phải ít nhất 16 ký tự');
    } else {
        setSuccessFor(tendn);
    }
}

function numberTendn(tendn) {
    var numbers = /[0-9]/g;
    if (tendn.value.match(numbers)) {
        return true;
    }
    else return false;
}
tendn.onblur = tendn.oninput = function () {
    if (tendn.value.trim().length < 6 || numberTendn(tendn)) {
        setErrorFor(tendn, 'Tên đăng nhập phải ít nhất 6 ký tự và không chứa số');
    } else {
        setSuccessFor(tendn);
    }
}

//Kiểm tra số điện thoại
function checksdt(sdt) {
    var a = "0";
    var b = sdt.value.charAt(0);
    if (b.match(a)) {
        return true;
    }
    else {
        return false;
    }
}
function checksdt1(sdt) {
    var c = /[a-z]/g;;
    if (sdt.value.match(c)) {
        return true;
    } else {
        return false;
    }
}
sdt.onblur = sdt.oninput = function () {
    if (!checksdt(sdt) || checksdt1(sdt) || sdt.value.trim().length < 10 || sdt.value.trim().length > 12) {
        setErrorFor(sdt, "Không thỏa mãn");
    } else {
        setSuccessFor(sdt);
    }
}
//Sự kiện onblur thực hiện khi một đối tượng trong form mất focus
//Sự kiện oninput được kích hoạt khi người dùng nhập hoặc thay đổi thông tin trong thẻ.


