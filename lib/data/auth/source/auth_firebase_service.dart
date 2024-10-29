import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/models/user_creation_req.dart';
import 'package:firebase_auth/firebase_auth.dart';


abstract class AuthFirebaseService{
   
   
   Future<Either> signup(UserCreationReq user);
   Future<Either> getAges();


}

class AuthFirebaseServiceImpl extends AuthFirebaseService{
  @override
  Future<Either> signup(UserCreationReq user) async{
    try{
          var returnedData = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: user.Email!, 
            password: user.Password!
            );
     await FirebaseFirestore.instance.collection('Users').doc(
        returnedData.user!.uid
      ).set(
        {
          'Firstname':user.Firstname,
          'Lastname':user.Lastname,
          'Email':user.Email,
          'Password':user.Password,
          'Gender':user.Gender,
          'Age':user.Age
        }
      );
            return const Right(
        'Sign up was successfull'
      );

    } on FirebaseAuthException catch(e){
      String message = '';
      
      if(e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email.';
      }
      return Left(message);
    }
  }
  
  @override
  Future<Either> getAges() async{
    try{
        var returnedData = await FirebaseFirestore.instance.collection('Ages').get();
        return Right(
          returnedData.docs
        );
     } 
    catch(e){
      return const Left(
           'Please try again'
      );
    }
  }
  
}

