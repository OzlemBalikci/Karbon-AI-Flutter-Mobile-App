import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_bloc.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_state.dart';

typedef UsefulinfoListSelector
    = BlocSelector<UsefulinfoBloc, UsefulinfoState, List<UsefulInfoEntity>>;

typedef UsefulinfoStatusSelector
    = BlocSelector<UsefulinfoBloc, UsefulinfoState, UsefulinfoState>;
