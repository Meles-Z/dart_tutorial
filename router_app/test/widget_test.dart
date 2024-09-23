import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:router_app/screen/add_task.dart';

void main() {
  testWidgets('Create a task with valid input', (WidgetTester tester) async {
    final router = GoRouter(
      routes: [
        GoRoute(
          name: "addTask",
          path: "/add-task",
          builder: (context, state) => const AddTask(),
        ),
      ],
    );

    await tester.pumpWidget(MaterialApp.router(
      routerConfig: router,
    ));

    router.go('/add-task');
    await tester.pumpAndSettle(); 
    expect(find.byType(AddTask), findsOneWidget);

    expect(find.byType(TextField), findsNWidgets(2));

    // Enter text in Title TextField
    await tester.enterText(find.byWidgetPredicate((widget) =>
        widget is TextField &&
        widget.decoration?.hintText == 'Task Title'), 'Buy milk');

    await tester.enterText(find.byWidgetPredicate((widget) =>
        widget is TextField &&
        widget.decoration?.hintText == 'Enter task description...'), 'Need to buy milk for breakfast');

    await tester.tap(find.text('Pick a date'));
    await tester.pumpAndSettle();

    final selectedDate = DateTime.now();
    await tester.tap(find.text('${selectedDate.day}')); 
    await tester.pumpAndSettle(); 

    // Tap the "Add task" button
    await tester.tap(find.text('Add task'));
    await tester.pump(); 
    // Verify that the task was added with the right values
    expect(find.text('Buy milk'), findsOneWidget);
    expect(find.text('Need to buy milk for breakfast'), findsOneWidget);
  });
}
