import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/home_page.dart';

void main() {

  testWidgets(
    "given counter is 0 when increment button is clicked then counter should be 1",
        (widgetTester) async{
     await widgetTester.pumpWidget(MaterialApp(home: MyHomePage(title: "Counter App")));
      final ctr = find.text('0');
      expect(ctr, findsOneWidget);
  },);
}