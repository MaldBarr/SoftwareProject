import 'dart:ui';
import 'package:medi_mate/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.h),
        ),
      );
  static ButtonStyle get fillOnError => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onError,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33.h),
        ),
      );
  static ButtonStyle get fillSecondaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
