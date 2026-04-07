import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';
import 'package:karbon/features/profile/domain/repositories/profile_repository.dart';

@injectable
class GetDonationsUsecase {
  GetDonationsUsecase(this._repository);
  final ProfileRepository _repository;

  Future<Either<Exception, DonationHistoryEntity>> call() =>
      _repository.getDonations();
}
