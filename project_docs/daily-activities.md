# Günlük Aktiviteler

## İş Kuralları

- Admin her gün için maksimum 2 soru oluşturabilir
- Sorular gece 00:00'a kadar aktiftir (kalan süre saniye olarak döner)
- Sorular kırılımlı yapıda olabilir — bir seçenek bir sonraki soruyu tetikler
- Kullanıcı bir soruyu cevapladıktan sonra soru "Bugünün Soruları"ndan kalkar
- Cevaplanmış sorular "Önceki Cevaplarınız" bölümüne taşınır
- Önceki cevaplar sadece en son cevaplanmış günü gösterir
- Takvim sayfasında tüm geçmiş görülebilir

## Flutter Akışı

```
Günlük Aktivitelerim sayfası açılır
    ↓
GET /api/v1/daily-activities/questions     → Bugünün soruları
GET /api/v1/daily-activities/previous-answers → Önceki cevaplar
    ↓
Kullanıcı soruya tıklar → Kırılımlı soru akışı başlar
    ↓
POST /api/v1/daily-activities/answers
    ↓
Response'da nextQuestion varsa → Bir sonraki soruyu göster
Response'da nextQuestion null ise → Akış bitti, "Puanı Al" göster
    ↓
GET /api/v1/daily-activities/questions  → Cevaplanmış soru artık gelmez
GET /api/v1/daily-activities/previous-answers → Yeni cevap görünür
```

### Bekleyen Soru Badge Akışı
```
Ana sayfa açılır
    ↓
GET /api/v1/daily-activities?status=pending
    ↓
hasPending: true → "X cevaplanmamış soru var" badge'i göster
```

---

## Bugünün Soruları

**GET** `/api/v1/daily-activities/questions`  
🔒 Auth gerekli

### İş Kuralları
- Sadece bugün aktif olan ve henüz cevaplanmamış sorular döner
- Maksimum 2 soru döner
- Boş liste gelirse "Bugün sorunuz yok" gösterilir

### Response `200`
```json
{
  "isSuccess": true,
  "data": [
    {
      "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "text": "Bu sabah işe hangi ulaşım aracıyla gideceksiniz?",
      "displayOrder": 1,
      "options": [
        {
          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "text": "Toplu Ulaşım",
          "carbonValue": 25.0,
          "nextQuestionId": "4fa85f64-5717-4562-b3fc-2c963f66afa6"
        },
        {
          "id": "4fa85f64-5717-4562-b3fc-2c963f66afa6",
          "text": "Araba",
          "carbonValue": -10.0,
          "nextQuestionId": null
        }
      ],
      "remainingSeconds": 57600
    }
  ]
}
```

---

## Cevap Kaydet

**POST** `/api/v1/daily-activities/answers`  
🔒 Auth gerekli

### İş Kuralları
- `nextQuestion` null değilse kırılım devam eder, bir sonraki soruyu göster
- `nextQuestion` null ise akış tamamlandı, toplam skoru göster
- `isFlowCompleted: true` olduğunda "Puanı Al" ekranını göster

### Request Body
```json
{
  "questionId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "selectedOptionId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "userId": "3fa85f64-5717-4562-b3fc-2c963f66afa6"
}
```

### Response `200` — Akış devam ediyor
```json
{
  "isSuccess": true,
  "data": {
    "nextQuestion": {
      "id": "4fa85f64-5717-4562-b3fc-2c963f66afa6",
      "text": "Kullandığınız ulaşım aracını seçiniz.",
      "displayOrder": 2,
      "options": [...],
      "remainingSeconds": 57580
    },
    "totalCarbonScore": 0,
    "isFlowCompleted": false
  }
}
```

### Response `200` — Akış tamamlandı
```json
{
  "isSuccess": true,
  "data": {
    "nextQuestion": null,
    "totalCarbonScore": 25.0,
    "isFlowCompleted": true
  }
}
```

---

## Önceki Cevaplar

**GET** `/api/v1/daily-activities/previous-answers`  
🔒 Auth gerekli

### İş Kuralları
- Sadece en son cevaplanmış günün cevapları döner
- Tarihe göre gruplandırılmış döner

### Response `200`
```json
{
  "isSuccess": true,
  "data": [
    {
      "date": "2023-12-06T00:00:00Z",
      "answers": [
        {
          "questionText": "Bu sabah işe hangi ulaşım aracıyla gideceksiniz?",
          "answerText": "Toplu Ulaşım",
          "score": 25.0,
          "date": "2023-12-06T08:30:00Z"
        },
        {
          "questionText": "Günlük kahve tüketiminiz ne kadar?",
          "answerText": "1 bardak",
          "score": -10.0,
          "date": "2023-12-06T08:35:00Z"
        }
      ]
    }
  ]
}
```

---

## Bekleyen Sorular

**GET** `/api/v1/daily-activities?status=pending`  
🔒 Auth gerekli

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "hasPending": true,
    "pendingCount": 1
  }
}
```

---
