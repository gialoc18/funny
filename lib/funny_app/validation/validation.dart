class Validation{
  static String validatePass(String pass){
    if(pass == null){
      return "Bạn chưa nhập mật khẩu";
    }
    if(pass.length < 6){
      return "Mật khẩu phải lớn hơn 6 ký tự";
    }
    return null;
  }
  static String validateEmail(String email){
    if(email == null){
      return "Bạn chưa nhập tài khoản";
    }
    var isValid = RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    if(!isValid){
      return "Email không đúng định dạng";
    }
    return null;
  }
}