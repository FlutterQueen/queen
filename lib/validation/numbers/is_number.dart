// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/numbers.dart';

/// checks if the input is a valid `integer`
class IsNumber extends TextValidationRule {
  IsNumber([String? error]) : super(error);

  @override
  bool isValid(String input) => isNumber(input);
  // @override
  // String get localizedError => 'validation.must_be_int'.tr;
}
