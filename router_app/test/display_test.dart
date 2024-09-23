import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:router_app/screen/home.dart';
import 'package:router_app/widgets/custom_button.dart';
import 'package:router_app/widgets/tile_container.dart';

void main() {
  testWidgets('Task list is displayed correctly', (WidgetTester tester) async {
    // Create a GoRouter instance
    final router = GoRouter(
      routes: [
        GoRoute(
          name: "home",
          path: "/",
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          name: "addTask",
          path: "/add-task",
          builder: (context, state) {
            return Scaffold(
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop({
                      "title": "Buy milk",
                      "description": "Get some dairy",
                      "dueDate": "September 30, 2023",
                    });
                  },
                  child: const Text('Add Task'),
                ),
              ),
            );
          },
        ),
      ],
    );

    await tester.pumpWidget(MaterialApp.router(
      routerConfig: router,
    ));

    expect(find.text('Task List'), findsOneWidget);
    expect(find.byType(CustomTileContainer), findsNothing); 

    await tester.tap(find.byType(CustomButton));
    await tester.pumpAndSettle(); 

    expect(find.text('Buy milk'), findsOneWidget);
    expect(find.byType(CustomTileContainer), findsOneWidget); 
    expect(find.text('September 30, 2023'), findsOneWidget);
  });
}
