

import 'package:ecommerce/data/auth/repository/auth_repo_impl.dart';
import 'package:ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';
import 'package:ecommerce/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async {
  //Services

  s1.registerSingleton<AuthFirebaseService> (
    AuthFirebaseServiceImpl()
  );

  //Repositories

  s1.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );
  //Usercase

  s1.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );
}