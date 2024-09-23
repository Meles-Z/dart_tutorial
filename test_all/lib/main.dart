import 'package:flutter/material.dart';
import 'package:test_all/main_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    "test description",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: MyApp(),
        ), );
        Finder finder=find.text("Check email");
        expect(finder, findsOneWidget);
    },
  );
  testWidgets("test input field", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MainScreen(),));
    Finder email=find.byKey(const ValueKey("email_field"));
    expect(email, findsOneWidget);
  });

  testWidgets("button testing", (WidgetTester tester)async{
    await tester.pumpWidget(const MaterialApp(
      home: MainScreen(),
    ));
    Finder button=find.byType(ElevatedButton);
    expect(button,findsOneWidget);

  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen(),
    );
  }
}
