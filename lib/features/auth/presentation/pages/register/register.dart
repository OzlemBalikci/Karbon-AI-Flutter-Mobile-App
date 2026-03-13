import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/widgets/checkbox.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/textfield.dart';
import 'package:karbon/core/translations.dart';
import 'package:karbon/widgets/birth_date_picker.dart';
import 'package:karbon/widgets/app_logo.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/widgets/primary_button.dart';
import 'package:karbon/widgets/infocard.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/widgets/screen_titles.dart';
import 'package:karbon/l10n/app_localizations.dart';

part 'widgets/register_form.dart';
part 'widgets/register_info.dart';
part 'widgets/register_kvkk.dart';
part 'sections/register_feature.dart';
part 'sections/register_bottom.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: context.colors.primary,
      body: SafeArea(
        bottom: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RegisterFeatureSection(),
                    RegisterBottomSection(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
