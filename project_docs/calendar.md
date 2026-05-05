
## 5. Gün Detayı

### `GET /daily-activities?date=2026-04-15`

Takvimde seçilen güne ait cevap detaylarını döner.

**İş Kuralları:**
- `UserActivityLogs` tablosundan `ActivityDate`'e göre filtrelenir
- O gün hiç cevap yoksa `404` döner
- `totalScore` → o günün toplam karbon skoru

**Query Parameters**

| Parametre | Tip | Zorunlu | Açıklama |
|---|---|---|---|
| `date` | `DateTime` | Evet | `yyyy-MM-dd` formatında |

**Örnek:** `GET /daily-activities?date=2026-04-15`

**Response `200 OK`**
```json
{
  "isSuccessful": true,
  "statusCode": 200,
  "errors": null,
  "data": {
    "date": "2026-04-15T00:00:00Z",
    "totalScore": 42.0,
    "activities": [
      {
        "questionText": "Bu sabah işe hangi ulaşım aracıyla gideceksiniz?",
        "selectedOptionText": "Toplu Ulaşım",
        "score": 25.0,
        "activityDate": "2026-04-15T08:30:00Z"
      },
      {
        "questionText": "Kullandığınız ulaşım aracını seçiniz.",
        "selectedOptionText": "Otobüs",
        "score": 17.0,
        "activityDate": "2026-04-15T08:31:00Z"
      }
    ]
  }
}
```

**Response `404 Not Found`**
```json
{
  "isSuccessful": false,
  "statusCode": 404,
  "errors": [{ "code": "ActivityNotFound" }],
  "data": null
}
```

**Alan Açıklamaları**

| Alan | Tip | Açıklama |
|---|---|---|
| `date` | `DateTime` | Seçilen gün |
| `totalScore` | `double` | Günün toplam karbon skoru |
| `activities[].questionText` | `string` | Soru metni |
| `activities[].selectedOptionText` | `string` | Seçilen option metni |
| `activities[].score` | `double` | O cevabın karbon skoru |
| `activities[].activityDate` | `DateTime` | Cevabın verildiği saat |

---

## 6. Takvim

### `GET /daily-activities/calendar`

Seçilen dönemdeki günlük karbon skorlarını döner.

**İş Kuralları:**
- `UserActivityAnswers` tablosundan `AnsweredAt`'e göre filtrelenir
- `month` girilmezse tüm yıl döner
- `period` girilirse: `1` = 1-15, `2` = 16-31 arası günler

**Query Parameters**

| Parametre | Tip | Zorunlu | Açıklama |
|---|---|---|---|
| `year` | `int` | Evet | Yıl |
| `month` | `int` | Hayır | Ay (1-12). Girilmezse tüm yıl döner |
| `period` | `int` | Hayır | `1` = 1-15, `2` = 16-31 |

**Örnek:** `GET /daily-activities/calendar?year=2026&month=4&period=1`

**Response `200 OK`**
```json
{
  "isSuccessful": true,
  "statusCode": 200,
  "errors": null,
  "data": {
    "totalScore": 670.0,
    "items": [
      {
        "date": "2026-04-01T00:00:00Z",
        "score": 42.0,
        "hasDetails": true
      },
      {
        "date": "2026-04-03T00:00:00Z",
        "score": 18.5,
        "hasDetails": true
      }
    ]
  }
}
```

**Alan Açıklamaları**

| Alan | Tip | Açıklama |
|---|---|---|
| `totalScore` | `double` | Seçilen dönemin toplam skoru |
| `items[].date` | `DateTime` | Gün |
| `items[].score` | `double` | O günün toplam karbon skoru |
| `items[].hasDetails` | `bool` | Her zaman `true` — aktivite olan günler döner |

**Flutter akışı:**
- `hasDetails == true` olan günleri takvimde işaretle
- O güne tıklanınca `GET /daily-activities?date=...` çağır

---

## 7. Aylık Aktiviteler

### `GET /daily-activities/monthly`

"Tümünü Gör" ekranı için seçilen periyodun günlük skorlarını döner.

**İş Kuralları:**
- `period=1` → 1-15 arası günler
- `period=2` → 16-31 arası günler
- `totalMonthlyScore` → tüm ayın skoru (periyottan bağımsız)
- `totalPeriodScore` → sadece seçilen periyodun skoru
- O periyotta hiç kayıt yoksa `404` döner

