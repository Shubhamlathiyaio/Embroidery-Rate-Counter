import 'package:embroidery_rate_counter/dashboard.dart';
import 'package:embroidery_rate_counter/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(ProviderScope(child: EmbroideryRateCounter()));
}


class EmbroideryRateCounter extends StatelessWidget {
  const EmbroideryRateCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Embroidery Rate Counter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
      // home: RateCounterPage(),
    );
  }
}
