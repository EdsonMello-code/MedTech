import 'package:commons/main.dart';
import 'package:commons/theme/extensions/common_teste.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Must have three dot, filled up to the second', (tester) async {
    await tester.pumpWidget(
      makeTestable(
        const CommonDots(
          dotsLenght: 3,
          currentIndexDot: 2,
        ),
      ),
    );

    final finderRow = find.byType(Row);

    expect(finderRow, findsOneWidget);

    final Row rowDots = tester.widget(finderRow);

    expect(rowDots.children.length, 3);
    final commonsDots = find.byType(CommonDot);

    expect(commonsDots, findsNWidgets(3));

    final commons = tester.widgetList(commonsDots);

    expect(
      (commons.first as CommonDot).color.toString(),
      'Color(0xff4157ff)',
    );
    expect(
      (commons.toList()[1] as CommonDot).color.toString(),
      'Color(0xff4157ff)',
    );
    expect(
      (commons.last as CommonDot).color.toString(),
      'Color(0xff4157ff)',
    );
  });
}
