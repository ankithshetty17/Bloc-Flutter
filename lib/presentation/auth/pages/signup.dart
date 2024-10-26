import 'package:ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce/presentation/auth/pages/gender_age_selection.dart';
import 'package:ecommerce/presentation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const BasicAppbar(),
      body:Padding(padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 50,
      ),  
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              _SigninText(context),
              const SizedBox(height: 20),
              _firstnameFeild(context),
              const SizedBox(height: 20),
              _lastnameFeild(context),
               const SizedBox(height: 20),
              _emailFeild(context),
              const SizedBox(height: 20),
              _passwordFeild(context),
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
      'Create Account',
      style:TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }
  
  Widget _firstnameFeild (BuildContext context){
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Firstname'
      ),
    );
  }

  Widget _lastnameFeild (BuildContext context){
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Lastname'
      ),
    );
  }

  Widget _emailFeild (BuildContext context){
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email'
      ),
    );
  }

  Widget _passwordFeild (BuildContext context){
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Password'
      ),
    );
  }

  Widget _ContinueButton (BuildContext context){
    return BasicAppButton(onPressed: (){
     AppNavigator.push(context, GenderAgeSelection());
    },
    title: 'Continue',
    );  
  }

  Widget _CreateAccount (BuildContext context){
    return RichText(
      text:TextSpan(
        children: [
          TextSpan(text: "Alreay have an account?"),
          TextSpan(
            text: "Signin",
            recognizer: TapGestureRecognizer()..onTap = ()
            {
              AppNavigator.push(context,const  SigninPage());

            },
            style: const TextStyle(fontWeight: FontWeight.bold)
          )
        ]
      ) 
      );
  }
} 