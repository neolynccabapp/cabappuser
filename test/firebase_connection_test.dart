import 'package:mockito/mockito.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';

// Create a mock class for FirebaseApp
class MockFirebaseApp extends Mock implements FirebaseApp {}

void main() {
  test('Mock Firebase Initialization Test', () async {
    // Create the mock app
    final mockApp = MockFirebaseApp();

    // Define the mock response for the name property
    when(mockApp.name).thenReturn('mockApp'); // Mock the 'name' property

    // Check the mock result
    expect(mockApp.name, 'mockApp'); // Test if the mock value is correct
  });
}
