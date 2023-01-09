import 'package:danshulgin_login/core/utils/project_form_validators.dart';
import 'package:danshulgin_login/core/utils/sizes.dart';
import 'package:danshulgin_login/features/authentication/logic/cubit/authentication_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpSection extends StatefulWidget {
  const SignUpSection({
    super.key,
    required this.onSignInTap,
  });

  final void Function() onSignInTap;

  @override
  State<SignUpSection> createState() => _SignUpSectionState();
}

class _SignUpSectionState extends State<SignUpSection> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController =
      TextEditingController();
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
              validator: ProjectFormValidators.passwordFieldValidator,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Введите пароль'),
            ),
            const SizedBox(height: projectPrimaryPadding),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              validator: (value) =>
                  ProjectFormValidators.repeatPasswordFieldValidator(
                value,
                passwordController,
              ),
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Повторите пароль'),
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
                child: const Text('Зарегистрироваться'),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                widget.onSignInTap();
              },
              child: const Text('Обратно ко входу'),
            )
          ],
        ),
      ),
    );
  }
}
