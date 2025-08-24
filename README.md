# DineMeet

Akşam yemeği eşleştirme uygulaması - 1v1, 2v2, 3v3 buluşmalar

## Proje Hakkında

DineMeet, kullanıcıların ortak ilgi alanlarına göre eşleşerek akşam yemeği buluşmaları düzenleyebilecekleri bir mobil uygulamadır. Uygulama sadece eşleştirme yapar, ödeme işlemleri kullanıcılar tarafından yapılır.

## Özellikler

- **Eşleştirme Modları**: 1v1, 2v2, 3v3 buluşmalar
- **Akıllı Eşleştirme**: Yaş, ilgi alanları, konum ve tercihlere göre
- **Rezervasyon Yönetimi**: Otomatik mekan önerisi ve rezervasyon
- **Grup Sohbeti**: Eşleşen kişiler arasında sohbet
- **Anket Sistemi**: Buluşma sonrası deneyim değerlendirmesi
- **Güvenlik**: Kullanıcı doğrulama ve raporlama sistemi

## Teknoloji Stack

- **Frontend**: Flutter (Dart 3+)
- **Backend**: Firebase
  - Authentication (Phone + Email)
  - Firestore (NoSQL Database)
  - Cloud Functions (Node.js 20)
  - Cloud Messaging (FCM)
  - Analytics & Crashlytics
- **State Management**: Riverpod
- **Navigation**: GoRouter
- **Code Generation**: Freezed, JSON Serializable

## Kurulum

### Gereksinimler

- Flutter SDK 3.9.0+
- Dart 3.0+
- Node.js 20+
- Firebase CLI
- Android Studio / VS Code

### Adım 1: Projeyi Klonlayın

```bash
git clone <repository-url>
cd DineMeet
```

### Adım 2: Flutter Bağımlılıklarını Yükleyin

```bash
flutter pub get
```

### Adım 3: Firebase Projesini Oluşturun

1. [Firebase Console](https://console.firebase.google.com/)'a gidin
2. Yeni proje oluşturun
3. Android ve iOS uygulamalarını ekleyin

### Adım 4: Firebase Yapılandırması

#### Android

1. `android/app/google-services.json` dosyasını indirin
2. `android/app/build.gradle` dosyasına Google Services plugin'ini ekleyin:

```gradle
plugins {
    id "com.android.application"
    id "kotlin-android"
    id "dev.flutter.flutter-gradle-plugin"
    id "com.google.gms.google-services"  // Bu satırı ekleyin
}
```

3. `android/build.gradle` dosyasına dependency ekleyin:

```gradle
dependencies {
    classpath 'com.google.gms:google-services:4.4.0'
}
```

#### iOS

1. `ios/Runner/GoogleService-Info.plist` dosyasını indirin
2. Xcode'da projeyi açın ve dosyayı Runner klasörüne ekleyin

### Adım 5: Firebase Functions Kurulumu

```bash
cd functions
npm install
```

### Adım 6: Firestore Kurallarını Deploy Edin

```bash
firebase deploy --only firestore:rules
```

### Adım 7: Cloud Functions'ı Deploy Edin

```bash
firebase deploy --only functions
```

## Çalıştırma

### Development

```bash
flutter run
```

### Production Build

#### Android

```bash
flutter build apk --release
```

#### iOS

```bash
flutter build ios --release
```

## Proje Yapısı

```
lib/
├── app/                    # Uygulama seviyesi yapılandırma
│   ├── router/            # GoRouter yapılandırması
│   └── theme/             # Tema ve stil tanımları
├── common/                # Ortak kullanılan bileşenler
│   ├── constants/         # Sabitler
│   ├── utils/             # Yardımcı fonksiyonlar
│   └── widgets/           # Ortak widget'lar
├── data/                  # Veri katmanı
│   ├── models/            # Veri modelleri
│   ├── repositories/      # Repository pattern
│   └── services/          # Firebase servisleri
└── features/              # Özellik bazlı modüller
    ├── auth/              # Kimlik doğrulama
    ├── profile/           # Kullanıcı profili
    ├── match/             # Eşleştirme
    ├── reservation/       # Rezervasyon
    ├── chat/              # Sohbet
    ├── survey/            # Anket
    ├── report/            # Raporlama
    └── settings/          # Ayarlar
```

## Veri Modeli

### Koleksiyonlar

- **users**: Kullanıcı profilleri
- **matchPreferences**: Eşleştirme tercihleri
- **matchQueue**: Eşleştirme kuyruğu
- **groups**: Oluşturulan gruplar
- **reservations**: Rezervasyonlar
- **chats**: Sohbet mesajları
- **surveys**: Anket yanıtları
- **reports**: Kullanıcı raporları
- **venues**: Mekan bilgileri

## API Endpoints

### Cloud Functions

- `onMatchQueueWrite`: Eşleştirme kuyruğu yazma tetikleyicisi
- `finalizeReservation`: Rezervasyon onaylama
- `sendSurveyReminders`: Anket hatırlatmaları

## Test

### Unit Tests

```bash
flutter test
```

### Widget Tests

```bash
flutter test test/widget_test.dart
```

## Deployment

### Android

1. Keystore oluşturun
2. `android/app/build.gradle` dosyasını yapılandırın
3. Release build alın
4. Google Play Console'a yükleyin

### iOS

1. Apple Developer hesabı gerekli
2. Xcode'da signing yapılandırın
3. Archive oluşturun
4. App Store Connect'e yükleyin

## Güvenlik

- Firebase Authentication ile kullanıcı doğrulama
- Firestore güvenlik kuralları
- Input validation
- Rate limiting
- Kullanıcı raporlama sistemi

## Katkıda Bulunma

1. Fork yapın
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Commit yapın (`git commit -m 'Add amazing feature'`)
4. Push yapın (`git push origin feature/amazing-feature`)
5. Pull Request oluşturun

## Lisans

Bu proje MIT lisansı altında lisanslanmıştır.

## İletişim

- Proje Sahibi: [Adınız]
- Email: [email@example.com]
- Proje Linki: [https://github.com/username/dinemeet]

## TODO

- [ ] Firebase Authentication entegrasyonu
- [ ] Profil oluşturma ekranı
- [ ] Eşleştirme algoritması
- [ ] Rezervasyon sistemi
- [ ] Sohbet özelliği
- [ ] Anket sistemi
- [ ] Push notifications
- [ ] Offline support
- [ ] Unit testler
- [ ] Integration testler
- [ ] Performance optimization
- [ ] Accessibility improvements
