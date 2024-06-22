import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  FocusNode email_f = FocusNode();
  final passwordController = TextEditingController();
  FocusNode password_f = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 96.w,
              height: 100.h,
            ),
            Center(
                child: Image.asset(
              'assets/images/logo.png',
              width: 230.0,
            )),
            SizedBox(
              height: 120.h,
            ),
            InstaTextField(
                controller: emailController,
                focusNode: email_f,
                icon: Icons.email,
                type: 'Email'),
            SizedBox(
              height: 15.h,
            ),
            InstaTextField(
                controller: passwordController,
                icon: Icons.lock,
                type: 'Password',
                focusNode: password_f),
            SizedBox(
              height: 15.h,
            ),
            Forgot(),
            SizedBox(
              height: 10.h,
            ),
            Login(),
            SizedBox(
              height: 10.h,
            ),
            Have(),
          ],
        ),
      ),
    );
  }

  Widget InstaTextField(
      {required TextEditingController controller,
      required IconData icon,
      required String type,
      required FocusNode focusNode}) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            decoration: InputDecoration(
                hintText: type,
                prefixIcon: Icon(
                  icon,
                  color: focusNode.hasFocus ? Colors.black : Colors.grey,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: BorderSide(color: Colors.grey, width: 2.w)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: BorderSide(color: Colors.black, width: 2.w))),
          ),
        ));
  }
}

Widget Forgot() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Text(
      'Forgot Your Password?',
      style: TextStyle(
        fontSize: 13.sp,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget Login() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.h),
    child: Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 44.h,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(10.r)),
      child: Text(
        'Login',
        style: TextStyle(
            fontSize: 23.sp, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget Have() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Don't have account ?",
        style: TextStyle(color: Colors.grey),
      ),
      SizedBox(
        width: 5.0,
      ),
      Text(
        'Sign up',
        style: TextStyle(color: Colors.blue),
      )
    ],
  );
}
