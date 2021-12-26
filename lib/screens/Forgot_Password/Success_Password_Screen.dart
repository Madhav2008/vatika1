// ignore_for_file: unnecessary_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:vatika/screens/Forgot_Password/Forgot_Password_Screen.dart';
import 'package:vatika/screens/Login/LoginScreen.dart';
import 'package:vatika/styles/app_color.dart';
import 'package:vatika/styles/app_text_style.dart';

class SuccessPaswordScreen extends StatelessWidget {
  const SuccessPaswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03,
          ),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.25,
                  ),
                  child: Icon(
                    Icons.check_circle_outline_sharp,
                    color: AppColor.primaryLight,
                    size: 80,
                  )
                  // child: Image.asset('assets/icons/SuccessIcon.svg'),
                  ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                ),
                child: Text(
                  'Success',
                  style: TextStyle(
                    color: AppColor.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.055,
                  ),
                ),
              ),
              Text(
                'Please check your email to create\na new password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.primaryLight,
                  fontSize: size.width * 0.038,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Can't get email?  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.038,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPasswordScreen()));
                      },
                      child: Text(
                        'Resend',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.primary,
                          fontWeight: FontWeight.w700,
                          fontSize: size.width * 0.04,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColor.primary,
                        AppColor.primary.withOpacity(0.7)
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
                                'SIGN IN',
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
            ],
          ),
        ),
      ),
    );
  }
}
