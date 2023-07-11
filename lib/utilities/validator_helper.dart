class ValidatorHelper {

  //todo 임시조건 조건식 추가해야됨.

  static String? emailValidator(String? value) {
    if(value != "email") {
      return "올바른 이메일 형식이 아닙니다.";
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if(value != "password") {
      return "8자 이상의 영문, 숫자, 특수문자만 가능합니다.";
    }
    return null;
  }

  static String? compareValidator(String? value, String? compareValue) {
    if(value == null) return null;
    if(compareValue == null) return null;

    return value! == compareValue! ? null : "비밀번호가 일치하지 않습니다.";
  }
}