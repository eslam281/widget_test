import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/counter/home_page.dart';

void main() {

  testWidgets(
    "given counter is 0 when increment button is clicked then counter should be 1",
        (widgetTester) async{
     await widgetTester.pumpWidget(
         MaterialApp(home: MyHomePage(title: "Counter App"))
     );

      final ctr = find.text('0');
      expect(ctr, findsOneWidget);

      final ctr2 = find.text('1');
      expect(ctr2, findsNothing);

      final incrementBtn =  find.byType(FloatingActionButton);
      await widgetTester.tap(incrementBtn);

     await widgetTester.pump();

     final ctr3 = find.text('1');
     expect(ctr3, findsOneWidget);

     expect(find.byType(AppBar), findsOneWidget);
    },);
}