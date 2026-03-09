import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/domain/entities/carbon_question.dart';

abstract class CarbonCalculateRemote {
  Future<List<CarbonQuestion>> fetchQuestions();
}

@LazySingleton(as: CarbonCalculateRemote)
class CarbonCalculateRemoteImpl implements CarbonCalculateRemote {
  // TODO: Dio ile backend API bağlantısı
  @override
  Future<List<CarbonQuestion>> fetchQuestions() async {
    throw UnimplementedError('Backend hazır olunca implement edilecek');
  }
}
