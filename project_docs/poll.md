# Karbon Hesapla (Aylık Anket)

## İş Kuralları

- Kullanıcı ayda yalnızca bir kez anketi cevaplayabilir
- Her seçeneğin bir karbon değeri vardır
- Tüm seçeneklerin karbon değerleri toplanarak toplam skor hesaplanır
- Skor `TreeDefinition.PointUnit` ve `TreeCount` kullanılarak ağaç sayısına çevrilir
- Anket tamamlandıktan sonra kullanıcı liderlik tablosuna girer
- Her seçeneğin altında açıklama mesajı gösterilebilir (admin tarafından girilir)
- Anket tamamlanınca ana sayfa `hasCompletedPoll: true` döner
- Kullanıcı anketi yarıda bırakıp daha sonra kaldığı yerden devam edebilir

## Ağaç Hesaplama Formülü

```
calculatedTrees = (totalCarbonScore / pointUnit) * treeCount
```

## Flutter Akışı

```
"Karbon Ayak İzi Hesapla" butonuna tıklanır
    ↓
GET /api/v1/polls/active → Aktif anketi getir
    ↓ selectedOptionId dolu ise → önceki cevapları göster, kaldığı yerden devam et
    ↓ selectedOptionId null ise → boş başla
    ↓
Her soruyu cevapladıkça
    ↓
POST /api/v1/polls/draft → Taslak kaydet (uygulama kapansa bile kaybolmaz)
    ↓
Tüm cevaplar seçilince
    ↓
POST /api/v1/polls/answers → Anketi tamamla
    ↓
Response'da totalCarbonScore ve calculatedTrees döner
    ↓
Sonuç ekranı gösterilir
    ↓
"Ana Sayfaya Dön" tıklanır
    ↓
GET /api/v1/user-results/home → hasCompletedPoll: true ile tam ekran
```

---

## Aktif Anketi Getir

**GET** `/api/v1/polls/active`  
🔒 Auth gerekli

Kullanıcının bu ay için taslağı varsa, sorulara ait `selectedOptionId` alanı dolu gelir. Flutter bu bilgiyle kullanıcıyı kaldığı yerden devam ettirebilir.

### Response `200`

```json
{
  "isSuccess": true,
  "data": {
    "pollSetId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "name": "Mart 2026 Anketi",
    "description": "Aylık karbon ayak izi anketi",
    "questions": [
      {
        "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "text": "Evinizi kaç kişi ile paylaşıyorsunuz?",
        "displayOrder": 1,
        "selectedOptionId": "9fa85f64-5717-4562-b3fc-2c963f66afa6",
        "options": [
          {
            "id": "9fa85f64-5717-4562-b3fc-2c963f66afa6",
            "text": "Yalnız yaşıyorum.",
            "message": "Araştırmalar, yalnız yaşayan insanların daha fazla kaynak tükettiğini gösteriyor...",
            "carbonValue": 10.5,
            "nextPollQuestionId": null
          }
        ]
      }
    ]
  }
}
```

> `selectedOptionId` — Kullanıcının daha önce seçtiği seçenek ID'si. Taslak yoksa `null` gelir.

### Response `404`

```json
{
  "isSuccess": false,
  "errors": ["Bu dönem için aktif anket bulunamadı."]
}
```

---

## Taslak Kaydet

**POST** `/api/v1/polls/draft`  
🔒 Auth gerekli

Kullanıcı anketi yarıda bıraksa bile cevaplar saklanır. Uygulama yeniden açıldığında `GET /polls/active` ile taslak cevaplar geri gelir.

### İş Kuralları

- Aynı ay içinde tamamlanmış anket varsa taslak kaydedilemez → `409 Conflict`
- Mevcut taslak varsa üzerine yazılır

### Request Body

```json
{
  "pollSetId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "answers": [
    {
      "questionId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "optionId": "9fa85f64-5717-4562-b3fc-2c963f66afa6"
    }
  ],
  "isDraft": true
}
```

### Response `200`

```json
{
  "isSuccess": true,
  "data": {
    "totalCarbonScore": 10.5,
    "calculatedTrees": 0
  }
}
```

---

## Anket Cevaplarını Gönder

**POST** `/api/v1/polls/answers`  
🔒 Auth gerekli

Anketi tamamlar. Taslak varsa üzerine yazarak `IsCompleted: true` olarak işaretler.

### İş Kuralları

- Kullanıcı aynı anketi aynı ay içinde tekrar cevaplayamaz → `409 Conflict`
- Geçersiz seçenek ID'si gönderilirse → `400 Bad Request`
- `isDraft` alanı gönderilmez veya `false` olarak gönderilir

### Request Body

```json
{
  "pollSetId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "answers": [
    {
      "questionId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "optionId": "9fa85f64-5717-4562-b3fc-2c963f66afa6"
    },
    {
      "questionId": "4fa85f64-5717-4562-b3fc-2c963f66afa6",
      "optionId": "5fa85f64-5717-4562-b3fc-2c963f66afa6"
    }
  ]
}
```

### Response `200`

```json
{
  "isSuccess": true,
  "data": {
    "totalCarbonScore": 70.5,
    "calculatedTrees": 1200
  }
}
```

### Response `400` — Geçersiz cevaplar

```json
{
  "isSuccess": false,
  "errors": ["Gönderilen anket cevapları geçersiz."]
}
```

### Response `409` — Zaten cevaplandı

```json
{
  "isSuccess": false,
  "errors": ["Bu anketi bu ay zaten cevapladınız."]
}
```

---

---

## Admin — Tüm Anket Setlerini Listele

**GET** `/api/v1/polls`  
🔒 Admin

### Response `200`

```json
{
  "isSuccess": true,
  "data": [
    {
      "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "name": "Mart 2026 Anketi",
      "month": 3,
      "year": 2026,
      "isActive": true,
      "questionCount": 10
    }
  ]
}
```

---

## Admin — Anket Detayını Getir

**GET** `/api/v1/polls/{id}`  
🔒 Admin

### Response `200`

```json
{
  "isSuccess": true,
  "data": {
    "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "name": "Mart 2026 Anketi",
    "month": 3,
    "year": 2026,
    "isActive": true,
    "questions": [
      {
        "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "text": "Evinizi kaç kişi ile paylaşıyorsunuz?",
        "displayOrder": 1,
        "options": [
          {
            "id": "9fa85f64-5717-4562-b3fc-2c963f66afa6",
            "text": "Yalnız yaşıyorum.",
            "carbonValue": 10.5,
            "displayOrder": 1
          }
        ]
      }
    ]
  }
}
```

---

## Admin — Yeni Anket Seti Oluştur

**POST** `/api/v1/polls`  
🔒 Admin

### Request Body

```json
{
  "name": "Nisan 2026 Anketi",
  "description": "Aylık karbon ayak izi anketi",
  "displayOrder": 1,
  "month": 4,
  "year": 2026
}
```

### Response `200`

```json
{
  "isSuccess": true,
  "data": null
}
```

---

## Admin — Soruları Ankete Kopyala

**POST** `/api/v1/polls/{pollSetId}/questions`  
🔒 Admin

Mevcut aktivite sorularını hedef ankete kopyalar.

### Request Body

```json
{
  "sourceQuestionIds": [
    "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "4fa85f64-5717-4562-b3fc-2c963f66afa6"
  ]
}
```

### Response `200`

```json
{
  "isSuccess": true,
  "data": null
}
```
