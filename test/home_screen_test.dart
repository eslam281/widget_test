import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/users/home_screen.dart';
import 'package:widget_test/users/user_model.dart';

void main() {

  testWidgets("Display list of users with title as name and subtitle as email",
        (widgetTester) async{
    final users = [
      User(id: 1, name: "islam", email: "asfdas@gmail.com"),
      User(id: 2, name: "asdfdasf", email: "sdffffffg@gmail.com"),
    ];

    Future<List<User>> mockFutureUsers ()async{
     return Future.delayed(Duration(seconds: 1), () => users);
    }


   await widgetTester.pumpWidget(
        MaterialApp(home: HomeScreen(futureUsers: mockFutureUsers()),)
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await widgetTester.pumpAndSettle();/////////////////////////// V.I

    expect(find.byType(ListView), findsOneWidget);
    
    expect(find.byType(ListTile), findsNWidgets(users.length));

    for(final user in users){
      expect(find.text(user.name), findsOneWidget);
      expect(find.text(user.email), findsOneWidget);
    }

  },);
}