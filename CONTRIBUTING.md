# Contributing to Tokyoapps

## Development Setup

1. Fork the repository
2. Clone: `git clone <your-fork>`
3. Install Flutter: https://docs.flutter.dev/get-started/install
4. Verify installation: `flutter doctor`
5. Get dependencies: `flutter pub get`

## Code Standards

### Flutter/Dart Best Practices
- **Const Constructors**: Use `const` wherever possible
- **Immutable Widgets**: Prefer StatelessWidget
- **Named Parameters**: Use for optional parameters
- **Type Safety**: No `dynamic` unless necessary
- **Null Safety**: Sound null safety required

### Naming Conventions
- Classes: `PascalCase`
- Variables/Functions: `camelCase`
- Constants: `lowerCamelCase` or `kConstantName`
- Private: `_leadingUnderscore`
- Files: `snake_case.dart`

### Widget Structure
```dart
class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.title,
    this.subtitle,
  });

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        if (subtitle != null) Text(subtitle!),
      ],
    );
  }
}
```

## Testing

### Unit Tests
```dart
test('should parse JSON correctly', () {
  final json = {'name': 'Test'};
  final model = MyModel.fromJson(json);
  expect(model.name, 'Test');
});
```

### Widget Tests
```dart
testWidgets('displays title', (tester) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: MyWidget(title: 'Test'),
    ),
  );
  
  expect(find.text('Test'), findsOneWidget);
});
```

## Commit Guidelines

Format: `type(scope): description`

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Formatting
- `refactor`: Code restructure
- `test`: Tests
- `chore`: Maintenance

Example: `feat(auth): add biometric login`

## Pull Requests

- Link related issues
- Include screenshots for UI changes
- Add tests for new features
- Run `flutter analyze && flutter test` before submitting
- Update documentation
- Ensure CI passes
