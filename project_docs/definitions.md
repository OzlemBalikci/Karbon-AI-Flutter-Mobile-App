# Definitions (Admin)

## İş Kuralları
- Ağaç tanımı ve puanlama ayarları yalnızca admin tarafından güncellenebilir
- Ağaç tanımı yoksa sistem otomatik oluşturur
- Puanlama ayarları toplu olarak güncellenebilir

---

## Ağaç Tanımını Getir

**GET** `/api/v1/definitions/tree`  
🔒 Admin

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "pointUnit": 500.0,
    "treeCount": 1,
    "globalTargetTreeCount": 10000
  }
}
```

### Response `404`
```json
{
  "isSuccess": false,
  "errors": ["Ağaç tanımı bulunamadı."]
}
```

---

## Ağaç Tanımını Güncelle

**PUT** `/api/v1/definitions/tree`  
🔒 Admin

### İş Kuralları
- Tanım yoksa otomatik oluşturulur
- Tanım varsa güncellenir

### Request Body
```json
{
  "pointUnit": 500.0,
  "treeCount": 1,
  "globalTargetTreeCount": 10000
}
```

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "pointUnit": 500.0,
    "treeCount": 1,
    "globalTargetTreeCount": 10000
  }
}
```

---

## Puanlama Ayarlarını Getir

**GET** `/api/v1/definitions/scoring-settings`  
🔒 Admin

### Response `200`
```json
{
  "isSuccess": true,
  "data": [
    {
      "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "key": "Car",
      "value": 2.5,
      "category": "Transport"
    },
    {
      "id": "4fa85f64-5717-4562-b3fc-2c963f66afa6",
      "key": "PublicTransport",
      "value": 0.5,
      "category": "Transport"
    },
    {
      "id": "5fa85f64-5717-4562-b3fc-2c963f66afa6",
      "key": "Electricity",
      "value": 1.5,
      "category": "Energy"
    }
  ]
}
```

---

## Puanlama Ayarlarını Güncelle

**PUT** `/api/v1/definitions/scoring-settings`  
🔒 Admin

### İş Kuralları
- Güncellenecek ayarlar `id` ile belirlenir
- Bulunamayan `id` varsa `404` döner
- Hiçbir ayar bulunamazsa `404` döner

### Request Body
```json
{
  "settings": [
    {
      "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "value": 3.0
    },
    {
      "id": "4fa85f64-5717-4562-b3fc-2c963f66afa6",
      "value": 0.8
    }
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

### Response `404` — Ayar bulunamadı
```json
{
  "isSuccess": false,
  "errors": ["Puanlama ayarları bulunamadı."]
}
```

### Response `404` — Bazı ayarlar bulunamadı
```json
{
  "isSuccess": false,
  "errors": ["Bazı puanlama ayarları bulunamadı."]
}
```
