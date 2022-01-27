// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';

/// checks if the input is match other string
class Match extends TextValidationRule {
  final String other;
  final bool caseSensitive;

  Match(
    this.other, {
    this.caseSensitive = true,
    String? error,
  }) : super(error);

  @override
  bool isValid(String input) => caseSensitive
      ? match(input, other)
      : match(input.toLowerCase(), other.toLowerCase());

  // @override
  // String get localizedError => 'validation.should_match'.args({
  //       'value1': other,
  //       'value2': caseSensitive.toString(),
  //     });
}

/// checks if two `Strings` are the same
bool match(
  Object? input,
  Object? other,
) =>
    input != null &&
        other != null &&
        input.runtimeType == other.runtimeType &&
        identical(input, other) ||
    input == other;
