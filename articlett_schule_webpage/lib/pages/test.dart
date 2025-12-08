import 'package:jaspr/jaspr.dart';
import 'package:jaspr_flutter_embed/jaspr_flutter_embed.dart';

@Import.onWeb('package:flutter_test_app/main.dart', show: [#MyApp])

@client
class Test extends StatelessComponent {
  const Test({super.key});

  @override
  Component build(BuildContext context) {
    return FlutterEmbedView(
      loader: text('loading...'),
      widget: MyApp(
        title: 'My Embedded Flutter App',
      ),
    );
  }
}
