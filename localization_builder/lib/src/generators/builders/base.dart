import 'package:recase/recase.dart';

String createFieldName(String name) {
  // final cased = ReCase(name);
  // return _removeSpecialCharacters(cased.camelCase);
  return name;
}

String createClassdName(String name) {
  final cased = ReCase(name);
  return _removeSpecialCharacters(cased.pascalCase);
}

String _removeSpecialCharacters(String value) {
  final result = StringBuffer();
  final regexp = RegExp('[a-zA-Z0-9_]');
  for (var i = 0; i < value.length; i++) {
    final character = value[i];
    if (regexp.allMatches(character).isNotEmpty) {
      result.write(character);
    }
  }

  return result.toString();
}

extension DoubleBuilderExtensions on num {
  String buildDouble() {
    return toStringAsFixed(2);
  }
}
