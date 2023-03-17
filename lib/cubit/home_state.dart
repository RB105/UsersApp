import 'package:bloc/bloc.dart';

import '../data/model/user_model.dart';
import '../data/service/user_service.dart';

part 'home_cubit.dart';

abstract class HomeState {
  HomeState();
}

class HomeInitialState extends HomeState {
  HomeInitialState();
}

class HomeLoadingState extends HomeState {
  HomeLoadingState();
}

class HomeErrorState extends HomeState {
  String error;
  HomeErrorState(this.error);
}

class HomeCompleteState extends HomeState {
  List<UserModel> data;
  HomeCompleteState(this.data);
}
