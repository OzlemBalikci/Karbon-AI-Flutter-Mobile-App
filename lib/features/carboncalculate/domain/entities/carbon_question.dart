class CarbonQuestion {
  const CarbonQuestion({
    required this.question,
    required this.options,
    required this.infoText,
  });

  final String question;
  final List<CarbonQuestionOption> options;
  final String infoText;

  Map<String, dynamic> toJson() => {
        'question': question,
        'options': options.map((o) => o.toJson()).toList(),
        'infoText': infoText,
      };

  factory CarbonQuestion.fromJson(Map<String, dynamic> json) => CarbonQuestion(
        question: json['question'] as String? ?? '',
        options: (json['options'] as List?)
                ?.map((e) =>
                    CarbonQuestionOption.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        infoText: json['infoText'] as String? ?? '',
      );
}

class CarbonQuestionOption {
  const CarbonQuestionOption({required this.value, required this.label});
  final int value;
  final String label;

  Map<String, dynamic> toJson() => {'value': value, 'label': label};

  factory CarbonQuestionOption.fromJson(Map<String, dynamic> json) =>
      CarbonQuestionOption(
        value: json['value'] as int? ?? 0,
        label: json['label'] as String? ?? '',
      );
}
