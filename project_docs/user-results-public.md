# User Results Public

## İş Kuralları
- Tüm auth kullanıcıları erişebilir
- Ana sayfa anketi tamamlamadan önce sade, tamamladıktan sonra tam içerikle döner
- Liderboard aylık bağış sıralamasına göre hesaplanır
- Podium ilk 3, leaders 4. sıradan itibaren listelenir
- Kullanıcının kendi sırası ayrıca döner

---

## Ana Sayfa

**GET** `/api/v1/user-results/home`  
🔒 Auth gerekli

### Response `200` — Anketi tamamlamamış kullanıcı
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

### Response `200` — Anketi tamamlamış kullanıcı
```json
{
  "isSuccess": true,
  "data": {
    "hasCompletedPoll": true,
    "globalTarget": {
      "targetTreeCount": 10000,
      "donatedTreeCount": 4500,
      "remainingTreeCount": 5500,
      "progressPercent": 45.0
    },
    "monthlyTarget": {
      "month": 1,
      "year": 2024,
      "targetTreeCount": 1000,
      "donatedTreeCount": 350,
      "remainingTreeCount": 650,
      "progressPercent": 35.0
    },
    "topLeaders": [
      {
        "rank": 1,
        "fullName": "Ekin Can Akın",
        "treeCount": 1200,
        "isCurrentUser": false
      },
      {
        "rank": 2,
        "fullName": "Ali Veli",
        "treeCount": 950,
        "isCurrentUser": true
      }
    ],
    "currentUserRank": {
      "rank": 2,
      "treeCount": 950,
      "message": "950 Ağaç ile 2. sıradasınız."
    }
  }
}
```

---

## Aylık Liderboard

**GET** `/api/v1/user-results/leaderboard`  
🔒 Auth gerekli

### Query Parameters
| Parametre | Tip | Zorunlu | Açıklama |
|-----------|-----|---------|----------|
| month | int | Evet | Ay (1-12) |
| year | int | Evet | Yıl |

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "podium": [
      {
        "rank": 1,
        "fullName": "Ekin Can Akın",
        "treeCount": 1200,
        "isCurrentUser": false
      },
      {
        "rank": 2,
        "fullName": "Ali Veli",
        "treeCount": 950,
        "isCurrentUser": true
      },
      {
        "rank": 3,
        "fullName": "Ayşe Kaya",
        "treeCount": 800,
        "isCurrentUser": false
      }
    ],
    "leaders": [
      {
        "rank": 4,
        "fullName": "Mehmet Yılmaz",
        "treeCount": 650,
        "isCurrentUser": false
      },
      {
        "rank": 5,
        "fullName": "Zeynep Demir",
        "treeCount": 500,
        "isCurrentUser": false
      }
    ],
    "currentUserRank": {
      "rank": 2,
      "treeCount": 950,
      "message": "950 Ağaç ile 2. sıradasınız."
    }
  }
}
```
