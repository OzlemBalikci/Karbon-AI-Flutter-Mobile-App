import 'package:flutter/material.dart';

enum LeaderCardVariant {
  compact, //AnaSayfa(iconsuz hal + seeother)
  expanded, // leaderofmonth
}

extension LeaderCardVariantExtension on LeaderCardVariant {
  bool get showSeeOtherCard => this == LeaderCardVariant.compact;
}

extension LeaderRankColors on int {
  (Color bg, Color text) get leaderRankColors => switch (this) {
        1 => (Color(0xFFFFD700), Color(0xFFBA9D00)),
        2 => (Color(0xFFC0C0C0), Color(0xFF959595)),
        3 => (Color(0xFFCD7F32), Color(0xFFA05C18)),
        _ => (Color(0xFFE0E0E0), Color(0xFF757575)),
      };
}
