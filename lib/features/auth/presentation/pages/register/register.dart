import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/widgets/checkbox.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/textfield.dart';
import 'package:karbon/widgets/birth_date_picker.dart';
import 'package:karbon/widgets/app_logo.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/widgets/infocard.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/widgets/screen_titles.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/presentation/bloc/register/register_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/register/register_state.dart';
import 'package:karbon/features/auth/presentation/controllers/register_form_controller.dart';
import 'package:karbon/features/auth/presentation/pages/error_popup_widget.dart';
import 'package:karbon/widgets/back_icon_button.dart';

part 'widgets/register_form.dart';
part 'widgets/register_info.dart';
part 'widgets/register_kvkk.dart';
part 'widgets/password_validation_text.dart';
part 'sections/register_feature.dart';
part 'sections/register_bottom.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formController = RegisterFormController();

  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterCubit>(),
      child: BlocListener<RegisterCubit, RegisterState>(
        listenWhen: (p, c) => p.status != c.status,
        listener: (context, state) {
          if (state.status == RegisterPageStatus.success) {
            context.router.replace(const HomeShellRoute());
          }
          if (state.hasError) {
            showAppErrorDialog(
              context,
              message: state.error!,
              onDismissed: () => context.read<RegisterCubit>().resetError(),
            );
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: context.colors.primary,
          body: SafeArea(
            bottom: false,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned.fill(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: constraints.maxHeight,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RegisterFeatureSection(
                                formController: _formController,
                              ),
                              RegisterBottomSection(
                                formController: _formController,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 0,
                  left: AppThemeSpacing.s25.w,
                  child: BackIconButton(
                    color: context.colors.textOnPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
