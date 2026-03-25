import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_answer_result_entity.dart';

@injectable
class GetDetailsUsecase {
  GetDetailsUsecase(this._repository);
  final DailyActivitiesRepository _repository;

  Future<Either<Exception, DailyAnswerResultEntity>> call({
    required String date,
  }) =>
      _repository.getDetails(date: date);
}
