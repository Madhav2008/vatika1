// ignore_for_file: file_names, unnecessary_import, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vatika/screens/Forgot_Password/Forgot_Password_Screen.dart';
import 'package:vatika/screens/Home/HomeScreen.dart';
import 'package:vatika/screens/Register/Register_Screen.dart';
import 'package:vatika/styles/app_color.dart';
import 'package:vatika/styles/app_text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSecure = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                // AppColor.primaryLight,
                AppColor.primary1,
                AppColor.primary1,
              ]),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset("../assets/images/splash.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Hi Student",
                        style: AppTextStyle.style(
                            fontSize: size.width * 0.067,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Sign in to Continue",
                        style: AppTextStyle.style(
                            fontSize: size.width * 0.038,
                            color: Colors.white.withOpacity(0.4),
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(38),
                    topLeft: Radius.circular(38),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextFormField(
                      style: AppTextStyle.style(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: size.width * 0.036,
                      ),
                      decoration: InputDecoration(
                        hintText: 'YourEmail@gmail.com',
                        labelText: 'Email',
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        labelStyle: AppTextStyle.style(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: size.width * 0.040,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: _isSecure,
                      style: AppTextStyle.style(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: size.width * 0.036,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isSecure = !_isSecure;
                              });
                            },
                            child: Icon(
                              Icons.remove_red_eye,
                              size: size.width * 0.045,
                              color: _isSecure
                                  ? Colors.black.withOpacity(0.8)
                                  : Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ),
                        labelText: 'Password',
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        labelStyle: AppTextStyle.style(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: size.width * 0.040,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ForgetPasswordScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Forgot Password?",
                            style: AppTextStyle.style(
                              color: AppColor.primary1,
                              fontSize: size.width * 0.038,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
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
                                      'SIGN IN',
                                      style: AppTextStyle.style(
                                        fontSize: size.width * 0.040,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.arrow_forward_ios,
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
                            "Don't Have An Account?",
                            style: AppTextStyle.style(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: size.width * 0.037,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            ' Register',
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
            )
          ],
        ),
      ),
    );
  }
}
