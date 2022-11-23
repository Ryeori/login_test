import 'package:another_flushbar/flushbar.dart';
import 'package:danshulgin_login/features/authentication/logic/cubit/authentication_cubit.dart';
import 'package:danshulgin_login/features/authentication/ui/pages/sign_in_section.dart';
import 'package:danshulgin_login/features/authentication/ui/pages/sign_up_section.dart';
import 'package:danshulgin_login/features/home/ui/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final PageController pageController = PageController();
  bool isLoading = false;

  Future<void> animateBetweenPages(int page) async {
    await pageController.animateToPage(page,
        duration: const Duration(milliseconds: 250), curve: Curves.easeInOut);
  }

  void showLoader() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: false,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  void startLoading() {
    FocusScope.of(context).unfocus();
    isLoading = true;
    showLoader();
  }

  void stopLoading() {
    if (isLoading) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listenWhen: (previous, current) =>
          current.runtimeType != previous.runtimeType,
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            startLoading();
          },
          signedIn: (userAuthneticationModel) {
            stopLoading();
            Navigator.push(context, CupertinoPageRoute(
              builder: (context) {
                return const HomePage();
              },
            ));
          },
          error: (message) {
            stopLoading();
            Flushbar(
              message: message,
              duration: const Duration(seconds: 5),
              icon: Image.asset('assets/auth_failed.webp'),
            ).show(context);
          },
          orElse: () {
            stopLoading();
          },
        );
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SafeArea(
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SignInSection(
                  onRegTap: () async {
                    await animateBetweenPages(1);
                  },
                ),
                SignUpSection(
                  onSignInTap: () async {
                    await animateBetweenPages(0);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
