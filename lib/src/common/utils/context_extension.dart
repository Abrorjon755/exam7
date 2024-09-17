import 'package:flutter/material.dart';

import '../l10n/generated/l10n.dart';
import '../style/app_theme.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colors => Theme.of(this).colorScheme;

  ColorExtension get myColors =>
      Theme.of(this).extensions[ColorExtension] as ColorExtension;

  S get lang => S.of(this);
}
