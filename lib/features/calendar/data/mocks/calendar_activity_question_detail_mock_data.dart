import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

class CalendarActivityQuestionDetailMockData {
  CalendarActivityQuestionDetailMockData._();

  // ── Leaf sorular (nextQuestion yok) ─────────────────────────────────────────

  static const mockQuestionTripCount = ActivityQuestionDetailEntity(
    id: 'question-trip-count',
    text: 'Sefer Sayısı',
    displayOrder: 3,
    startDate: '0001-01-01T00:00:00Z',
    endDate: '0001-01-01T00:00:00Z',
    scheduledTime: '08:00:00',
    options: [
      ActivityQuestionOptionEntity(
        id: 'opt-trip-1',
        text: '1 Sefer',
        carbonValue: 5,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-trip-2',
        text: '2 Sefer',
        carbonValue: 8,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-trip-4',
        text: '4 Sefer',
        carbonValue: 10,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-trip-more',
        text: '5+ Sefer',
        carbonValue: 12,
        nextQuestionId: null,
        nextQuestion: null,
      ),
    ],
  );

  static const mockQuestionRecycle = ActivityQuestionDetailEntity(
    id: 'question-recycle',
    text: 'Evde çöplerinizi ayrıştırıyor musunuz?',
    displayOrder: 4,
    startDate: '0001-01-01T00:00:00Z',
    endDate: '0001-01-01T00:00:00Z',
    scheduledTime: '00:00:00',
    options: [
      ActivityQuestionOptionEntity(
        id: '019d761b-5c5c-7290-ab61-8fbb4b8f25aa',
        text: 'Evet, düzenli yapıyorum',
        carbonValue: 10.5,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: '019d761b-5c5c-7290-ab61-8fbb4b8f25ab',
        text: 'Bazen',
        carbonValue: 2,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: '019d761b-5c5c-7290-ab61-8fbb4b8f25ac',
        text: 'Hayır',
        carbonValue: -2,
        nextQuestionId: null,
        nextQuestion: null,
      ),
    ],
  );

  // ── nextQuestion zinciri olan sorular ────────────────────────────────────────

  /// Seçilen toplu taşıma aracını sorar; her seçenek trip-count'a yönlendirir.
  static const mockQuestionTransportVehicle = ActivityQuestionDetailEntity(
    id: 'question-transport-vehicle',
    text: 'Kullandığınız ulaşım aracını seçiniz.',
    displayOrder: 2,
    startDate: '0001-01-01T00:00:00Z',
    endDate: '0001-01-01T00:00:00Z',
    scheduledTime: '08:00:00',
    options: [
      ActivityQuestionOptionEntity(
        id: 'opt-vehicle-otobus',
        text: 'Otobüs',
        carbonValue: 15,
        nextQuestionId: 'question-trip-count',
        nextQuestion: mockQuestionTripCount,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-vehicle-metro',
        text: 'Metro',
        carbonValue: 20,
        nextQuestionId: 'question-trip-count',
        nextQuestion: mockQuestionTripCount,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-vehicle-tramvay',
        text: 'Tramvay',
        carbonValue: 18,
        nextQuestionId: 'question-trip-count',
        nextQuestion: mockQuestionTripCount,
      ),
    ],
  );

  /// Kök soru: işe hangi araçla gidildiğini sorar.
  /// "Toplu Ulaşım" seçeneği → transport-vehicle → trip-count zinciri kurar.
  static const mockQuestionCommute = ActivityQuestionDetailEntity(
    id: 'question-commute',
    text: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
    displayOrder: 1,
    startDate: '0001-01-01T00:00:00Z',
    endDate: '0001-01-01T00:00:00Z',
    scheduledTime: '08:00:00',
    options: [
      ActivityQuestionOptionEntity(
        id: 'opt-commute-toplu',
        text: 'Toplu Ulaşım',
        carbonValue: 25,
        nextQuestionId: 'question-transport-vehicle',
        nextQuestion: mockQuestionTransportVehicle,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-commute-bisiklet',
        text: 'Bisiklet',
        carbonValue: 30,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-commute-ozel',
        text: 'Özel Araç',
        carbonValue: -8,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-commute-yuruyus',
        text: 'Yürüyüş',
        carbonValue: 35,
        nextQuestionId: null,
        nextQuestion: null,
      ),
    ],
  );

  // ── ID'ye göre arama ─────────────────────────────────────────────────────────

  static const _byId = <String, ActivityQuestionDetailEntity>{
    'question-commute': mockQuestionCommute,
    'question-transport-vehicle': mockQuestionTransportVehicle,
    'question-trip-count': mockQuestionTripCount,
    'question-recycle': mockQuestionRecycle,
  };

  static ActivityQuestionDetailEntity forId(String id) =>
      _byId[id] ??
      const ActivityQuestionDetailEntity(
        id: '',
        text: '',
        displayOrder: 0,
        startDate: '0001-01-01T00:00:00Z',
        endDate: '0001-01-01T00:00:00Z',
        scheduledTime: '00:00:00',
        options: [],
      );
}
