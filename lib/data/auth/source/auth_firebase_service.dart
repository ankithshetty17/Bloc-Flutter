import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/model/user_creation_req.dart';
import 'package:firebase_auth/firebase_auth.dart';


abstract class AuthFirebaseService{
   
   
   Future<Either> signup(UserCreationReq user);

}

class AuthFirebaseServiceImpl extends AuthFirebaseService{
  @override
  Future<Either> signup(UserCreationReq user) async{
    try{
          var returnedData = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: user.Email!, 
            password: user.Password!
            );



    } catch (e){

    }
   
  }
  
}