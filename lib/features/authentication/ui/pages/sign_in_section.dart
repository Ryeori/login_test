import 'package:danshulgin_login/core/utils/project_form_validators.dart';
import 'package:danshulgin_login/core/utils/sizes.dart';
import 'package:danshulgin_login/features/authentication/logic/cubit/authentication_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInSection extends StatefulWidget {
  const SignInSection({
    super.key,
    required this.onRegTap,
  });

  final void Function() onRegTap;

  @override
  State<SignInSection> createState() => _SignInSectionState();
}

class _SignInSectionState extends State<SignInSection> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(projectPrimaryPadding),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const Spacer(),
            TextFormField(
              controller: emailController,
              validator: ProjectFormValidators.emailFieldValidator,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'yourmail@mail.com'),
            ),
            const SizedBox(height: projectPrimaryPadding),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  filled: true, fillColor: Colors.white, hintText: '********'),
            ),
            const SizedBox(height: projectPrimaryPadding),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      BlocProvider.of<AuthenticationCubit>(context)
                          .signInWithEmail(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim());
                    }
                  },
                  child: const Text('Войти')),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                widget.onRegTap();
              },
              child: const Text('Зарегистрироваться'),
            )
          ],
        ),
      ),
    );
  }
}
