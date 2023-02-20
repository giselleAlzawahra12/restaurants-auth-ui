import 'package:flutter/material.dart';

import 'light_theme.dart';

ThemeData _theme = ThemeData(
  fontFamily: "Georgia",
);

ThemeData lightTheme = _theme.copyWith(colorScheme: lightColorSchema);
 ///ThemeData darkTheme = _theme.copyWith(colorScheme: darkColorSchema);
