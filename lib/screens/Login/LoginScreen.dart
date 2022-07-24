// ignore_for_file: file_names, prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:vatika/screens/Forgot_Password/Forgot_Password_Screen.dart';
import 'package:vatika/screens/Home/HomeScreen.dart';
import 'package:vatika/screens/Register/Register_Screen.dart';
import 'package:vatika/styles/app_color.dart';
import 'package:vatika/styles/app_text_style.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSecure = true;

  // final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // final _auth = FirebaseAuth.instance;

  // String? errorMessage;

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
                  padding: EdgeInsets.all(20.0),
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
                padding: EdgeInsets.all(20),
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
                      controller: emailController,
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return ("Please Enter Your Email");
                      //   }
                      //   // reg expression for email validation
                      //   if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      //       .hasMatch(value)) {
                      //     return ("Please Enter a valid email");
                      //   }
                      //   return null;
                      // },
                      // onSaved: (value) {
                      //   emailController.text = value!;
                      // },
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
                      controller: passwordController,
                      // onSaved: (value) {
                      // passwordController.text = value!;
                      // },
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
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                        // signIn(emailController.text, passwordController.text);
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
                                    padding: EdgeInsets.only(left: 50),
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
                              padding: EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 32,
                              ),
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
//   void signIn(String email, String password) async {
//     if (_formKey.currentState!.validate()) {
//       try {
//         await _auth
//             .signInWithEmailAndPassword(email: email, password: password)
//             .then((uid) => {
//                   Fluttertoast.showToast(msg: "Login Successful"),
//                   Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(
//                       builder: (context) => HomeScreen(),
//                     ),
//                   ),
//                 });
//       } on FirebaseAuthException catch (error) {
//         switch (error.code) {
//           case "invalid-email":
//             errorMessage = "Your email address appears to be malformed.";
//             break;
//           case "wrong-password":
//             errorMessage = "Your password is wrong.";
//             break;
//           case "user-not-found":
//             errorMessage = "User with this email doesn't exist.";
//             break;
//           case "user-disabled":
//             errorMessage = "User with this email has been disabled.";
//             break;
//           case "too-many-requests":
//             errorMessage = "Too many requests";
//             break;
//           case "operation-not-allowed":
//             errorMessage = "Signing in with Email and Password is not enabled.";
//             break;
//           default:
//             errorMessage = "An undefined Error happened.";
//         }
//         Fluttertoast.showToast(msg: errorMessage!);
//         print(error.code);
//       }
//     }
//   }
}

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:vatika/screens/Home/HomeScreen.dart';
// import 'package:vatika/screens/Register/Register_Screen.dart';

// class LoginScreen extends StatefulWidget {
//   LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   // form key
//   final _formKey = GlobalKey<FormState>();

//   // editing controller
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   // firebase
//   final _auth = FirebaseAuth.instance;

//   // string for displaying the error Message
//   String? errorMessage;

//   @override
//   Widget build(BuildContext context) {
//     //email field
//     final emailField = TextFormField(
//         autofocus: false,
//         controller: emailController,
//         keyboardType: TextInputType.emailAddress,
//         validator: (value) {
//           if (value!.isEmpty) {
//             return ("Please Enter Your Email");
//           }
//           // reg expression for email validation
//           if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
//               .hasMatch(value)) {
//             return ("Please Enter a valid email");
//           }
//           return null;
//         },
//         onSaved: (value) {
//           emailController.text = value!;
//         },
//         textInputAction: TextInputAction.next,
//         decoration: InputDecoration(
//           prefixIcon: Icon(Icons.mail),
//           contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//           hintText: "Email",
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ));

//     //password field
//     final passwordField = TextFormField(
//         autofocus: false,
//         controller: passwordController,
//         obscureText: true,
//         validator: (value) {
//           RegExp regex = new RegExp(r'^.{6,}$');
//           if (value!.isEmpty) {
//             return ("Password is required for login");
//           }
//           if (!regex.hasMatch(value)) {
//             return ("Enter Valid Password(Min. 6 Character)");
//           }
//         },
//         onSaved: (value) {
//           passwordController.text = value!;
//         },
//         textInputAction: TextInputAction.done,
//         decoration: InputDecoration(
//           prefixIcon: Icon(Icons.vpn_key),
//           contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//           hintText: "Password",
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ));

//     final loginButton = Material(
//       elevation: 5,
//       borderRadius: BorderRadius.circular(30),
//       color: Colors.redAccent,
//       child: MaterialButton(
//           padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//           minWidth: MediaQuery.of(context).size.width,
//           onPressed: () {
//             signIn(emailController.text, passwordController.text);
//           },
//           child: Text(
//             "Login",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//           )),
//     );

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             color: Colors.white,
//             child: Padding(
//               padding: EdgeInsets.all(36.0),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(
//                         height: 200,
//                         child: Image.asset(
//                           "assets/logo.png",
//                           fit: BoxFit.contain,
//                         )),
//                     SizedBox(height: 45),
//                     emailField,
//                     SizedBox(height: 25),
//                     passwordField,
//                     SizedBox(height: 35),
//                     loginButton,
//                     SizedBox(height: 15),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Text("Don't have an account? "),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => RegisterScreen()));
//                             },
//                             child: Text(
//                               "SignUp",
//                               style: TextStyle(
//                                   color: Colors.redAccent,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 15),
//                             ),
//                           )
//                         ])
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // login function
//   void signIn(String email, String password) async {
//     if (_formKey.currentState!.validate()) {
//       try {
//         await _auth
//             .signInWithEmailAndPassword(email: email, password: password)
//             .then((uid) => {
//                   Fluttertoast.showToast(msg: "Login Successful"),
//                   Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: (context) => HomeScreen())),
//                 });
//       } on FirebaseAuthException catch (error) {
//         switch (error.code) {
//           case "invalid-email":
//             errorMessage = "Your email address appears to be malformed.";

//             break;
//           case "wrong-password":
//             errorMessage = "Your password is wrong.";
//             break;
//           case "user-not-found":
//             errorMessage = "User with this email doesn't exist.";
//             break;
//           case "user-disabled":
//             errorMessage = "User with this email has been disabled.";
//             break;
//           case "too-many-requests":
//             errorMessage = "Too many requests";
//             break;
//           case "operation-not-allowed":
//             errorMessage = "Signing in with Email and Password is not enabled.";
//             break;
//           default:
//             errorMessage = "An undefined Error happened.";
//         }
//         Fluttertoast.showToast(msg: errorMessage!);
//         print(error.code);
//       }
//     }
//   }
// }