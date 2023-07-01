import 'package:commons/theme/extensions/common_teste.dart';
import 'package:commons/widgets/common_button.dart';
import 'package:commons/widgets/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should have button height 50', (tester) async {
    await tester.pumpWidget(
      makeTestable(
        const CommonButton(
          child: CommonText('LOGIN'),
        ),
      ),
    );

    final findElevatedButton = find.byType(ElevatedButton);

    expect(findElevatedButton, findsOneWidget);

    final ElevatedButton button = tester.widget(findElevatedButton);

    expect(button.style!.fixedSize!.resolve({})!.height, 50);
  });

  testWidgets(
    'Should have color with Color(0xFF4157FF)',
    (tester) async {
      await tester.pumpWidget(
        makeTestable(
          const CommonButton(
            child: CommonText('LOGIN'),
          ),
        ),
      );

      final findElevatedButton = find.byType(ElevatedButton);

      expect(findElevatedButton, findsOneWidget);

      final ElevatedButton button = tester.widget(findElevatedButton);

      expect(
        button.style!.backgroundColor!.resolve({}).toString(),
        'Color(0xff4157ff)',
      );
    },
  );

  testWidgets(
    'Should have color with Color(0xFF4157FF)',
    (tester) async {
      await tester.pumpWidget(
        makeTestable(
          const CommonButton(
            child: CommonText('LOGIN'),
          ),
        ),
      );

      final findElevatedButton = find.byType(CommonText);

      expect(findElevatedButton, findsOneWidget);

      final CommonText text = tester.widget(findElevatedButton);

      expect(
        text.text,
        'LOGIN',
      );
    },
  );
}
