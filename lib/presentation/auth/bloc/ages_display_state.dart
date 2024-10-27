import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AgesDisplayState{}

class AgesLoading extends AgesDisplayState{}

class AgesLoaded extends AgesDisplayState{
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> ages;
  AgesLoaded({required this.ages});
}

class AgesLoadingFailure extends AgesDisplayState{
  final String message;
  AgesLoadingFailure({required this.message});
}