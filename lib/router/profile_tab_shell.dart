import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_bloc.dart';

@RoutePage()
class ProfileTabShellPage extends StatelessWidget {
  const ProfileTabShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (_) => getIt<ProfileBloc>(),
      child: const AutoRouter(),
    );
  }
}
