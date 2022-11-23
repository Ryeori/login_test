import 'package:danshulgin_login/core/injections/init_injections.dart';
import 'package:danshulgin_login/features/authentication/logic/cubit/authentication_cubit.dart';
import 'package:danshulgin_login/features/authentication/ui/pages/authentication_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthenticationCubit>(),
      child: MaterialApp(
        title: 'Login App',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.grey.shade200),
        home: const AuthenticationPage(),
      ),
    );
  }
}
