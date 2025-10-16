import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/users/home_screen.dart';
import 'package:widget_test/users/user_repository.dart';

void main() {

  testWidgets("Display list of users with title as name and subtitle as email",
        (widgetTester) async{
   await widgetTester.pumpWidget(
        MaterialApp(home: HomeScreen(futureUsers: UserRepository().fetchUsers()),)
    );
    expect(find.byType(AppBar), findsOneWidget);
  },);
}