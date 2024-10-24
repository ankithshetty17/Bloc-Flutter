import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const  BasicAppbar(),
      body:Padding(padding: const EdgeInsets.symmetric(
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
              _Forgotpassword(context)
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
        hintText: 'Enter Password'
      ),
    );
  }

  Widget _ContinueButton (BuildContext context){
    return BasicAppButton(onPressed: (){},
    title: 'Continue',
    );  
  }

  Widget _Forgotpassword (BuildContext context){
    return RichText(
      text:TextSpan(
        children: [
          TextSpan(text: "Forgot password?"),
          TextSpan(
            text: "Reset!",
            recognizer: TapGestureRecognizer()..onTap = ()
            {

            },
            style: const TextStyle(fontWeight: FontWeight.bold)
          )
        ]
      ) 
      );
  }
} 