extension LocalePhone on String {
  String toLocale() {
    if (length == 12) {
      return replaceFirst('0', '62');
    }
    return this;
  }
}
