import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_project/view/home_Screen.dart';
import 'package:web_project/view/welcome_screen.dart';
// import 'package:flutter';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> logInformKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  Widget _Email() {
    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      textAlign: TextAlign.justify,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        hintText: 'Email..',
        hintStyle: TextStyle(color: Colors.grey),
      ),
      controller: email,
      validator: (first) {
        if (first!.isEmpty) {
          return "Enter Name";
        }
        return null;
      },
    );
  }

  Widget _Pass() {
    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      textAlign: TextAlign.justify,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
              width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        hintText: 'Password..',
        hintStyle: TextStyle(color: Colors.grey),
      ),
      controller: phone,
      validator: (phone) {
        if (phone!.isEmpty) {
          return "Enter Name";
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        height: 500.h,
        width: 130.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(3, 3), // changes position of shadow
            ),
          ],
        ),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assests/Group-Copy-3 (1).png",
                // height: 49.h,
                width: 22.w,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 5.w),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Email",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                  fontSize: 5.w),
            ),
            SizedBox(
              height: 10.h,
            ),
            _Email(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Password",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  // fontWeight: FontWeight.w500,
                  fontSize: 5.w),
            ),
            SizedBox(
              height: 10.h,
            ),
            _Pass(),
            SizedBox(
              height: 35.h,
            ),
            RawMaterialButton(
              onPressed: () {
                Get.to(() => HomeScreen());
              },
              child: Container(
                alignment: Alignment.center,
                height: 40.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500,
                      fontSize: 5.w),
                ),
              ),
            )
          ],
        )),
      )),
    );
  }
}

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
      child: HomeScreen(),
    );
  }
}
