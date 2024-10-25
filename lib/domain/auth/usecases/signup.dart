import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/use_case.dart';
import 'package:ecommerce/data/auth/models/user_creation_req.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';
import 'package:ecommerce/service_locator.dart';




class SignupUseCase implements UserCase<Either,UserCreationReq>{
  @override
  Future<Either> call({UserCreationReq ? params}) async{
    
    return await s1<AuthRepository>().signup(params!);

  }
  
}