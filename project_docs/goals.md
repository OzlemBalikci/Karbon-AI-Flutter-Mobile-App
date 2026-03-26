# Hedefler (Admin)

## İş Kuralları

- Hedefler yalnızca admin tarafından belirlenir
- Her ay için bir global hedef oluşturulabilir
- Aynı ay için ikinci kez hedef oluşturulamaz → `409 Conflict`
- Global hedef ana sayfada "Bir Ayda Hedeflenen Ağaç" olarak gösterilir
- "Ulaşılması Hedeflenen Ağaç" `TreeDefinition.GlobalTargetTreeCount`'tan gelir

---

## Global Hedef Oluştur

**POST** `/api/v1/goals/global`  
🔒 Admin gerekli

### Request Body
```json
{
  "month": 12,
  "year": 2023,
  "targetTreeCount": 67000
}
```

### Response `201`
```json
{
  "isSuccess": true,
  "data": {
    "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "month": 12,
    "year": 2023,
    "targetTreeCount": 67000
  }
}
```

### Response `409` — Zaten var
```json
{
  "isSuccess": false,
  "errors": ["GoalAlreadyExists"]
}
```

---

## Global Hedef Güncelle

**PUT** `/api/v1/goals/global/{id}`  
🔒 Admin gerekli

### Request Body
```json
{
  "targetTreeCount": 80000
}
```

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "month": 12,
    "year": 2023,
    "targetTreeCount": 80000
  }
}
```

---

## Global Hedef Sil

**DELETE** `/api/v1/goals/global/{id}?month=12&year=2023`  
🔒 Admin gerekli

### Response `200`
```json
{
  "isSuccess": true,
  "data": null
}
```
