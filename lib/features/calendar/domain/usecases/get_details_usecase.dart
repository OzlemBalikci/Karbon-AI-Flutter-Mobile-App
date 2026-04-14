import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/repositories/calendar_repository.dart';

@injectable
class GetDetailsUsecase {
  GetDetailsUsecase(this._repository);
  final CalendarRepository _repository;

  Future<Either<Exception, DailyDayDetailEntity>> call({
    required String date,
  }) =>
      _repository.getDetails(date: date);
}
