import 'package:education/templates/lab6/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ProfileCard displays correct information',
      (WidgetTester tester) async {
    // Arrange
    const imageUrl = 'https://example.com/image.jpg';
    const name = 'John Doe';
    const description = 'Software Developer';

    // Act
    // TODO add test using pumpWidget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ProfileCard(
            imageUrl: imageUrl,
            name: name,
            description: description,
          ),
        ),
      ),
    );

    // Assert
    // TODO add assertions using expect and findsOneWidget
    expect(find.byType(CircleAvatar), findsOneWidget);
    expect(find.byType(Card), findsOneWidget);
    expect(find.text(name), findsOneWidget);
    expect(find.text(description), findsOneWidget);

    // Check if the CircleAvatar has the correct image
    final circleAvatar = tester.widget<CircleAvatar>(find.byType(CircleAvatar));
    final imageProvider = circleAvatar.backgroundImage as NetworkImage;
    expect(imageProvider.url, imageUrl);
  });
}

    // Test using flutter test test/custom_button_test.dart
