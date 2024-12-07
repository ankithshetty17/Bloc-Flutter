import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/usecase/use_case.dart';
import 'package:ecommerce/domain/auth/repository/auth.dart';
import 'package:ecommerce/service_locator.dart';




class GetAgesUseCase implements UserCase<Either,dynamic>{
  @override
  Future<Either> call({dynamic params}) async{
    
    return await s1<AuthRepository>().getAges();

  }
  
}