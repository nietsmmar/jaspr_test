import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_flutter_embed/jaspr_flutter_embed.dart';

@Import.onWeb('package:articlett_schule/main.dart', show: [#MyApp])
import 'test.imports.dart';

@client
class Test extends StatelessComponent {
  const Test({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      [
        FlutterEmbedView(
          styles: Styles(
            width: 412.px,
            height: 915.px,
          ),
          loader: Component.text('loading...'),
          widget: kIsWeb ? MyApp() : null,
        ),
      ],
    );
  }
}

// Could not load content for http://localhost:8080/packages/dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart (HTTP error: status code 404, net::ERR_HTTP_RESPONSE_CODE_FAILURE)
