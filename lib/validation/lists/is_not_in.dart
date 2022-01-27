// import 'package:queen/translations.dart';
import 'package:queen/validation.dart';
import 'package:queen_validators/lits.dart';

/// checks if the input `is NOT in` provided List;
class IsNotIn extends TextValidationRule {
  final List<Object> list;

  IsNotIn(this.list, [String? error]) : super(error);

  @override
  bool isValid(String input) => isNotIn(input, list);

  // @override
  // String get localizedError => 'validation.must_not_be_in_list'.args({
  //       'list': list.toString(),
  //     });
}
