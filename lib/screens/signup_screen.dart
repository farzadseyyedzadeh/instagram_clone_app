import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  final VoidCallback show;
  const SignupScreen(this.show, {super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  FocusNode email_f = FocusNode();
  final userNameController = TextEditingController();
  FocusNode userName_f = FocusNode();
  final bioController = TextEditingController();
  FocusNode bio_f = FocusNode();
  final passwordController = TextEditingController();
  FocusNode password_f = FocusNode();
  final passwordConfirmController = TextEditingController();
  FocusNode passwordConfirm_f = FocusNode();
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
              height: 70.h,
            ),
            Center(
                child: Image.asset(
              'assets/images/logo.png',
              width: 230.0,
            )),
            SizedBox(
              height: 20.h,
            ),
            Center(
                child: CircleAvatar(
              radius: 34.r,
              backgroundColor: Colors.grey[200],
              backgroundImage: AssetImage('assets/images/person.png'),
            )),
            SizedBox(
              height: 30.h,
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
                controller: userNameController,
                icon: Icons.person,
                type: 'Username',
                focusNode: userName_f),
            SizedBox(
              height: 15.h,
            ),
            InstaTextField(
                controller: bioController,
                icon: Icons.abc,
                type: 'bio',
                focusNode: bio_f),
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
            InstaTextField(
                controller: passwordConfirmController,
                icon: Icons.lock,
                type: 'Password Confirm',
                focusNode: passwordConfirm_f),
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
          'Sign up',
          style: TextStyle(
              fontSize: 23.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget Have() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have account ?",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          width: 5.0,
        ),
        GestureDetector(
          onTap: widget.show,
          child: const Text(
            'Login',
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
