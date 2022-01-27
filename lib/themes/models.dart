import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class QTheme extends Equatable {
  /// theme id
  /// used to save in shared preferences to load next time the
  /// app opens
  final String id;

  /// theme name to display
  final String name;

  /// the actual theme
  final ThemeData theme;
  const QTheme({
    required this.id,
    required this.theme,
    required this.name,
  });

  @override
  List<Object> get props => [
        id,
        name,
        theme,
      ];
}

class ThemeConfig {
  const ThemeConfig();

  /// * List of available thames
  List<QTheme> get themes => [
        QTheme(
          id: 'dark',
          name: 'Dark',
          theme: ThemeData.dark(),
        ),
        QTheme(
          id: 'light',
          name: 'Light',
          theme: ThemeData.light(),
        ),
      ];
}
