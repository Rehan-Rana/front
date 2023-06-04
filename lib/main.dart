import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_project/view/home_Screen.dart';
import 'package:web_project/view/welcome_screen.dart';
import 'package:web_project/view/login_screen.dart';
// import 'package:flutter';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize without device test ids.
  // Admob.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'CV_Now',
          theme: ThemeData(
            primaryColor: Color(0xffEA1E25),
            backgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSwatch().copyWith(
                background: Color(0xffF5F5F5),
                primary: Colors.white,
                secondary: Colors.black

                // secondary: Color(0xff393939),
                ),
            // textTheme: TextTheme(
            //   bodyText2: GoogleFonts.itim(
            //     textStyle:
            //         TextStyle(color: Colors.white, letterSpacing: .5, fontSize: 16),
            //   ),
            // ),
          ),
          home: child,
        );
      },
      child: LoginScreen(),
    );
  }
}
