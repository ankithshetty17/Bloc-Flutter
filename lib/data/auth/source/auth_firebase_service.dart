import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/data/auth/models/user_creation_req.dart';
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
          return Right(
            'Signup was successful!!'
          );

    }on FirebaseAuthException catch(e){
      String Message = '';
      if(e.code == 'weak-password'){
        Message= 'The password provided is too weak';
      } else if(e.code =='e-mail already-in-use'){
       Message = 'An account already exists with that email';
      }
      return Left(Message);

    }
   
  }
  
}

