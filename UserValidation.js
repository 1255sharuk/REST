function userValid() {
    var Name, EmailId, password, confirmpassword, emailExp;
    Name = document.getElementById("txtUsername").value;
    password = document.getElementById("txtPassword").value;
    confirmpassword = document.getElementById("txtConfirmPassword").value;

    EmailId = document.getElementById("txtEmail").value;
    emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

    if (Name == '' && password == '' && confirmpassword == '' && EmailId == '') {
        alert("Enter All Fields");
        return false;
    }
    if (Name == '') {
        alert("Please Enter Login ID");
        return false;
    }

    if (password == '') {
        alert("Please Enter password");
        return false;
    }

    if (EmailId == '') {
        alert("Email Id Is Required");
        return false;
    }
if (EmailId != '') {
    if (!EmailId.match(emailExp)    
    {
            
            alert("Invalid Email Id");
            return false;
        }
    }
    return true;
}