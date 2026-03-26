# Liderlik Tablosu

## İş Kuralları

- Liderlik tablosu aylık bazda gösterilir
- İlk 3 kişi podium (#1 altın, #2 gümüş, #3 bronz) olarak ayrılır
- #4 ve sonrası liste olarak gösterilir
- Kullanıcının kendi sırası alt kısımda ayrıca gösterilir
- `isCurrentUser: true` olan kayıt kullanıcının kendi sırasıdır

## Flutter Akışı

```
Ana sayfada "Diğer Liderleri Gör" tıklanır
    ↓
GET /api/v1/user-results/leaderboard?month=12&year=2023
    ↓
Podium (ilk 3) → Büyük kartlar (#1 altın, #2 gümüş, #3 bronz)
Leaders (4+)   → Liste görünümü
CurrentUserRank → Alt banner "X Ağaç ile Y. sıradasınız"
```

---

## Ayin Liderleri

**GET** `/api/v1/user-results/leaderboard`  
🔒 Auth gerekli

### Query Parameters
| Parametre | Tip | Zorunlu | Açıklama |
|-----------|-----|---------|----------|
| month | int | ✅ | Ay (1-12) |
| year | int | ✅ | Yıl |

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "podium": [
      {
        "rank": 1,
        "fullName": "Ekin Can Akın",
        "treeCount": 100000,
        "isCurrentUser": false
      },
      {
        "rank": 2,
        "fullName": "Ekin Can Akın",
        "treeCount": 50000,
        "isCurrentUser": false
      },
      {
        "rank": 3,
        "fullName": "Ekin Can Akın",
        "treeCount": 10000,
        "isCurrentUser": true
      }
    ],
    "leaders": [
      {
        "rank": 4,
        "fullName": "Ekin Can Akın",
        "treeCount": 902,
        "isCurrentUser": false
      }
    ],
    "currentUserRank": {
      "rank": 3,
      "treeCount": 10000,
      "message": "10000 Ağaç ile 3. sıradasınız."
    }
  }
}
```
