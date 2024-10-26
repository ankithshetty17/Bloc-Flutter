import 'package:flutter_bloc/flutter_bloc.dart';

class GenderSelectionCubit extends Cubit<int>{
  GenderSelectionCubit():super(1);

  int selectedindex = 1;
  
  void selectGender (int index){
     selectedindex=index;
     emit(index);
  }
}