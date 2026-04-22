Açıklama
# Daily Activities — Flutter API Dokümantasyonu

Base URL: `https://<host>/api/v1/daily-activities`  
Auth: Tüm endpoint'ler `Bearer <access_token>` gerektirir.

Tüm başarılı cevaplar aşağıdaki zarfı kullanır: `isSuccessful`, `statusCode`, `errors`, `data`.

---

## İş Kuralları

- Admin günde maksimum **50 soru** oluşturabilir.
- Sorular **kırılımlı (ağaç)** yapıda olabilir: bir seçeneğin altında hem `nextQuestionId` hem de gömülü **`nextQuestion`** nesnesi dönebilir; gömülü nesne o seçenekten sonraki sorunun tamamını (kendi seçenekleri ve onların altındaki `nextQuestion` ile) içerir. Şema **özyinelemeli**dir.
- Kullanıcı bir kök soruyu tamamladıktan sonra o soru "Bugünün Soruları" listesinden kalkar.
- `GET .../previous-answers` yanıtında `data` genelde **en son cevaplanmış günün** kayıtlarını içeren tek gruptur (örneklerde tek `date` grubu).
- Takvim ekranı ayrı endpoint ile tüm geçmişi gösterebilir.

---

## Flutter istemci notu

`GET .../questions` dönüşünde kök `data[]` yalnızca **bugün cevaplanmamış kök soruları** listeler; her kök sorunun `options[]` elemanları içinde gömülü `nextQuestion` ağacı bulunabilir. İstemci veri katmanında (`adaptDailyQuestionDtoForClient` + `flattenDailyQuestionRootsToEntities`) bu ağaç **soru `id` sine göre tekilleştirilip** düz bir `List<DailyQuestionEntity>` yapılır; ekran ve bloc `nextQuestionId` ile bu listeden sonraki soruyu bulur.

```
Ekran açılır
    ↓
GET .../daily-activities?status=pending
GET .../questions          → Kök sorular + seçenek altı gömülü nextQuestion ağacı (istemci düzler)
GET .../previous-answers   → Son günün cevapları
    ↓
Kullanıcı soruya tıklar, kırılımı tamamlar, "Puanı Al" ile POST .../answers
    ↓
isFlowCompleted == false  → data.nextQuestion ile devam (aynı iç içe şema mümkün)
isFlowCompleted == true   → data.nextQuestion == null, toplam skor → tebrik popup
    ↓
Liste yenileme: GET questions + GET previous-answers (ve takvim ihtiyacına göre)
```

---

## 1. Bugünün Soruları

### `GET /daily-activities/questions`

Bugün aktif ve henüz tamamlanmamış **kök** soruları döner. Her kök sorunun seçenekleri, sonraki adımı tanımlamak için:

- `nextQuestionId` (opsiyonel, `null` ise akış bu dalda biter), ve/veya
- **`nextQuestion`** (opsiyonel): sonraki sorunun tam gövdesi; bu nesnenin `options[]` öğeleri yine aynı alanları taşıyabilir (sınırsız derinlik).

**İş kuralları (özet):**

- Tarih aralığı ve kullanıcıya göre filtre sunucuda yapılır.
- `remainingSeconds`: o gün için geri sayım (saniye).

**Örnek `200 OK` — gömülü `nextQuestion` (özet; gerçek yanıt daha derin olabilir)**

```json
{
  "isSuccessful": true,
  "statusCode": 200,
  "errors": null,
  "data": [
    {
      "id": "019daea9-51e0-7d8a-b708-87cf32c80312",
      "text": "Bu sabah işe hangi ulaşım aracıyla gideceksiniz?",
      "displayOrder": 1,
      "options": [
        {
          "id": "019daea9-51e0-76ad-a1c6-2c127b7fa0dd",
          "text": "Toplu Ulaşım",
          "carbonValue": 5,
          "nextQuestionId": "019daea9-51a8-7a26-870d-5ba28b54a4bf",
          "nextQuestion": {
            "id": "019daea9-51a8-7a26-870d-5ba28b54a4bf",
            "text": "Kullandığınız ulaşım aracını seçiniz.",
            "displayOrder": 2,
            "options": [
              {
                "id": "019daea9-51a8-7036-8b88-27edfb710ffb",
                "text": "Otobüs",
                "carbonValue": 8,
                "nextQuestionId": "019daea9-4cbf-7840-9a81-e69009c951ca",
                "nextQuestion": {
                  "id": "019daea9-4cbf-7840-9a81-e69009c951ca",
                  "text": "Sefer Sayısı",
                  "displayOrder": 3,
                  "options": [
                    {
                      "id": "019daea9-4cc2-70ba-95ef-f29972896726",
                      "text": "1 Sefer",
                      "carbonValue": 5,
                      "nextQuestionId": null,
                      "nextQuestion": null
                    }
                  ],
                  "remainingSeconds": 62774
                }
              }
            ],
            "remainingSeconds": 62774
          }
        },
        {
          "id": "019daea9-51e0-7bf4-8fd2-3cb0cb916c8e",
          "text": "Yürüyüş / Bisiklet",
          "carbonValue": 0,
          "nextQuestionId": null,
          "nextQuestion": null
        }
      ],
      "remainingSeconds": 62774
    }
  ]
}
```

