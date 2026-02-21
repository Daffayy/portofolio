import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:personal_portofolio/main.dart';

void main() {
  testWidgets('Portfolio app loads and displays content',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: PortfolioApp(),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Daffa Rafif Agustian'), findsOneWidget);
    expect(find.text('Mobile Developer'), findsOneWidget);
  });
}
