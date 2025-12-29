// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/client.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:articlett_schule_webpage/pages/about.dart' deferred as _about;
import 'package:articlett_schule_webpage/pages/home.dart' deferred as _home;
import 'package:articlett_schule_webpage/pages/test.dart' deferred as _test;
import 'package:device_info_plus/src/device_info_plus_web.dart'
    as _device_info_plus_web;
import 'package:package_info_plus/src/package_info_plus_web.dart'
    as _package_info_plus_web;
import 'package:shared_preferences_web/shared_preferences_web.dart'
    as _shared_preferences_web;

/// Default [ClientOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.client.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultClientOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ClientOptions get defaultClientOptions => ClientOptions(
  initialize: () {
    final Registrar registrar = webPluginRegistrar;
    _shared_preferences_web.SharedPreferencesPlugin.registerWith(registrar);
    _package_info_plus_web.PackageInfoPlusWebPlugin.registerWith(registrar);
    _device_info_plus_web.DeviceInfoPlusWebPlugin.registerWith(registrar);
    registrar.registerMessageHandler();
  },
  clients: {
    'about': ClientLoader((p) => _about.About(), loader: _about.loadLibrary),
    'home': ClientLoader((p) => _home.Home(), loader: _home.loadLibrary),
    'test': ClientLoader((p) => _test.Test(), loader: _test.loadLibrary),
  },
);
