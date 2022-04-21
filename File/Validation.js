function validation() {
    var name = document.getElementById("name").value;
    var namereg = /^[a-zA-Z ]{3,30}$/;
    if (name.match(namereg) == null) {
        alert("Please enter a valid name!!");
        return false;
    }

    var phone = document.getElementById("phone");
    var phonereg = /^[0-9]{10}$/;
    if (phone.value.match(phonereg) == null) {
        alert("Please enter a valid Phone number!!");
        return false;
    }


    var aadhar = document.getElementById("aadhar");
    var aadhar2 = document.getElementById("aadhar2");
    var aadhar3 = document.getElementById("aadhar3");

    var aadharreg = /^[0-9]{4}$/;
    if (aadhar.value.match(aadharreg) == null || aadhar2.value.match(aadharreg) == null || aadhar3.value.match(aadharreg) == null) {
        alert("Please enter proper aadhar number")
        return false;
    }

    var pincode = document.getElementById("pincode");
    var pinreg = /^[0-9]{6}$/;
    if (pincode.value.match(pinreg) == null) {
        alert("Please enter proper aadhar number")
        return false;
    }
    return true;

}

function regValidate() {
    if (validation()) {
        alert("Form Submitted Success!");
    }
}