import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_project/view/login_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        height: 450.h,
        width: 200.w,
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
            Image.asset(
              "assests/Group-Copy-3 (1).png",
              // height: 49.h,
              width: 25.w,
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.w),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "To acctivate your account, add a new password",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                  fontSize: 5.w),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Once your password is created, you will be able to access the platform with your email and password.",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  // fontWeight: FontWeight.w500,
                  fontSize: 5.w),
            ),
            SizedBox(
              height: 35.h,
            ),
            RawMaterialButton(
              onPressed: () {
                Get.to(() => LoginScreen());
              },
              child: Container(
                alignment: Alignment.center,
                height: 40.h,
                width: 70.w,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Create Password",
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
      bottomSheet: Container(
        padding: EdgeInsets.only(bottom: 10.h),
        height: 50.h,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Correo enviado por ",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  // fontWeight: FontWeight.w500,
                  fontSize: 4.w),
            ),
            Image.asset(
              "assests/Group-Copy-3 (1).png",
              width: 10.w,
            ),
            Text(
              "Prometeo",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 4.w),
            ),
          ],
        ),
      ),
    );
  }
}
