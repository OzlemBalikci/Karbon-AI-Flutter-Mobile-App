import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

abstract final class ActivePollSetMock {
  static const String pollSetId = 'mock-poll-set-001';

  static ActivePollSetEntity get entity => ActivePollSetEntity(
        pollSetId: pollSetId,
        name: 'Mock Aylık Karbon Anketi',
        description:
            'Geliştirme ortamı için örnek anket. Her soruda 2–3 seçenek vardır.',
        questions: questions,
      );

  static final List<PollQuestionEntity> questions =
      List<PollQuestionEntity>.unmodifiable([
    _q(
      order: 1,
      qid: 'mock-q-01',
      text: 'Evinizi kaç kişi ile paylaşıyorsunuz?',
      options: [
        _o('mock-q01-a', 'Yalnız yaşıyorum.',
            'Tek kişilik hane genelde daha fazla tüketim.', 12.0),
        _o('mock-q01-b', '2 kişi.', 'Ortak kullanım tüketimi paylaşır.', 8.0),
        _o('mock-q01-c', '3 veya daha fazla.',
            'Aynı alan için kaynak daha verimli kullanılır.', 5.0),
        _o('mock-q01-d', '4 veya daha fazla.',
            'Aynı alan için kaynak daha verimli kullanılır.', 5.0),
        _o('mock-q01-e', '5 veya daha fazla.',
            'Aynı alan için kaynak daha verimli kullanılır.', 5.0),
      ],
    ),
    _q(
      order: 2,
      qid: 'mock-q-02',
      text: 'Haftalık toplu taşıma kullanımınız nasıl?',
      options: [
        _o('mock-q02-a', 'Neredeyse her gün.', 'Düşük emisyonlu ulaşım.', 3.0),
        _o('mock-q02-b', 'Haftada birkaç gün.', 'Orta düzey.', 7.0),
        _o('mock-q02-c', 'Nadiren / hiç.', 'Bireysel araç ağırlığı.', 14.0),
        _o('mock-q02-d', '4 veya daha fazla.',
            'Aynı alan için kaynak daha verimli kullanılır.', 5.0),
        _o('mock-q02-e', '5 veya daha fazla.',
            'Aynı alan için kaynak daha verimli kullanılır.', 5.0),
      ],
    ),
    _q(
      order: 3,
      qid: 'mock-q-03',
      text: 'İşe gidip gelirken ana ulaşım aracınız nedir?',
      options: [
        _o('mock-q03-a', 'Yürüyüş / bisiklet.', 'Sıfır emisyon.', 1.0),
        _o('mock-q03-b', 'Toplu taşıma.', 'Düşük emisyon.', 4.0),
        _o('mock-q03-c', 'Özel araç.', 'Yüksek emisyon.', 18.0),
      ],
    ),
    _q(
      order: 4,
      qid: 'mock-q-04',
      text: 'Yılda kaç kez uçak yolculuğu yapıyorsunuz?',
      options: [
        _o('mock-q04-a', 'Hiç / yılda 1 kez.', 'Uçuş emisyonu düşük.', 6.0),
        _o('mock-q04-b', '2–5 kez.', 'Orta.', 22.0),
        _o('mock-q04-c', '5’ten fazla.', 'Yüksek emisyon.', 45.0),
        _o('mock-q04-d', '4 veya daha fazla.',
            'Aynı alan için kaynak daha verimli kullanılır.', 5.0),
      ],
    ),
    _q(
      order: 5,
      qid: 'mock-q-05',
      text: 'Evinizin ısıtma tipi nedir?',
      options: [
        _o('mock-q05-a', 'Isı pompası / güneş.', 'Düşük karbon.', 5.0),
        _o('mock-q05-b', 'Doğalgaz.', 'Orta.', 11.0),
        _o('mock-q05-c', 'Kömür / fuel oil.', 'Yüksek emisyon.', 20.0),
      ],
    ),
    _q(
      order: 6,
      qid: 'mock-q-06',
      text: 'Haftalık et tüketiminiz nasıl?',
      options: [
        _o('mock-q06-a', 'Vejetaryen / vegan.', 'Düşük karbon.', 4.0),
        _o('mock-q06-b', 'Haftada 1–2 kez et.', 'Orta.', 10.0),
        _o('mock-q06-c', 'Neredeyse her gün kırmızı et.', 'Yüksek emisyon.',
            18.0),
        _o('mock-q06-d', '4 veya daha fazla.',
            'Aynı alan için kaynak daha verimli kullanılır.', 5.0),
        _o('mock-q06-e', '5 veya daha fazla.',
            'Aynı alan için kaynak daha verimli kullanılır.', 5.0),
      ],
    ),
    _q(
      order: 7,
      qid: 'mock-q-07',
      text: 'Yerel ve mevsimlik gıda tercihiniz?',
      options: [
        _o('mock-q07-a', 'Çoğunlukla yerli ve mevsimlik.', 'Düşük emisyon.',
            3.0),
        _o('mock-q07-b', 'Karışık.', 'Orta.', 8.0),
        _o('mock-q07-c', 'Sık sık ithal ürün.', 'Uzak taşıma emisyonu.', 13.0),
      ],
    ),
    _q(
      order: 8,
      qid: 'mock-q-08',
      text: 'Günlük su kullanımınızı nasıl değerlendirirsiniz?',
      options: [
        _o('mock-q08-a', 'Tasarruflu (kısa duş, musluk kapalı).',
            'Düşük tüketim.', 2.0),
        _o('mock-q08-b', 'Orta.', 'Standart.', 5.0),
        _o('mock-q08-c', 'Uzun duşlar, sık çamaşır.', 'Yüksek su/enerji.', 9.0),
      ],
    ),
    _q(
      order: 9,
      qid: 'mock-q-09',
      text: 'Evinizde enerji sınıfı yüksek (A+) beyaz eşya kullanımı?',
      options: [
        _o('mock-q09-a', 'Evet, çoğu A+.', 'Verimli.', 3.0),
        _o('mock-q09-b', 'Kısmen.', 'Orta.', 7.0),
        _o('mock-q09-c', 'Hayır / eski cihazlar.', 'Yüksek tüketim.', 12.0),
      ],
    ),
    _q(
      order: 10,
      qid: 'mock-q-10',
      text: 'Tek kullanımlık plastik ürünleri ne sıklıkla kullanıyorsunuz?',
      options: [
        _o('mock-q10-a', 'Çok nadir.', 'Düşük atık.', 2.0),
        _o('mock-q10-b', 'Orta sıklıkta.', 'Orta.', 8.0),
        _o('mock-q10-c', 'Sık sık.', 'Yüksek atık/emisyon.', 14.0),
      ],
    ),
    _q(
      order: 11,
      qid: 'mock-q-11',
      text: 'Atıklarınızı ayırıyor musunuz?',
      options: [
        _o('mock-q11-a', 'Evet, düzenli geri dönüşüm.', 'Düşük.', 2.0),
        _o('mock-q11-b', 'Kısmen.', 'Orta.', 6.0),
        _o('mock-q11-c', 'Hayır.', 'Yüksek çevresel yük.', 11.0),
      ],
    ),
    _q(
      order: 12,
      qid: 'mock-q-12',
      text: 'Dijital cihazlarınızı kaç yılda bir yeniliyorsunuz?',
      options: [
        _o('mock-q12-a', '4 yıl ve üzeri.', 'Düşük emisyon.', 4.0),
        _o('mock-q12-b', '2–3 yılda bir.', 'Orta.', 9.0),
        _o('mock-q12-c', 'Her yıl.', 'Yüksek emisyon.', 16.0),
      ],
    ),
    _q(
      order: 13,
      qid: 'mock-q-13',
      text: 'Yılda kaç kez kısa mesafe (şehir içi) tatil yapıyorsunuz?',
      options: [
        _o('mock-q13-a', '0–1.', 'Düşük ulaşım emisyonu.', 3.0),
        _o('mock-q13-b', '2–4.', 'Orta.', 10.0),
        _o('mock-q13-c', '5+.', 'Yüksek.', 17.0),
      ],
    ),
  ]);

  static PollQuestionEntity _q({
    required int order,
    required String qid,
    required String text,
    required List<PollOptionEntity> options,
  }) {
    return PollQuestionEntity(
      id: qid,
      text: text,
      displayOrder: order,
      selectedOptionId: null,
      options: options,
    );
  }

  static PollOptionEntity _o(
    String id,
    String text,
    String message,
    double carbonValue,
  ) {
    return PollOptionEntity(
      id: id,
      text: text,
      message: message,
      carbonValue: carbonValue,
      nextPollQuestionId: null,
    );
  }
}
