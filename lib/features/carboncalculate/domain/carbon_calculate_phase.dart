sealed class CarbonCalculatePhase {
  const CarbonCalculatePhase();
}

class CarbonInfoPhase extends CarbonCalculatePhase {
  const CarbonInfoPhase();
}

class CarbonQuestionPhase extends CarbonCalculatePhase {
  final int questionIndex;
  const CarbonQuestionPhase({required this.questionIndex});

  @override
  bool operator ==(Object other) =>
      other is CarbonQuestionPhase && other.questionIndex == questionIndex;

  @override
  int get hashCode => questionIndex.hashCode;
}

class CarbonResultPhase extends CarbonCalculatePhase {
  const CarbonResultPhase();
}
