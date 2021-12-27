// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vatika/screens/Login/LoginScreen.dart';
import 'package:vatika/styles/app_color.dart';
import 'package:vatika/styles/app_text_style.dart';

import 'Success_Password_Screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.15,
                bottom: 10,
              ),
              child: Text(
                'Forget Password?',
                style: TextStyle(
                  color: AppColor.primary1,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.055,
                ),
              ),
            ),
            Text(
              'Enter your registered email below',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.primary1,
                fontSize: size.width * 0.038,
              ),
            ),
            SizedBox(height: 50),
            TextFormField(
              style: AppTextStyle.style(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: size.width * 0.045),
              decoration: InputDecoration(
                hintText: 'YourEmail@gmail.com',
                labelText: 'Email',
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColor.primary1.withOpacity(0.8)),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColor.primary1.withOpacity(0.8)),
                ),
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColor.primary1.withOpacity(0.8)),
                ),
                labelStyle: AppTextStyle.style(
                    color: AppColor.primary1.withOpacity(0.8),
                    fontSize: size.width * 0.045),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SuccessPaswordScreen()));
              },
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColor.primary1,
                      AppColor.primary1.withOpacity(0.7)
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(5, 5),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              'Send OTP',
                              style: AppTextStyle.style(
                                  fontSize: size.width * 0.045,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(Icons.arrow_forward,
                          color: Colors.white, size: 32),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Remember The Password?",
                    style: AppTextStyle.style(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: size.width * 0.038),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    ' SIGN IN',
                    style: AppTextStyle.style(
                      color: AppColor.primary1,
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.038,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
