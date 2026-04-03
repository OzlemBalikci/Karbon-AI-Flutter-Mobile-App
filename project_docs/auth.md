# Auth

## İş Kuralları
- Kullanıcı e-posta veya TC kimlik numarası ile giriş yapabilir
- Kayıt sırasında KVKK onayı zorunludur
- Şifre en az 8 karakter, büyük/küçük harf, rakam ve özel karakter içermelidir
- Şifre sıfırlama telefon numarası üzerinden 5 haneli OTP ile yapılır
- OTP kodu 15 dakika geçerlidir, kullanıldıktan sonra silinir
- Şifre sıfırlandıktan sonra tüm aktif oturumlar sonlandırılır
- Login, şifre sıfırlama ve token yenileme endpoint'leri 15 dakikada 5 deneme ile rate limit'e tabidir

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

### Response `409` — Kullanıcı Zaten Var
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
⚠️ Rate limit: 15 dakikada 5 deneme

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
    "expiresIn": 3600,
    "refreshToken": "4qIXdVcYDaScW/KIAOtmp5FK..."
  }
}
```

> Cookie: `refresh_token` HttpOnly, Secure, 30 gün geçerli olarak set edilir.

### Response `401` — Kimlik Doğrulama Hatası
```json
{
  "isSuccess": false,
  "errors": ["E-posta veya şifre hatalı."]
}
```

### Response `429` — Rate Limit Aşıldı
```json
{
  "isSuccess": false,
  "errors": ["Çok fazla istek gönderildi. Lütfen daha sonra tekrar deneyin."]
}
```

---

## Token Yenile

**POST** `/api/v1/users/token/refresh`  
🔓 Public  
⚠️ Rate limit: 15 dakikada 5 deneme

### İş Kuralları
- `refresh_token` cookie'si otomatik gönderilir
- Geçerli refresh token ile yeni access token ve refresh token üretilir
- Eski refresh token iptal edilir (token rotation)
- Süresi dolmuş veya iptal edilmiş token ile istek yapılırsa `401` döner

### Response `200`
```json
{
  "isSuccess": true,
  "data": {
    "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
    "tokenType": "Bearer",
    "expiresIn": 3600,
    "refreshToken": "yeni_refresh_token..."
  }
}
```

### Response `401` — Token Geçersiz veya Süresi Dolmuş
```json
{
  "isSuccess": false,
  "errors": ["Oturumunuzun süresi doldu. Lütfen tekrar giriş yapın."]
}
```

---

## Çıkış Yap

**POST** `/api/v1/users/logout`  
🔒 Auth gerekli

### İş Kuralları
- Refresh token DB'den iptal edilir
- `refresh_token` cookie'si silinir
- Mevcut access token süresi dolana kadar geçerli olmaya devam eder (1 saat)

### Response `200`
```json
{
  "isSuccess": true,
  "data": null
}
```

---

## Şifremi Unuttum

**POST** `/api/v1/users/password/forgot`  
🔓 Public  
⚠️ Rate limit: 15 dakikada 5 deneme

### İş Kuralları
- Telefon numarasına 5 haneli OTP kodu gönderilir
- OTP kodu 15 dakika geçerlidir

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
⚠️ Rate limit: 15 dakikada 5 deneme

### İş Kuralları
- OTP kodu 5 haneli olmalıdır
- OTP kodu 15 dakika geçerlidir
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

### Response `400` — OTP Geçersiz veya Süresi Dolmuş
```json
{
  "isSuccess": false,
  "errors": ["OTP kodu geçersiz veya süresi dolmuş."]
}
```

---

## Flutter Akışı

```
Uygulama açılır
    ↓
Access token var mı? (Secure Storage)
    ↓ Varsa → API isteği yap
    ↓ 401 gelirse → POST /users/token/refresh (cookie otomatik gider)
    ↓ Refresh başarılıysa → yeni access token sakla, isteği tekrarla
    ↓ Refresh başarısızsa → login ekranına yönlendir

Login ekranı
    ↓
POST /users/login → access token + refresh token al
    ↓
Access token → Secure Storage'a kaydet
    ↓
Ana sayfaya yönlendir

Çıkış
    ↓
POST /users/logout → cookie temizlenir
    ↓
Secure Storage'daki access token silinir
    ↓
Login ekranına yönlendir
```
