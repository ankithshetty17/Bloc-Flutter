import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce/presentation/auth/pages/enter_password_page.dart';
import 'package:ecommerce/presentation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const BasicAppbar(hideBack: true),
      body:Padding(padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 50,
      ),  
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              _SigninText(context),
              const SizedBox(height: 20),
              _Textfeild(context),
              const SizedBox(height: 20),
              _ContinueButton(context),
              const SizedBox(height: 20),
              _CreateAccount(context)
        ],
      ),
      ),
    );
  }
  Widget _SigninText (BuildContext context){
    return const Text(
      'Sign in',
      style:TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _Textfeild (BuildContext context){
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email'
      ),
    );
  }

  Widget _ContinueButton (BuildContext context){
    return BasicAppButton(onPressed: (){
      AppNavigator.push(context,const  EnterPasswordPage());
    },
    title: 'Continue',
    );  
  }

  Widget _CreateAccount (BuildContext context){
    return RichText(
      text:TextSpan(
        children: [
          TextSpan(text: "Don't have an account?"),
          TextSpan(
            text: "Create One",
            recognizer: TapGestureRecognizer()..onTap = ()
            {
                AppNavigator.push(context, SignupPage());
            },
            style: const TextStyle(fontWeight: FontWeight.bold)
          )
        ]
      ) 
      );
  }
} 