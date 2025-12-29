// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/client.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:app_links_web/app_links_web.dart' as _app_links_web;
import 'package:articlett_schule_webpage/pages/about.dart' deferred as _about;
import 'package:articlett_schule_webpage/pages/home.dart' deferred as _home;
import 'package:articlett_schule_webpage/pages/test.dart' deferred as _test;
import 'package:device_info_plus/src/device_info_plus_web.dart'
    as _device_info_plus_web;
import 'package:flutter_inappwebview_web/web/main.dart' as _main;
import 'package:image_picker_for_web/image_picker_for_web.dart'
    as _image_picker_for_web;
import 'package:package_info_plus/src/package_info_plus_web.dart'
    as _package_info_plus_web;
import 'package:pdfx/src/renderer/web/pdfx_plugin.dart' as _pdfx_plugin;
import 'package:pointer_interceptor_web/pointer_interceptor_web.dart'
    as _pointer_interceptor_web;
import 'package:share_plus/src/share_plus_web.dart' as _share_plus_web;
import 'package:shared_preferences_web/shared_preferences_web.dart'
    as _shared_preferences_web;
import 'package:url_launcher_web/url_launcher_web.dart' as _url_launcher_web;
import 'package:video_player_web/video_player_web.dart' as _video_player_web;
import 'package:youtube_player_iframe_web/src/web_youtube_player_iframe_platform.dart'
    as _web_youtube_player_iframe_platform;

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
    _web_youtube_player_iframe_platform
        .WebYoutubePlayerIframePlatform.registerWith(registrar);
    _video_player_web.VideoPlayerPlugin.registerWith(registrar);
    _url_launcher_web.UrlLauncherPlugin.registerWith(registrar);
    _shared_preferences_web.SharedPreferencesPlugin.registerWith(registrar);
    _share_plus_web.SharePlusWebPlugin.registerWith(registrar);
    _pointer_interceptor_web.PointerInterceptorWeb.registerWith(registrar);
    _pdfx_plugin.PdfxPlugin.registerWith(registrar);
    _package_info_plus_web.PackageInfoPlusWebPlugin.registerWith(registrar);
    _image_picker_for_web.ImagePickerPlugin.registerWith(registrar);
    _main.InAppWebViewFlutterPlugin.registerWith(registrar);
    _device_info_plus_web.DeviceInfoPlusWebPlugin.registerWith(registrar);
    _app_links_web.AppLinksPluginWeb.registerWith(registrar);
    registrar.registerMessageHandler();
  },
  clients: {
    'about': ClientLoader((p) => _about.About(), loader: _about.loadLibrary),
    'home': ClientLoader((p) => _home.Home(), loader: _home.loadLibrary),
    'test': ClientLoader((p) => _test.Test(), loader: _test.loadLibrary),
  },
);
