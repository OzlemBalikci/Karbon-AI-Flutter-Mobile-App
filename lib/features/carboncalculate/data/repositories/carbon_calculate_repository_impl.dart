import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carbon_calculate_repository.dart';
import 'package:karbon/features/carboncalculate/data/datasources/carbon_calculate_remote.dart';
import 'package:karbon/features/carboncalculate/domain/entities/carbon_question.dart';

@LazySingleton(as: CarbonCalculateRepository)
class CarbonCalculateRepositoryImpl implements CarbonCalculateRepository {
  CarbonCalculateRepositoryImpl(this._remote);

  final CarbonCalculateRemote _remote;

  @override
  Future<List<CarbonQuestion>> getQuestions() async {
    // TODO: Backend hazır olunca: return _remote.fetchQuestions();
    try {
      return await _remote.fetchQuestions();
    } on UnimplementedError {
      return _getMockQuestions();
    } on Exception {
      return _getMockQuestions();
    }
  }

  List<CarbonQuestion> _getMockQuestions() {
    const questions = {
      'question': 'Evinizi kaç kişi ile paylaşıyorsunuz?',
      'options': [
        {'value': 1, 'label': 'Yalnız yaşıyorum.'},
        {'value': 2, 'label': 'Evimi 1 kişi ile paylaşıyorum.'},
        {'value': 3, 'label': 'Evimi 2 kişi ile paylaşıyorum.'},
        {'value': 4, 'label': 'Evimi 3 kişi ile paylaşıyorum.'},
        {'value': 5, 'label': 'Evimi 4 kişi ile paylaşıyorum.'},
        {'value': 6, 'label': 'Evimi 5 kişi ile paylaşıyorum.'},
        {'value': 7, 'label': 'Evimi 6 kişi ile paylaşıyorum.'},
      ],
      'infoText': 'Araştırmalar gözden geçirildikten sonra güncellenecektir.',
    };
    return List.generate(13, (_) => CarbonQuestion.fromJson(questions));
  }
}
