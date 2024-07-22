import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/firebase_options.dart';
import 'package:flutter_basics/screens/ai_page.dart';
import 'package:flutter_basics/screens/splash_screen.dart';
import 'package:flutter_basics/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
  
//     await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform
//     );
//     runApp(App());
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }



void main() async {
  
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Failed to initialize Firebase: $e');
    // Handle the initialization error gracefully, if needed
  }

  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Studentline",
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      //  initialBinding: GeneralBindings(),
      home: SplashScreen(),
    );
  }
}