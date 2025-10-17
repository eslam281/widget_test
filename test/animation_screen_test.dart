


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/animation/animation_screen.dart';

void main() {
testWidgets(
    "AnimationScreen Widget Test",
      (widgetTester) async{
      await widgetTester.pumpWidget(MaterialApp(home: AnimationScreen(),));

      final containerFinder = find.byType(Container);
      expect(containerFinder, findsOneWidget);

      var container = widgetTester.widget(containerFinder) as Container;

      // INITIAL
      expect(container.constraints?.maxWidth,50);
      expect(container.constraints?.maxHeight,50);
      expect((container.decoration as BoxDecoration).color,Colors.blue);
      expect((container.decoration as BoxDecoration).borderRadius,BorderRadius.zero);
      
      //
        await widgetTester.pumpAndSettle();
       container = widgetTester.widget(containerFinder) as Container;

      expect(container.constraints?.maxWidth,200);
      expect(container.constraints?.maxHeight,200);
      expect((container.decoration as BoxDecoration).color,Colors.green);
      expect((container.decoration as BoxDecoration).borderRadius,BorderRadius.circular(50));


    },
);
}