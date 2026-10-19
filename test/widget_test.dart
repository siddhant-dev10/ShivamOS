import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shivamos/main.dart';

void main() {
  testWidgets('ShivamOS App Smoke Test - Renders Brand and Hotel Title', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: ShivamOSApp()));
    await tester.pumpAndSettle();

    // Verify ShivamOS branding exists
    expect(find.text('ShivamOS'), findsWidgets);
    // Verify Hotel New Shivam Inn client branding exists
    expect(find.text('Hotel New Shivam Inn'), findsWidgets);
  });
}
