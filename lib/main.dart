import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:six_dreams_machine_task/controller/provider/provider.dart';
import 'package:six_dreams_machine_task/screens/dashboard_screen/dashboard_screen.dart';
 
import 'package:six_dreams_machine_task/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => ScrollControllerProvider(),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
           theme: lightMode,
           darkTheme: darkMode,
          home: DashboardScreen()
        
           
        ),
      ),
    );
  }
}

 