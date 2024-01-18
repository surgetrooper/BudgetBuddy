import 'package:budgetbuddy/data/expense_data.dart';
import 'package:budgetbuddy/screens/home.dart';
import 'package:budgetbuddy/screens/login.dart';
import 'package:budgetbuddy/screens/report.dart';
import 'package:budgetbuddy/utils/colours.dart';
import 'package:budgetbuddy/widgets/navbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExpenseData(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BudgetBuddy',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        routes: {
          '/login': (context) => const LoginScreen(),
          '/home': (context) => const HomeScreen(),
          '/report': (context) => const Report(),
          '/navbar': (context) => const Navbar(),
        },
        home: const LoginScreen(),
      ),
    );
  }
}
