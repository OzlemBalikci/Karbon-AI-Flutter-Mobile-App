import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exception_unwrapper.dart';
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_local.dart';
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_remote.dart';
import 'package:karbon/features/carboncalculate/data/dtos/active_pollset_dto.dart';
import 'package:karbon/features/carboncalculate/data/mapper/dto_mapper.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart';

@LazySingleton(as: CarbonCalculateRepository)
class CarbonCalculateRepositoryImpl implements CarbonCalculateRepository {
  CarbonCalculateRepositoryImpl(this._remote, this._local);

  final CarbonCalculateRemote _remote;
  final CarbonCalculateLocal _local;

  @override
  Future<Either<Exception, ActivePollSetEntity>> getActivePoll() async {
    try {
      final poll = await _remote.getActivePoll();
      return Right(poll);
    } on Exception catch (e) {
      final raw = await _local.getActivePollJson();
      if (raw != null && raw.isNotEmpty) {
        try {
          final map = jsonDecode(raw) as Map<String, dynamic>;
          return Right(
              PollMapper.toActivePollEntity(ActivePollSetDto.fromJson(map)));
        } catch (_) {}
      }
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, PollSubmissionResultEntity>> savePollDraft({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) async {
    try {
      final r = await _remote.savePollDraft(
        pollSetId: pollSetId,
        answers: answers,
      );
      return Right(r);
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, PollSubmissionResultEntity>> submitPollAnswers({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) async {
    try {
      final r = await _remote.submitPollAnswers(
        pollSetId: pollSetId,
        answers: answers,
      );
      return Right(r);
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, PollResultEntity>> getPollResults({
    required String pollSetId,
    required int month,
    required int year,
  }) async {
    try {
      final r = await _remote.getPollResults(
        pollSetId: pollSetId,
        month: month,
        year: year,
      );
      return Right(r);
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }
}