**Boş liste:** `data: []` — bugün cevaplanacak kök soru kalmadı.

**Alan özeti — `DailyQuestion` / seçenek**

| Alan | Tip | Açıklama |
|------|-----|----------|
| `id` | string (uuid) | Soru kimliği |
| `text` | string | Soru metni |
| `displayOrder` | int | Sıra |
| `options` | array | Seçenekler |
| `options[].id` | string | Seçenek kimliği |
| `options[].text` | string | Seçenek metni |
| `options[].carbonValue` | number | Karbon / puan katkısı |
| `options[].nextQuestionId` | string \| null | Sonraki soru id (yoksa dal biter) |
| `options[].nextQuestion` | object \| null | Gömülü sonraki soru (recursive) |
| `remainingSeconds` | int | Gün sonuna kalan saniye |

---

## 2. Cevap Gönder

### `POST /daily-activities/answers`

**Request body**

```json
{
  "questionId": "019daea9-51e0-7d8a-b708-87cf32c80312",
  "selectedOptionId": "019daea9-51e0-76ad-a1c6-2c127b7fa0dd",
  "userId": "<kullanıcı-guid>"
}
```

| Alan | Zorunlu | Açıklama |
|------|---------|----------|
| `questionId` | Evet | Cevaplanan soru |
| `selectedOptionId` | Evet | Seçilen seçenek |
| `userId` | Evet | Oturum kullanıcısı |

**Response — akış devam (`isFlowCompleted: false`)**

`data.nextQuestion` bir sonraki soruyu taşır; seçenekler yine `nextQuestionId` / `nextQuestion` ile iç içe olabilir (GET ile aynı şema).

```json
{
  "isSuccessful": true,
  "statusCode": 200,
  "errors": null,
  "data": {
    "nextQuestion": {
      "id": "019daea9-51a8-7a26-870d-5ba28b54a4bf",
      "text": "Kullandığınız ulaşım aracını seçiniz.",
      "displayOrder": 2,
      "options": [
        {
          "id": "019daea9-51a8-7036-8b88-27edfb710ffb",
          "text": "Otobüs",
          "carbonValue": 8,
          "nextQuestionId": "019daea9-4cbf-7840-9a81-e69009c951ca",
          "nextQuestion": {
            "id": "019daea9-4cbf-7840-9a81-e69009c951ca",
            "text": "Sefer Sayısı",
            "displayOrder": 3,
            "options": [
              {
                "id": "019daea9-4cc2-70ba-95ef-f29972896726",
                "text": "1 Sefer",
                "carbonValue": 5,
                "nextQuestionId": null,
                "nextQuestion": null
              }
            ],
            "remainingSeconds": 62589
          }
        }
      ],
      "remainingSeconds": 62589
    },
    "totalCarbonScore": 5,
    "isFlowCompleted": false
  }
}
```

**Response — akış bitti (`isFlowCompleted: true`)**

```json
{
  "isSuccessful": true,
  "statusCode": 200,
  "errors": null,
  "data": {
    "nextQuestion": null,
    "totalCarbonScore": 33,
    "isFlowCompleted": true
  }
}
```

| Alan | Açıklama |
|------|----------|
| `nextQuestion` | Devam edecek soru; `null` ve `isFlowCompleted: true` ise akış bitti |
| `totalCarbonScore` | Bugüne ait güncel toplam karbon skoru |
| `isFlowCompleted` | `true` ise ödül / özet ekranı |

---

## 3. Önceki Cevaplar

### `GET /daily-activities/previous-answers`

En son cevaplanmış güne ait kayıtlar (çoğunlukla tek gün grubu).

**Örnek `200 OK`**

```json
{
  "isSuccessful": true,
  "statusCode": 200,
  "errors": null,
  "data": [
    {
      "date": "2026-04-21T00:00:00Z",
      "answers": [
        {
          "questionText": "Sefer Sayısı",
          "answerText": "4+ Sefer",
          "score": 20,
          "date": "2026-04-21T06:39:50.385265Z"
        },
        {
          "questionText": "Kullandığınız ulaşım aracını seçiniz.",
          "answerText": "Otobüs",
          "score": 8,
          "date": "2026-04-21T06:38:48.22605Z"
        },
        {
          "questionText": "Bu sabah işe hangi ulaşım aracıyla gideceksiniz?",
          "answerText": "Toplu Ulaşım",
          "score": 5,
          "date": "2026-04-21T06:36:49.18482Z"
        }
      ]
    }
  ]
}
```

**`404`** — hiç cevap yok (`PreviousAnswersNotFound` vb.); istemci boş liste kabul edebilir.

| Alan | Açıklama |
|------|----------|
| `date` | Grup günü (UTC gün başı) |
| `answers[].questionText` | Soru metni |
| `answers[].answerText` | Seçilen seçenek metni |
| `answers[].score` | O satırın skoru |
| `answers[].date` | Cevap zaman damgası |

---

## 4. Bekleyen Sorular

### `GET /daily-activities?status=pending`

```json
{
  "isSuccessful": true,
  "statusCode": 200,
  "errors": null,
  "data": {
    "hasPending": true,
    "pendingCount": 2
  }
}
```

| Alan | Açıklama |
|------|----------|
| `hasPending` | Bekleyen günlük soru var mı |
| `pendingCount` | Bekleyen soru sayısı |
