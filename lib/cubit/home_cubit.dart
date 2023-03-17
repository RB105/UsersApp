part of 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState()) {
    getUsers();
  }

  UserService userService = UserService();

  Future<void> getUsers() async {
    emit(HomeLoadingState());
    await userService.getUsers().then((dynamic response) {
      if (response is List<UserModel>) {
        emit(HomeCompleteState(response));
      } else {
        emit(HomeErrorState(response));
      }
    });
  }
}
