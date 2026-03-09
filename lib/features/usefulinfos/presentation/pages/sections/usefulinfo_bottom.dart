part of '../usefulinfos.dart';

class UsefulInfoBottomSection extends StatelessWidget {
  const UsefulInfoBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: BlocProvider(
        create: (context) => getIt.get<UsefulinfoBloc>()
          ..add(const UsefulinfoEvent.loadRequested()),
        child: BlocBuilder<UsefulinfoBloc, UsefulinfoState>(
          builder: (context, state) {
            if (state.status == UsefulinfoStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.status == UsefulinfoStatus.error) {
              return Center(child: Text(state.error ?? 'Bir hata oluştu'));
            }
            return InfosButtons(infos: state.infos);
          },
        ),
      ),
    );
  }
}
