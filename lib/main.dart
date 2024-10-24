import 'package:ecommerce/core/themes/app_theme.dart';
import 'package:ecommerce/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecommerce/presentation/splash/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted() ,
      child: MaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner:false,
        home: SplashScreen(),
      ),
    );
  }
}

