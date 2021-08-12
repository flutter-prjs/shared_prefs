# shared_pref

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# How to run the examples

There are two examples here:

- Counter example
- SharedPrefs example

To test the two examples, you have to change the `LoadPage()` to `MyHomePage(title: 'SharedPreferences Demo')` below to run the Counter example. The `LoadPage()` runs the SharedPrefs example.

```dart
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SharedPreferences Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoadPage() //MyHomePage(title: 'SharedPreferences Demo'),
        );
  }
}
```
