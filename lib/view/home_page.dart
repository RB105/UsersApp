import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:users/cubit/home_state.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("User"),
            ),
            body: Builder(
              builder: (context) {
                if (state is HomeLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is HomeErrorState) {
                  return FadeIn(
                    duration: const Duration(seconds: 3),
                    child: Center(
                      child: Text(state.error),
                    ),
                  );
                } else if (state is HomeCompleteState) {
                  return BounceInDown(
                    duration: const Duration(seconds: 4),
                    child: SizedBox(
                      height: double.infinity,
                      width:  double.infinity,
                      child: ListView.builder(
                        itemCount: state.data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(state.data[index].name.toString()),
                          );
                        },
                      ),
                    ),
                  );
                }
                else{
                  return const SizedBox();
                }
              },
            ),
          );
        },
      ),
    );
  }
}
