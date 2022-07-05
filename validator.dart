class Validator {

  /// Can be used with any type of common text fields like Name, Address String, etc.
  static String? commonValidator({required String? val, required String? errorMessage, int? characterLimit, String? errorMessageForCharacter}) {
    if (val == null) {
      return null;
    }
    if (val.isEmpty) {
      return errorMessage;
    }
    if(characterLimit != null) {
      if (val.length < characterLimit) {
        return errorMessageForCharacter ?? '';
      }
    }
    return null;
  }

  /// Can be used to validate email address with regex available
  static String? validateEmail({required String? val}) {
    if (val == null) {
      return null;
    }
    RegExp emailRegExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (val.isEmpty) {
      return 'Email can\'t be empty';
    } else if (!emailRegExp.hasMatch(val)) {
      return 'Invalid email';
    }
    return null;
  }
}
