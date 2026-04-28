# Faydalı Bilgiler

## İş Kuralları

- Faydalı bilgiler admin tarafından oluşturulur
- Sadece aktif (`IsActive: true`) bilgiler kullanıcıya gösterilir
- `displayOrder` ile sıralanır
- İçerik statik olduğu için 1 saat cache'lenir
- Flutter liste ekranından detay ekranına geçerken ayrı endpoint çağrısı gerekmez — liste verisi yeterlidir

## Flutter Akışı

```
"Faydalı Bilgiler" butonuna tıklanır
    ↓
GET /api/v1/useful-information → Tüm liste
    ↓
Flutter listeyi gösterir
    ↓
Kullanıcı bir maddeye tıklar
    ↓
Flutter mevcut veriyi kullanarak detay ekranını açar (ayrı API çağrısı yok)
```

---

## Faydalı Bilgileri Listele

**GET** `/api/v1/useful-information`  
🔒 Auth gerekli

### Response `200`
```json
{
  "isSuccessful": true,
  "data": [
    {
      "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "title": "Karbon Ayak İzi Nedir?",
      "content": "Karbon ayak izi, bir kişinin veya bir organizasyonun...",
      "displayOrder": 1
    },
    {
      "id": "4fa85f64-5717-4562-b3fc-2c963f66afa6",
      "title": "Karbon Ayak İzi Ne Anlama Geliyor?",
      "content": "...",
      "displayOrder": 2
    }
  ]
}
```
