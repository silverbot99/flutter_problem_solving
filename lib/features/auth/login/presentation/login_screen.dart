import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_problem_solving/features/app/models/alert_model.dart';
import 'package:flutter_problem_solving/features/app/widgets/customs/custom_button.dart';
import 'package:flutter_problem_solving/features/app/widgets/customs/custom_textfield_signup.dart';
import 'package:flutter_problem_solving/features/app/widgets/utils/keyboard_dismisser.dart';
import 'package:flutter_problem_solving/features/auth/login/blocs/auth_cubit.dart';
import 'package:flutter_problem_solving/features/auth/login/form/login_form.dart';
import 'package:flutter_problem_solving/i18n/strings.g.dart';
import 'package:flutter_problem_solving/utils/constants.dart';
import 'package:flutter_problem_solving/utils/helpers/bar_helper.dart';
import 'package:flutter_problem_solving/utils/methods/shortcuts.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
    @visibleForTesting this.cubit,
    @visibleForTesting this.form,
  });

  final AuthCubit? cubit;
  final FormGroup? form;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final ImagePicker picker = ImagePicker();

  late RoundedLoadingButtonController _btnController;
  late FormGroup _form;

  @override
  void initState() {
    _btnController = RoundedLoadingButtonController();
    _form = widget.form ?? loginForm;
    super.initState();
  }

  // File? get photo => _form.control('photo').value as File?;
  String get username => _form.control('username').value.toString();
  String get password => _form.control('password').value.toString();

  // Future<void> checkPermission() async {
  //   final hasPermission = await checkPhotosPermission();
  //
  //   if (hasPermission && mounted) {
  //     await selectPhoto();
  //   } else {
  //     BarHelper.showAlert(
  //       context,
  //       alert: AlertModel(
  //         message: context.t.strings.file_picker.no_permission,
  //         type: AlertType.destructive,
  //       ),
  //     );
  //   }
  // }

  // Future<void> selectPhoto() async {
  //   const maxPhotoSizeInByte = 2000000;
  //
  //   final photo = await picker.pickImage(source: ImageSource.gallery, imageQuality: 25);
  //
  //   if (photo == null) {
  //     return;
  //   }
  //
  //   final size = await photo.length();
  //
  //   if (!mounted) {
  //     return;
  //   }
  //
  //   if (size <= maxPhotoSizeInByte) {
  //     // Execute the upload operation with bloc for photo. For ex.
  //     // Create a form data and send a post request with dio in your repo.
  //     // FormData formData = FormData.fromMap({
  //     //   "image": await MultipartFile.fromFile(photo.path),
  //     // });
  //     _form.control('photo').value = File(photo.path);
  //   } else {
  //     BarHelper.showAlert(
  //       context,
  //       alert: AlertModel(
  //         message: context.t.strings.file_picker.size_warning(maxSize: maxPhotoSizeInByte / 1000000),
  //         type: AlertType.destructive,
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      bloc: widget.cubit ?? context.read<AuthCubit>(),
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            _form
              ..unfocus()
              ..markAsDisabled();
            _btnController.start();
          },
          failed: (alert) {
            _form.markAsEnabled();
            _btnController.reset();

            BarHelper.showAlert(
              context,
              alert: alert,
              isTest: widget.cubit != null,
            );
          },
          authenticated: (_) {
            _form
              ..reset()
              ..markAsEnabled();
            _btnController.reset();

            if (widget.cubit != null) {
              BarHelper.showAlert(
                context,
                alert: AlertModel.alert(
                  message: context.t.strings.test.succeded,
                  type: AlertType.constructive,
                ),
                isTest: true,
              );
            }
          },
          orElse: () {
            _form.markAsEnabled();
            _btnController.reset();
          },
        );
      },
      child: KeyboardDismisserWidget(
        child: ReactiveForm(
          formGroup: _form,
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: $constants.insets.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 90,),
                  SizedBox(
                    height: 30,
                    child: Row(children: [
                      Image.asset('assets/images/splash/splash_logo_papmall.png',
                        width: 130,
                        height: 30,),
                      const Spacer(),
                      TextButton(onPressed:() {
                        print("Click Cancel");
                      },
                        child: Image.asset("assets/images/auth/ic_cancel_x.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Text(context.t.login.text_login,
                      style: const TextStyle(
                        fontSize: 28,
                        color: Color(0xFF0F1114),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32,),

                  CustomTextFieldSignUp(
                    key: const Key('username'),
                    formControlName: 'username',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    labelText: context.t.strings.form.username.label,
                    hintText: context.t.strings.form.username.hint,
                    minLength: 4,
                    isRequired: true,
                  ),
                  ReactiveFormConsumer(
                    builder: (context, formGroup, child) {
                      return CustomTextFieldSignUp(
                        key: const Key('password'),
                        formControlName: 'password',
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.send,
                        obscureText: true,
                        labelText: context.t.strings.form.password.label,
                        hintText: context.t.strings.form.password.hint,
                        minLength: 4,
                        isRequired: true,
                        onSubmitted: _form.valid
                            ? (_) => BlocProvider.of<AuthCubit>(context).login(
                                  username: username,
                                  password: password,
                                )
                            : null,
                      );
                    },
                  ),
                  SizedBox(height: $constants.insets.sm),
                  ReactiveFormConsumer(
                    builder: (context, formGroup, child) => CustomButton(
                      controller: _btnController,
                      width: getSize(context).width,
                      text: context.t.login.text_login,
                      onPressed: _form.valid
                          ? () => BlocProvider.of<AuthCubit>(context).login(
                                username: username,
                                password: password,
                              )
                          : null,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            context.t.login.need_help,
                            style: const TextStyle(
                              color: Color(0xFF1F69B2),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                      ),
                      Spacer(),

                      TextButton(
                        onPressed: () {},
                        child: Text(
                          context.t.login.forget_password,
                          style: const TextStyle(
                            color: Color(0xFF1B2029),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
