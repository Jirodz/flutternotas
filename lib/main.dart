import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/notes_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  static String title = 'Notas';

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(29, 255, 255, 255),
        scaffoldBackgroundColor: Color.fromARGB(207, 123, 137, 168),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(207, 75, 72, 72),
          elevation: 0,
        ),
      ),
      home: const NotesPage(),
    );
  }
}
