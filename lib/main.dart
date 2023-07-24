import 'package:authentication_task/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/LoginOrSignup/loginOrSignup.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  //TODO: initialize Firebase here
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'authenticationAPP',
    options: FirebaseOptions(
      apiKey: 'AIzaSyCfEYrusUyE6xPAszaJ1cHR5PLLyd35JXw',
      appId: '1:895774076017:android:289db4f5d5c4c105b83fd0',
      messagingSenderId: '895774076017',
      projectId: 'authenticationapp-74afb',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: LogInOrSignup.routeName,
          routes: routes,
          theme: ThemeData(fontFamily: 'Changa'),
        );
      },
    );
  }
}
