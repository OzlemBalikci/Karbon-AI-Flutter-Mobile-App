# Auth

## İş Kuralları
- Kullanıcı e-posta veya TC kimlik numarası ile giriş yapabilir
- Kayıt sırasında KVKK onayı zorunludur
- Şifre en az 8 karakter, büyük/küçük harf, rakam ve özel karakter içermelidir
- Şifre sıfırlama telefon numarası üzerinden 5 haneli OTP ile yapılır
- OTP kodu tek kullanımlıktır, kullanıldıktan sonra silinir
- Şifre sıfırlandıktan sonra tüm aktif oturumlar sonlandırılır

---

## Kayıt Ol
**POST** `/api/v1/users/register`  
🔓 Public

### Request Body
```json
{
  "email": "kullanici@ornek.com",
  "identityNumber": "12345678901",
  "firstName": "Ad",
  "lastName": "Soyad",
  "birthDate": "1990-01-01T00:00:00Z",
  "phoneNumber": "+905551234567",
  "password": "Sifre123!",
  "confirmPassword": "Sifre123!",
  "isKvkkApproved": true
}
```

### Response `201`
```json
{
  "isSuccess": true,
  "data": "3fa85f64-5717-4562-b3fc-2c963f66afa6"
}
```

### Response `400` — Validasyon Hatası
```json
{
  "isSuccess": false,
  "errors": ["Geçerli bir e-posta adresi giriniz."]
}
```

### Response `409` — İş Kuralı İhlali
```json
{
  "isSuccess": false,
  "errors": ["Bu e-posta adresi zaten kullanılıyor."]
}
```

### Validasyon Kuralları
| Alan | Kural |
|------|-------|
| email | Geçerli e-posta formatı |
| identityNumber | 11 haneli geçerli TC kimlik no |
| phoneNumber | Geçerli Türk cep telefonu (+905xxxxxxxxx) |
| password | Min 8 karakter, büyük/küçük harf, rakam, özel karakter |
| confirmPassword | Password ile eşleşmeli |
| isKvkkApproved | true olmalı |

---

## Giriş Yap
**POST** `/api/v1/users/login`  
🔓 Public

### Request Body
```json
{
  "emailorIdentityNumber": "kullanici@ornek.com",
  "password": "Sifre123!"
}
```

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
    "tokenType": "Bearer",
    "expiresIn": 3600
  }
}
```

### Response `400` — Validasyon Hatası
```json
{
  "isSuccess": false,
  "errors": ["E-posta/TC kimlik no alanı zorunludur."]
}
```

### Response `401` — Kimlik Doğrulama Hatası
```json
{
  "isSuccess": false,
  "errors": ["E-posta veya şifre hatalı."]
}
```

---

## Şifremi Unuttum
**POST** `/api/v1/users/password/forgot`  
🔓 Public

### İş Kuralı
Telefon numarasına 5 haneli OTP kodu gönderilir.

### Request Body
```json
{
  "phoneNumber": "+905551234567"
}
```

### Response `200`
```json
{
  "isSuccess": true,
  "data": null
}
```

### Response `400` — Validasyon Hatası
```json
{
  "isSuccess": false,
  "errors": ["Geçerli bir telefon numarası giriniz."]
}
```

### Response `404` — Kullanıcı Bulunamadı
```json
{
  "isSuccess": false,
  "errors": ["Bu telefon numarasına kayıtlı kullanıcı bulunamadı."]
}
```

---

## Şifre Sıfırla
**POST** `/api/v1/users/password/reset`  
🔓 Public

### İş Kuralları
- OTP kodu 5 haneli olmalıdır
- Kullanılan OTP kodu geçersiz hale gelir
- Şifre sıfırlandıktan sonra tüm oturumlar sonlandırılır

### Request Body
```json
{
  "phoneNumber": "+905551234567",
  "resetCode": "12345",
  "newPassword": "YeniSifre123!",
  "confirmNewPassword": "YeniSifre123!"
}
```

### Response `200`
```json
{
  "isSuccess": true,
  "data": null
}
```

### Response `400` — Validasyon Hatası
```json
{
  "isSuccess": false,
  "errors": ["Şifreler eşleşmiyor."]
}
```

### Response `400` — OTP Hatası
```json
{
  "isSuccess": false,
  "errors": ["OTP kodu hatalı veya süresi dolmuş."]
}
```
