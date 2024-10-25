  import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class GenderAgeSelection extends StatelessWidget {
  const GenderAgeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: BasicAppbar(),
     body: Padding(
      padding: EdgeInsets.symmetric(
      vertical: 50,
      horizontal: 25
     ),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            _tellUs(context),
            SizedBox(height: 45),
            _forWho(context),
            SizedBox(height: 20),
            _genders(context),
            SizedBox(height: 45),
            _howOld(context)
        ],
     ),
     ),
    );
  }

  Widget _tellUs(BuildContext context){
    return Text(
      'Tell us about yourself',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),
    );
  }

   Widget _forWho(BuildContext context){
    return Text(
      'Who do you shop for?',
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }

   Widget _howOld(BuildContext context){
    return Text(
      'How old are you?',
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }

  Widget _genders(BuildContext context){
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        _genderTile(context, 'Men'),
        SizedBox(width: 20),
        _genderTile(context, 'Women')
       ],
    );
  }

   Widget _genderTile(BuildContext context, String gender){
      return Expanded(
      flex: 1,
      child:GestureDetector(
        onTap: (){},
      child:Container(
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30)
        ),
          child: Center(
            child: Text(gender),
          ),
      ),
      ),
      );
    }

}