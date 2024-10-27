import 'package:ecommerce/common/helper/bottomsheet/app_bottomsheet.dart';
import 'package:ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce/core/themes/app_colors.dart';
import 'package:ecommerce/presentation/auth/bloc/age_selection_cubit.dart';
import 'package:ecommerce/presentation/auth/bloc/ages_display_cubit.dart';
import 'package:ecommerce/presentation/auth/bloc/gender_selection_cubit.dart';
import 'package:ecommerce/presentation/auth/widgets/ages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderAgeSelection extends StatelessWidget {
  const GenderAgeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: const BasicAppbar(),
     body: MultiBlocProvider(
      providers: [
          BlocProvider(create: (context) => GenderSelectionCubit()),
          BlocProvider(create: (context) => AgeSelectionCubit()),
          BlocProvider(create: (context) => AgesDisplayCubit())
      ],
     child:
     Column(
      children:[
     Padding(
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
            _howOld(context),
             SizedBox(height: 20),
             _age(context)
        ],
     ),
     ),
     const Spacer(),
      _finishButton(context)
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
    return BlocBuilder<GenderSelectionCubit,int>(
      builder: (context,state){
        return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        _genderTile(context, 1, 'Men'),
        SizedBox(width: 20),
        _genderTile(context, 2, 'Women')
       ],
    );
    }
    );
  }

   Widget _genderTile(BuildContext context, int genderIndex, String gender){
      return Expanded(
      flex: 1,
      child:GestureDetector(
        onTap: (){
          context.read<GenderSelectionCubit>().selectGender(genderIndex);
        },
      child:Container(
        height: 60,
        decoration: BoxDecoration(
          color: context.read<GenderSelectionCubit>().selectedindex == genderIndex ? AppColors.primary : AppColors.secondBackground,
          borderRadius: BorderRadius.circular(30)
        ),
          child: Center(
            child: Text(gender),
          ),
      ),
      ),
      );
    }

  Widget _age(BuildContext context){
    return BlocBuilder<AgeSelectionCubit,String>(
      builder: (context,state)
      {
    return GestureDetector(
      onTap: (){
        AppBottomsheet.display(
        context,
        MultiBlocProvider(
      providers: [
          BlocProvider.value(value: context.read<AgeSelectionCubit>()),
          BlocProvider.value(value:context.read<AgesDisplayCubit>()..displayAges())
      ],
      child: const Ages()
      ),
        );
      },
      child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 16),  
          decoration: BoxDecoration(
            color: AppColors.secondBackground,
            borderRadius: BorderRadius.circular(30)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                state
              ),
              Icon(
              Icons.keyboard_arrow_down
              ),
            ],
          ),
      ),
    );
    }
    );
  }


  Widget _finishButton(BuildContext context){
    return Container(
      height: 100,
      color: AppColors.secondBackground,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: BasicAppButton(onPressed: (){},
        title: 'Finish'
        ),
      ),
    );
  }
}