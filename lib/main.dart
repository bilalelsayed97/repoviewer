import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/auth/shared/providers.dart';
import 'package:repoviewr/core/observer/block_observer.dart';
import 'package:repoviewr/core/presentation/app_widget.dart';

//mateapp
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setUpLocator();
  runApp(BlocProvider(
    create: (context) => getIt.get<AuthCubit>(),
    child: const AppWidget(),
  ));
}
