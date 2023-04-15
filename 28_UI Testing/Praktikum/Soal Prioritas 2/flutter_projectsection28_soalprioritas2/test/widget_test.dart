import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_projectsection28_soalprioritas2/main.dart';

void main() {
  testWidgets('UI Testing HomePage1', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomePage1(),
    ));

    //Test app bar title text
    expect(find.text('Halaman Untuk UI Testing'), findsOneWidget);

    //Test app bar leading icon
    expect(find.descendant(
      of: find.byType(AppBar), 
      matching: find.byIcon(Icons.check_circle)
      ), 
      findsOneWidget);

    //Test teks di body SingleChildScrollView
    expect(find.text('Disini Kita Belajar UI Testing'), findsOneWidget);

    //Test padding
    final findPadding= find.byType(Padding);
    expect(findPadding, findsNWidgets(6));

   //Verifikasi kondisi mula-mula
    expect(find.text('Search'), findsOneWidget); 
    expect(find.text('Home'), findsOneWidget); 
    expect(find.text('Setting'), findsOneWidget); 

    //Tap on 'Search' item
    await tester.tap(find.text('Search'));
    await tester.pumpAndSettle();

    //Tap on 'Home' item
    await tester.tap(find.text('Home'));
    await tester.pumpAndSettle();

    //Tap on 'Setting' item
    await tester.tap(find.text('Setting'));
    await tester.pumpAndSettle();

  });
}