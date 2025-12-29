import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_flutter_embed/jaspr_flutter_embed.dart';

@Import.onWeb('package:flutter_test_app/main.dart', show: [#MyApp])
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
