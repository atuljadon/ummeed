import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ummeed/utils/global.colors.dart';
import 'package:ummeed/view/button.global.dart';
import 'package:ummeed/view/widgets/social.login.dart';
import 'package:ummeed/view/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
                //color: Colors.green,
                width: double.infinity,
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Ummeed',
                        style: TextStyle(
                          color: GlobalColors.mainColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Text(
                      'Login to your account',
                      style: TextStyle(
                        color: GlobalColors.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormGobal(
                      controller: passwordController,
                      Text: 'Email',
                      obscure: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                    TextFormGobal(
                        controller: emailController,
                        Text: 'Password',
                        textInputType: TextInputType.text,
                        obscure: true),
                    const SizedBox(height: 10),
                    const ButtonGlobal(),
                    const SizedBox(height: 25),
                    SocialLogin(),
                  ],
                ))),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have account?',
            ),
            InkWell(
              child: Text(
                'sign up',
                style: TextStyle(
                  color: GlobalColors.mainColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
