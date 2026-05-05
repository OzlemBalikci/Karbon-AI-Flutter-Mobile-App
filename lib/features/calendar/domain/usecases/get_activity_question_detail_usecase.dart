import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/repositories/calendar_repository.dart';

@injectable
class GetActivityQuestionDetailUsecase {
  GetActivityQuestionDetailUsecase(this._repository);
  final CalendarRepository _repository;

  Future<Either<AppException, ActivityQuestionDetailEntity>> call({
    required String id,
  }) =>
      _repository.getActivityQuestionDetail(id: id);
}
