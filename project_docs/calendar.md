# Takvim (Calendar)

Günlük aktiviteler API’sinin takvim ve gün detayı ile ilgili uçları. Flutter tarafında eşlemeler `lib/features/calendar/` altındadır.

---

## Gün Detayı

**GET** `/api/v1/daily-activities?date=2023-12-06`  
🔒 Auth gerekli

### İş Kuralları
- Takvimden bir güne tıklanınca çağrılır
- O günün toplam skoru ve tüm cevap detayları döner

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "date": "2023-12-06T00:00:00Z",
    "totalScore": 15.0,
    "activities": [
      {
        "questionText": "Bu sabah işe hangi ulaşım aracıyla gideceksiniz?",
        "selectedOptionText": "Toplu Ulaşım",
        "score": 25.0,
        "activityDate": "2023-12-06T08:30:00Z"
      }
    ]
  }
}
```

**Domain:** `DailyDayDetailEntity`, `DailyDayActivityEntity` — `CalendarRemote.getDetails` / `GetDetailsUsecase`.

---

## Takvim

**GET** `/api/v1/daily-activities/calendar`  
🔒 Auth gerekli

### Query Parameters
| Parametre | Tip | Zorunlu | Açıklama |
|-----------|-----|---------|----------|
| year | int | ✅ | Yıl |
| month | int | ❌ | Ay — girilmezse tüm yıl döner |
| period | int | ❌ | 1: 1-15, 2: 16-31 |

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "totalScore": 670.0,
    "items": [
      {
        "date": "2023-12-06T00:00:00Z",
        "score": 70.0,
        "hasDetails": true
      }
    ]
  }
}
```

**Domain:** `DailyCalendarEntity`, `DailyCalendarItemEntity`.

---

## Aylık Aktiviteler (Tümünü Gör)

**GET** `/api/v1/daily-activities/monthly`  
🔒 Auth gerekli

### İş Kuralları
- `period=1` → 1-15 arası günler
- `period=2` → 16-31 arası günler
- Üstte tüm ayın toplam skoru gösterilir

### Query Parameters
| Parametre | Tip | Zorunlu | Açıklama |
|-----------|-----|---------|----------|
| year | int | ✅ | Yıl |
| month | int | ✅ | Ay |
| period | int | ✅ | 1 veya 2 |

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "totalMonthlyScore": 670.0,
    "totalPeriodScore": 335.0,
    "dailyScores": [
      {
        "date": "2023-12-01T00:00:00Z",
        "totalScore": 13.0
      },
      {
        "date": "2023-12-04T00:00:00Z",
        "totalScore": 83.0
      }
    ]
  }
}
```

**Domain:** `DailyMonthlyActivitiesEntity`, `DailyMonthlyDayScoreEntity`.
