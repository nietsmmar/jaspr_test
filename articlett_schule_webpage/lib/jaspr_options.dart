// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:articlett_schule_webpage/components/counter.dart' as prefix0;
import 'package:articlett_schule_webpage/components/header.dart' as prefix1;
import 'package:articlett_schule_webpage/pages/about.dart' as prefix2;
import 'package:articlett_schule_webpage/pages/home.dart' as prefix3;
import 'package:articlett_schule_webpage/pages/test.dart' as prefix4;
import 'package:articlett_schule_webpage/app.dart' as prefix5;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
JasprOptions get defaultJasprOptions => JasprOptions(
  clients: {
    prefix2.About: ClientTarget<prefix2.About>('pages/about'),

    prefix3.Home: ClientTarget<prefix3.Home>('pages/home'),

    prefix4.Test: ClientTarget<prefix4.Test>('pages/test'),
  },
  styles: () => [
    ...prefix0.CounterState.styles,
    ...prefix1.Header.styles,
    ...prefix2.About.styles,
    ...prefix5.App.styles,
  ],
);
