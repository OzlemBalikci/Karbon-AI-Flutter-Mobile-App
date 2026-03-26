# Karbon Hesapla (Aylık Anket)

## İş Kuralları

- Kullanıcı ayda yalnızca bir kez anketi cevaplayabilir
- Her seçeneğin bir karbon değeri vardır
- Tüm seçeneklerin karbon değerleri toplanarak toplam skor hesaplanır
- Skor `TreeDefinition.PointUnit` ve `TreeCount` kullanılarak ağaç sayısına çevrilir
- Anket tamamlandıktan sonra kullanıcı liderlik tablosuna girer
- Her seçeneğin altında açıklama mesajı gösterilebilir (admin tarafından girilir)
- Anket tamamlanınca ana sayfa `hasCompletedPoll: true` döner

## Ağaç Hesaplama Formülü
```
calculatedTrees = (totalCarbonScore / pointUnit) * treeCount
```

## Flutter Akışı

```
"Karbon Ayak İzi Hesapla" butonuna tıklanır
    ↓
GET /api/v1/polls/active → Aktif anketi getir
    ↓
Flutter soruları sırayla gösterir
    ↓
Tüm cevaplar seçilince
    ↓
POST /api/v1/polls/answers → Cevapları gönder
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

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "pollSetId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "name": "Aralık 2023 Anketi",
    "description": "Aylık karbon ayak izi anketi",
    "questions": [
      {
        "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "text": "Evinizi kaç kişi ile paylaşıyorsunuz?",
        "displayOrder": 1,
        "options": [
          {
            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
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

### Response `404`
```json
{
  "isSuccess": false,
  "errors": ["ActivePollNotFound"]
}
```

---

## Anket Cevaplarını Gönder

**POST** `/api/v1/polls/answers`  
🔒 Auth gerekli

### İş Kuralları
- Kullanıcı aynı anketi aynı ay içinde tekrar cevaplayamaz → `409 Conflict`
- Geçersiz seçenek ID'si gönderilirse → `400 Bad Request`

### Request Body
```json
{
  "pollSetId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "answers": [
    {
      "questionId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "optionId": "3fa85f64-5717-4562-b3fc-2c963f66afa6"
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

### Response `409` — Zaten cevaplandı
```json
{
  "isSuccess": false,
  "errors": ["Bu anketi bu ay zaten cevapladınız."]
}
```
