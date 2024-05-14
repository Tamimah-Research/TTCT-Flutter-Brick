import '/src/colors.dart';
import '/src/typography/typography.dart';
import 'package:flutter/material.dart';

const _smallTextScaleFactor = 0.80;
const _largeTextScaleFactor = 1.20;

/// Namespace for the {{#pascalCase}}{{project_name}}{{/pascalCase}} [ThemeData].
class {{#pascalCase}}{{project_name}}{{/pascalCase}}Theme {
  /// Standard `ThemeData` for {{#pascalCase}}{{project_name}}{{/pascalCase}} UI.
  static ThemeData get standard {
    return ThemeData(
      colorScheme:
          ColorScheme.fromSwatch(accentColor: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.primary),
      appBarTheme: _appBarTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textTheme: _textTheme,
      dialogBackgroundColor: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.whiteBackground,
      dialogTheme: _dialogTheme,
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      tabBarTheme: _tabBarTheme,
      dividerTheme: _dividerTheme,
    );
  }

  /// `ThemeData` for {{#pascalCase}}{{project_name}}{{/pascalCase}} UI for small screens.
  static ThemeData get small {
    return standard.copyWith(textTheme: _smallTextTheme);
  }

  /// `ThemeData` for {{#pascalCase}}{{project_name}}{{/pascalCase}} UI for medium screens.
  static ThemeData get medium {
    return standard.copyWith(textTheme: _smallTextTheme);
  }

  /// `ThemeData` for {{#pascalCase}}{{project_name}}{{/pascalCase}} UI for large screens.
  static ThemeData get large {
    return standard.copyWith(textTheme: _largeTextTheme);
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline1,
      displayMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline2,
      displaySmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline3,
      headlineMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline4,
      headlineSmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline5,
      titleLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline6,
      titleMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.subtitle1,
      titleSmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.subtitle2,
      bodyLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.bodyText1,
      bodyMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.bodyText2,
      bodySmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.caption,
      labelSmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.overline,
      labelLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.button,
    );
  }

  static TextTheme get _smallTextTheme {
    return TextTheme(
    displayLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline1.copyWith(
        fontSize: _textTheme.displayLarge!.fontSize! * _smallTextScaleFactor,
      ),
      displayMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline2.copyWith(
        fontSize: _textTheme.displayMedium!.fontSize! * _smallTextScaleFactor,
      ),
      displaySmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline3.copyWith(
        fontSize: _textTheme.displaySmall!.fontSize! * _smallTextScaleFactor,
      ),
      headlineMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline4.copyWith(
        fontSize: _textTheme.headlineMedium!.fontSize! * _smallTextScaleFactor,
      ),
      headlineSmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline5.copyWith(
        fontSize: _textTheme.headlineSmall!.fontSize! * _smallTextScaleFactor,
      ),
      titleLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline6.copyWith(
        fontSize: _textTheme.titleLarge!.fontSize! * _smallTextScaleFactor,
      ),
      titleMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.subtitle1.copyWith(
        fontSize: _textTheme.titleMedium!.fontSize! * _smallTextScaleFactor,
      ),
      titleSmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.subtitle2.copyWith(
        fontSize: _textTheme.titleSmall!.fontSize! * _smallTextScaleFactor,
      ),
      bodyLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.bodyText1.copyWith(
        fontSize: _textTheme.bodyLarge!.fontSize! * _smallTextScaleFactor,
      ),
      bodyMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.bodyText2.copyWith(
        fontSize: _textTheme.bodyMedium!.fontSize! * _smallTextScaleFactor,
      ),
      bodySmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.caption.copyWith(
        fontSize: _textTheme.bodySmall!.fontSize! * _smallTextScaleFactor,
      ),
      labelSmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.overline.copyWith(
        fontSize: _textTheme.labelSmall!.fontSize! * _smallTextScaleFactor,
      ),
      labelLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.button.copyWith(
        fontSize: _textTheme.labelLarge!.fontSize! * _smallTextScaleFactor,
      ),
    );
  }

  static TextTheme get _largeTextTheme {
    return TextTheme(
      displayLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline1.copyWith(
        fontSize: _textTheme.displayLarge!.fontSize! * _largeTextScaleFactor,
      ),
      displayMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline2.copyWith(
        fontSize: _textTheme.displayMedium!.fontSize! * _largeTextScaleFactor,
      ),
      displaySmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline3.copyWith(
        fontSize: _textTheme.displaySmall!.fontSize! * _largeTextScaleFactor,
      ),
      headlineMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline4.copyWith(
        fontSize: _textTheme.headlineMedium!.fontSize! * _largeTextScaleFactor,
      ),
      headlineSmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline5.copyWith(
        fontSize: _textTheme.headlineSmall!.fontSize! * _largeTextScaleFactor,
      ),
      titleLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.headline6.copyWith(
        fontSize: _textTheme.titleLarge!.fontSize! * _largeTextScaleFactor,
      ),
      titleMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.subtitle1.copyWith(
        fontSize: _textTheme.titleMedium!.fontSize! * _largeTextScaleFactor,
      ),
      titleSmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.subtitle2.copyWith(
        fontSize: _textTheme.titleSmall!.fontSize! * _largeTextScaleFactor,
      ),
      bodyLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.bodyText1.copyWith(
        fontSize: _textTheme.bodyLarge!.fontSize! * _largeTextScaleFactor,
      ),
      bodyMedium: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.bodyText2.copyWith(
        fontSize: _textTheme.bodyMedium!.fontSize! * _largeTextScaleFactor,
      ),
      bodySmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.caption.copyWith(
        fontSize: _textTheme.bodySmall!.fontSize! * _largeTextScaleFactor,
      ),
      labelSmall: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.overline.copyWith(
        fontSize: _textTheme.labelSmall!.fontSize! * _largeTextScaleFactor,
      ),
      labelLarge: {{#pascalCase}}{{project_name}}{{/pascalCase}}TextStyle.button.copyWith(
        fontSize: _textTheme.labelLarge!.fontSize! * _largeTextScaleFactor,
      ),
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(color: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.primary);
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        backgroundColor: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.primary,
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        side: const BorderSide(color: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.white, width: 2),
        foregroundColor: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.white,
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return const TooltipThemeData(
      decoration: BoxDecoration(
        color: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.charcoal,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.all(10),
      textStyle: TextStyle(color: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.white),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.whiteBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme get _tabBarTheme {
    return const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2,
          color: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.primary,
        ),
      ),
      labelColor: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.primary,
      unselectedLabelColor: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.black25,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  static DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      space: 0,
      thickness: 1,
      color: {{#pascalCase}}{{project_name}}{{/pascalCase}}Colors.black25,
    );
  }
}
