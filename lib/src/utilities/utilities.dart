class Utils {
  static String parsToString(dynamic x, {String defaultValue = ''}) {
    if (x == null) {
      return defaultValue;
    }
    switch (x.runtimeType) {
      case double:
        return x.toString();
      case String:
        return x;
      case int:
        return x.toString();
      default:
        return defaultValue;
    }
  }
}