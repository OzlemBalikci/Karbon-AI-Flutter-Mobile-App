# Profil

## İş Kuralları

- Profil 3 sekmeden oluşur: Üyelik Bilgileri, Puanlarım, Bağışlarım
- Kullanıcı tüm biriken puanını tek seferde ağaç olarak bağışlayabilir
- Bağış sonrası puanlar sıfırlanır
- Hesap silme soft delete ile yapılır — tüm oturumlar sonlandırılır
- `availableTreeCount` "Ağaç Bağışla X Ağaç" butonunda gösterilir

## Flutter Akışı

```
Profil sayfası açılır
    ↓
GET /api/v1/users/me/profile → Tüm profil bilgileri + availableTreeCount

Bağışlarım sekmesi açılır
    ↓
GET /api/v1/users/me/donations → Bağış geçmişi

"Ağaç Bağışla" butonuna tıklanır
    ↓
POST /api/v1/users/me/donations → Tüm puanı bağışla
    ↓
Başarı popup'ı gösterilir
    ↓
GET /api/v1/users/me/profile → Güncel puan ve ağaç sayısı

Hesabımı Sil tıklanır
    ↓
Onay popup'ı gösterilir
    ↓
DELETE /api/v1/users/me → Hesap silinir, token geçersiz olur
```

---

## Profil Bilgileri

**GET** `/api/v1/users/me/profile`  
🔒 Auth gerekli

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "identityNumber": "12345678901",
    "name": "Ekin Can",
    "surname": "Akın",
    "birthDate": "1998-02-12T00:00:00Z",
    "totalPoints": 200000.0,
    "donatedTreeCount": 1270,
    "availableTreeCount": 1200
  }
}
```

---

## Bağış Geçmişi

**GET** `/api/v1/users/me/donations`  
🔒 Auth gerekli

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "totalDonatedTreeCount": 1270,
    "donations": [
      {
        "treeCount": 10,
        "pointsSpent": 5000.0,
        "donationDate": "2023-12-20T00:00:00Z"
      },
      {
        "treeCount": 10,
        "pointsSpent": 5000.0,
        "donationDate": "2023-12-08T00:00:00Z"
      }
    ]
  }
}
```

---

## Ağaç Bağışla

**POST** `/api/v1/users/me/donations`  
🔒 Auth gerekli

### İş Kuralları
- Kullanıcının tüm puanı tek seferde bağışlanır
- Puan yoksa `400 Bad Request` döner
- Bağış sonrası puan sıfırlanır, `donatedTreeCount` artar

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "donatedTreeCount": 1200,
    "totalDonatedTreeCount": 2470
  }
}
```

### Response `400` — Yeterli puan yok
```json
{
  "isSuccess": false,
  "errors": ["NoPointsToDonat"]
}
```

---

## Hesabı Sil

**DELETE** `/api/v1/users/me`  
🔒 Auth gerekli

### İş Kuralları
- Soft delete yapılır — veri silinmez, `IsDeleted: true` olur
- Tüm aktif oturumlar sonlandırılır
- Silinen hesapla tekrar giriş yapılamaz

### Response `200`
```json
{
  "isSuccess": true,
  "data": null
}
```

---

## Çıkış Yap

Çıkış işlemi Flutter tarafında yapılır — token storage'dan silinir. Backend'e çağrı gerekmez.
