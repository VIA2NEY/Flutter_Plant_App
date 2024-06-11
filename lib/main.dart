import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/app_behavior.dart';
import 'package:plant_app/ui/onboarding_screen.dart';
import 'package:device_preview/device_preview.dart';

// void main() => runApp(
//       DevicePreview(
//         enabled: true,
//         tools: const [
//           ...DevicePreview.defaultTools,
//         ],
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Plant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      scrollBehavior: AppScrollBehavior(),
      home: const OnboardingScreen(),
    );
  }
}