**Query Parameters**

| Parametre | Tip | Zorunlu | Açıklama |
|---|---|---|---|
| `year` | `int` | Evet | Yıl |
| `month` | `int` | Evet | Ay (1-12) |
| `period` | `int` | Evet | `1` veya `2` |

**Örnek:** `GET /daily-activities/monthly?year=2026&month=4&period=1`

**Response `200 OK`**
```json
{
  "isSuccessful": true,
  "statusCode": 200,
  "errors": null,
  "data": {
    "totalMonthlyScore": 670.0,
    "totalPeriodScore": 335.0,
    "dailyScores": [
      {
        "date": "2026-04-01T00:00:00Z",
        "totalScore": 42.0
      },
      {
        "date": "2026-04-03T00:00:00Z",
        "totalScore": 18.5
      }
    ]
  }
}
```

**Response `404 Not Found` — Bu periyotta kayıt yok**
```json
{
  "isSuccessful": false,
  "statusCode": 404,
  "errors": [{ "code": "NoActivityFoundForPeriod" }],
  "data": null
}
```

**Alan Açıklamaları**

| Alan | Tip | Açıklama |
|---|---|---|
| `totalMonthlyScore` | `double` | Tüm ayın toplam skoru |
| `totalPeriodScore` | `double` | Seçilen periyodun skoru |
| `dailyScores[].date` | `DateTime` | Gün |
| `dailyScores[].totalScore` | `double` | O günün toplam skoru |

---

## 8. Aktivite Soru Detayı

### `GET /activity-questions/{id}`

Seçilen aktivite sorusunun detayını ve seçenek kırılımlarını döner.

**İş Kuralları:**
- `id` değeri, gün detayı endpointindeki `activities[].activityQuestionId` alanından alınır
- Soruya bağlı seçenekler `options[]` içinde döner
- Soru bulunamazsa `404` döner

**Path Parameters**

| Parametre | Tip | Zorunlu | Açıklama |
|---|---|---|---|
| `id` | `Guid/string` | Evet | Aktivite soru kimliği (`activityQuestionId`) |

**Örnek:** `GET /activity-questions/019d761b-5c59-74c1-a7ec-09138dcfc8fd`

**Response `200 OK`**
```json
{
  "data": {
    "id": "019d761b-5c59-74c1-a7ec-09138dcfc8fd",
    "text": "Günlük adım sayınız ne kadar?",
    "displayOrder": 1,
    "startDate": "0001-01-01T00:00:00Z",
    "endDate": "0001-01-01T00:00:00Z",
    "scheduledTime": "00:00:00",
    "options": [
      {
        "id": "019d761b-5c5c-7290-ab61-8fbb4b8f2518",
        "text": "300 adım",
        "carbonValue": 1,
        "nextQuestionId": null,
        "nextQuestion": null
      }
    ]
  },
  "isSuccessful": true,
  "statusCode": 200,
  "errors": []
}
```

**Response `404 Not Found`**
```json
{
  "isSuccessful": false,
  "statusCode": 404,
  "errors": [{ "code": "ActivityQuestionNotFound" }],
  "data": null
}
```

**Alan Açıklamaları**

| Alan | Tip | Açıklama |
|---|---|---|
| `id` | `string` | Aktivite soru kimliği |
| `text` | `string` | Soru metni |
| `displayOrder` | `int` | Soru sırası |
| `startDate` | `DateTime` | Soru geçerlilik başlangıcı |
| `endDate` | `DateTime` | Soru geçerlilik bitişi |
| `scheduledTime` | `string` | Planlanan saat (`HH:mm:ss`) |
| `options[].id` | `string` | Seçenek kimliği |
| `options[].text` | `string` | Seçenek metni |
| `options[].carbonValue` | `double` | Seçeneğin karbon puanı |
| `options[].nextQuestionId` | `string?` | Varsa zincirdeki sonraki soru |
| `options[].nextQuestion` | `object?` | Backend destekliyorsa inline sonraki soru detayı |

**Flutter akışı:**
- Kullanıcı gün detayı ekranında bir soru kartı seçer
- Karttaki `activityQuestionId` route ile detay sayfasına taşınır
- Detay sayfası açılışta `GET /activity-questions/{id}` çağırır
- Dönen `options[]` listesi soru altında gösterilir
