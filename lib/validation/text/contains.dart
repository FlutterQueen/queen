// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';

/// checks if the input does contain the provided value;

class Contains extends TextValidationRule {
  final String value;

  Contains(this.value, [String? error]) : super(error);

  @override
  bool isValid(String input) => input.trim().contains(value);
  // @override
  // String get localizedError =>
  // 'validation.is_it_contains'.args({'value': value});
}
