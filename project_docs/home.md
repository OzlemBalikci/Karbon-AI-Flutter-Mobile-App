# Ana Sayfa

## İş Kuralları

- Uygulama açılışında tek endpoint çağrılır
- Kullanıcı o ay anketi doldurmamışsa **sade ekran** gösterilir (sadece 2 buton)
- Kullanıcı anketi doldurmuşsa **tam ekran** gösterilir (hedefler + liderler)
- Global hedef (ulaşılması hedeflenen ağaç) tüm zamanların kümülatif toplamıdır
- Aylık hedef admin tarafından belirlenir
- Liderlik önizlemesi sadece ilk 2 kişiyi gösterir

## Flutter Akışı

```
Uygulama açılır
    ↓
GET /api/v1/user-results/home
    ↓
hasCompletedPoll == false → Sade ekran göster (Faydalı Bilgiler + Karbon Hesapla butonları)
hasCompletedPoll == true  → Tam ekran göster (hedefler + 2 lider)
    ↓
"Diğer Liderleri Gör" tıklanır
    ↓
GET /api/v1/user-results/leaderboard?month=X&year=Y
```

---

## Ana Sayfa Verisi

**GET** `/api/v1/user-results/home`  
🔒 Auth gerekli

### Response `200` — Anketi doldurmamış kullanıcı
```json
{
  "isSuccess": true,
  "data": {
    "hasCompletedPoll": false,
    "globalTarget": null,
    "monthlyTarget": null,
    "topLeaders": null,
    "currentUserRank": null
  }
}
```

### Response `200` — Anketi doldurmuş kullanıcı
```json
{
  "isSuccess": true,
  "data": {
    "hasCompletedPoll": true,
    "globalTarget": {
      "targetTreeCount": 670000,
      "donatedTreeCount": 550000,
      "remainingTreeCount": 120000,
      "progressPercent": 82.1
    },
    "monthlyTarget": {
      "month": 12,
      "year": 2023,
      "targetTreeCount": 67000,
      "donatedTreeCount": 55000,
      "remainingTreeCount": 12000,
      "progressPercent": 82.1
    },
    "topLeaders": [
      {
        "rank": 1,
        "fullName": "Ekin Can Akın",
        "treeCount": 100,
        "isCurrentUser": false
      },
      {
        "rank": 2,
        "fullName": "Ekin Can Akın",
        "treeCount": 10,
        "isCurrentUser": true
      }
    ],
    "currentUserRank": {
      "rank": 2,
      "treeCount": 10,
      "message": "10 Ağaç ile 2. sıradasınız."
    }
  }
}
```
