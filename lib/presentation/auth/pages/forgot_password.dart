import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:flutter/material.dart';


class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
              _Textfeild(context),
              const SizedBox(height: 20),
              _ContinueButton(context),
              const SizedBox(height: 20),
             
        ],
      ),
      ),
    );
  }
  Widget _SigninText (BuildContext context){
    return const Text(
      'Forgot Password',
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
    //   AppNavigator.push(context,const  EnterPasswordPage());
    },
    title: 'Continue',
    );  
  }
} 