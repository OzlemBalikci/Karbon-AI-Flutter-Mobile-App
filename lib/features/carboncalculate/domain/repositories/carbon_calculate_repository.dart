import 'package:karbon/features/carboncalculate/domain/entities/carbon_question.dart';

abstract class CarbonCalculateRepository {
  Future<List<CarbonQuestion>> getQuestions();
}
