import 'package:co_safe/utilities/constants.dart';
import 'package:co_safe/widgets/background.dart';
import 'package:co_safe/widgets/input_text.dart';
import 'package:co_safe/widgets/password_inputtext.dart';
import 'package:co_safe/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String id = '/login';
  @override
  _LoginState createState() => _LoginState();
}

bool obscureText = true;
int index = 1;
bool showPassword() {
  if (index % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Background(
          child: ListView(
            children: [
              Container(
                height: size.height * 0.25,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: size.width * 0.03,
                      child: Text(
                        'Co Safe',
                        style: TextStyle(
                            fontSize: size.height * .06,
                            fontFamily: 'Inconsolata',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/gp_logo.png',
                        scale: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InputText(
                  icon: Icons.person,
                  hintText: 'YourEmail@example.com',
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  PasswordInputText(
                    icon: Icons.lock,
                    obscureText: obscureText,
                    hintText: 'Password',
                  ),
                  Positioned(
                    right: size.width * 0.08,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = showPassword();
                          index++;
                        });
                      },
                      child: Icon(
                        Icons.remove_red_eye,
                        color: kMainAppColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot your password ?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.height * 0.022,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.13,
              ),
              Center(
                child: RoundedButton(
                  text: 'Login',
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                      color: kSlidesTextColor,
                      fontSize: size.height * 0.022,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: size.height * 0.022,
                        color: kSlidesTextColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
