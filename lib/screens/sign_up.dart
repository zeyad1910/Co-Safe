import 'package:co_safe/screens/login.dart';
import 'package:co_safe/utilities/constants.dart';
import 'package:co_safe/widgets/background.dart';
import 'package:co_safe/widgets/input_text.dart';
import 'package:co_safe/widgets/password_inputtext.dart';
import 'package:co_safe/widgets/rounded_button.dart';
import 'package:co_safe/widgets/signup_text_field.dart';
import 'package:co_safe/widgets/textfield_container.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static const String id = '/sign_up';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Background(
          pathImage: Image.asset(
            'assets/images/login_wave.png',
            width: size.width,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView(
              children: [
                Center(
                  child: Text(
                    'Get started now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.height * 0.05,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                        color: kLightBlack,
                        fontSize: size.height * 0.025,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Login.id);
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: size.height * 0.025,
                          color: kLightBlack,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SignUpTextField(
                        label: 'First name :',
                        child: InputText(
                          width: size.width * 0.45,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Expanded(
                      child: SignUpTextField(
                        label: 'Last name :',
                        child: InputText(
                          width: size.width * 0.45,
                        ),
                      ),
                    ),
                  ],
                ),
                SignUpTextField(
                  label: 'Email :',
                  child: InputText(
                    width: size.width * 0.95,
                  ),
                ),
                SignUpTextField(
                  label: 'Password :',
                  child: PasswordInputText(
                    width: size.width * 0.95,
                    obscureText: true,
                  ),
                ),
                SignUpTextField(
                  label: 'Confirm Password :',
                  child: PasswordInputText(
                    width: size.width * 0.95,
                    obscureText: true,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: SignUpTextField(
                        label: 'Country :',
                        child: TextFieldContainer(
                          width: size.width * 0.48,
                          child: CountryListPick(
                            theme: CountryTheme(
                              isShowFlag: true,
                              isShowTitle: true,
                              isDownIcon: true,
                              isShowCode: false,
                              showEnglishName: true,
                            ),
                            onChanged: (CountryCode? code) {},
                            initialSelection: 'EG',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    Expanded(
                      child: SignUpTextField(
                        label: 'Age :',
                        child: InputText(
                          width: size.width * 0.47,
                        ),
                      ),
                    ),
                  ],
                ),
                SignUpTextField(
                  label: 'Address :',
                  child: InputText(
                    width: size.width * 0.95,
                  ),
                ),
                SignUpTextField(
                  label: 'Phone Number :',
                  child: InputText(
                    width: size.width * 0.95,
                    icon: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black,
                            width: size.width * 0.003,
                          ),
                        ),
                      ),
                      child: CountryListPick(
                        theme: CountryTheme(
                          isShowFlag: true,
                          isShowTitle: false,
                          isDownIcon: true,
                          isShowCode: true,
                          showEnglishName: true,
                        ),
                        onChanged: (CountryCode? code) {},
                        initialSelection: '+20',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                RoundedButton(
                  text: 'Sign Up',
                  press: () {
                    Navigator.pushNamed(context, Login.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
