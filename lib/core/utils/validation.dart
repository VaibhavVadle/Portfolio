class Validation {
  static isEmpty(
    String value, {
    required String errorText,
  }) {
    if (value.isEmpty || value == "") {
      return errorText;
    }
    return null;
  }
}
