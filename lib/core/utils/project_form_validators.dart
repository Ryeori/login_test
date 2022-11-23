import 'package:danshulgin_login/core/utils/regexp.dart';
import 'package:flutter/cupertino.dart';

class ProjectFormValidators {
  static final RegExp _emailValidationRegExp =
      RegExp(emailValidationRegExpString);
  static final RegExp _passwordValidationRegExp =
      RegExp(passwordValidationRegExpString);

  static String? emailFieldValidator(String? value) {
    final trimmedValue = value?.trim() ?? '';
    if (trimmedValue.isEmpty) {
      return 'Введите email';
    } else if (!_emailValidationRegExp.hasMatch(trimmedValue)) {
      return 'Введите корректный email';
    }
    return null;
  }

  static String? passwordFieldValidator(String? value) {
    final trimmedValue = value?.trim() ?? '';
    if (trimmedValue.isEmpty) {
      return 'Введите пароль';
    } else if (!_passwordValidationRegExp.hasMatch(trimmedValue)) {
      return 'Введите более сложный пароль';
    }
    return null;
  }

  static String? repeatPasswordFieldValidator(
    String? value,
    TextEditingController primaryPasswordController,
  ) {
    final trimmedValue = value?.trim() ?? '';
    if (trimmedValue.isEmpty) {
      return 'Введите пароль';
    } else if (!_passwordValidationRegExp.hasMatch(trimmedValue)) {
      return 'Введите более сложный пароль';
    }
    if (primaryPasswordController.text != value) {
      return 'Пароли должны совпадать';
    }
    return null;
  }
}
