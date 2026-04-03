# Goals (Admin)

## İş Kuralları
- Yalnızca admin erişebilir
- Her ay için yalnızca bir global hedef oluşturulabilir
- Hedef ağaç sayısı aylık bağış toplamıyla karşılaştırılır
- Ana sayfada progress bar olarak gösterilir

---

## Global Hedef Oluştur

**POST** `/api/v1/goals/global`  
🔒 Admin

### İş Kuralları
- Aynı ay ve yıl için yalnızca bir hedef oluşturulabilir → `409 Conflict`

### Request Body
```json
{
  "month": 1,
  "year": 2024,
  "targetTreeCount": 1000
}
```

### Response `201`
```json
{
  "isSuccess": true,
  "data": {
    "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "month": 1,
    "year": 2024,
    "targetTreeCount": 1000
  }
}
```

### Response `409` — Hedef zaten mevcut
```json
{
  "isSuccess": false,
  "errors": ["Bu aya ait hedef zaten mevcut."]
}
```

---

## Global Hedef Güncelle

**PUT** `/api/v1/goals/global/{id}`  
🔒 Admin

### Request Body
```json
{
  "targetTreeCount": 1500
}
```

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "month": 1,
    "year": 2024,
    "targetTreeCount": 1500
  }
}
```

### Response `404`
```json
{
  "isSuccess": false,
  "errors": ["Hedef bulunamadı."]
}
```

---

## Global Hedef Sil

**DELETE** `/api/v1/goals/global/{id}`  
🔒 Admin

### Query Parameters
| Parametre | Tip | Zorunlu | Açıklama |
|-----------|-----|---------|----------|
| month | int | Evet | Ay (1-12) |
| year | int | Evet | Yıl |

### Response `200`
```json
{
  "isSuccess": true,
  "data": null
}
```

### Response `404`
```json
{
  "isSuccess": false,
  "errors": ["Hedef bulunamadı."]
}
```
