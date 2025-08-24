# DineMeet - Çalıştırma Kılavuzu

Bu dosya DineMeet uygulamasını çalıştırmak için gerekli adımları içerir.

## Hızlı Başlangıç

### 1. Gereksinimler

- Flutter SDK 3.9.0+
- Dart 3.0+
- Android Studio / VS Code
- Firebase CLI
- Node.js 20+ (Cloud Functions için)

### 2. Proje Kurulumu

```bash
# Projeyi klonlayın
git clone <repository-url>
cd DineMeet

# Flutter bağımlılıklarını yükleyin
flutter pub get

# Code generation çalıştırın
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### 3. Firebase Kurulumu

#### 3.1 Firebase Projesi Oluşturma

1. [Firebase Console](https://console.firebase.google.com/)'a gidin
2. "Yeni Proje Oluştur" butonuna tıklayın
3. Proje adını "DineMeet" olarak girin
4. Google Analytics'i etkinleştirin
5. Projeyi oluşturun

#### 3.2 Android Uygulaması Ekleme

1. Firebase Console'da "Android" simgesine tıklayın
2. Android package name: `com.dinemeet.dinemeet`
3. App nickname: "DineMeet"
4. `google-services.json` dosyasını indirin
5. Dosyayı `android/app/` klasörüne kopyalayın

#### 3.3 iOS Uygulaması Ekleme (Opsiyonel)

1. Firebase Console'da "iOS" simgesine tıklayın
2. iOS bundle ID: `com.dinemeet.dinemeet`
3. App nickname: "DineMeet"
4. `GoogleService-Info.plist` dosyasını indirin
5. Xcode'da projeyi açın ve dosyayı Runner klasörüne ekleyin

#### 3.4 Firebase Servislerini Etkinleştirme

1. **Authentication**: Phone ve Email sign-in metodlarını etkinleştirin
2. **Firestore Database**: Test modunda oluşturun
3. **Cloud Functions**: Node.js 20 runtime'ını seçin
4. **Cloud Messaging**: FCM'i etkinleştirin
5. **Analytics**: Google Analytics'i etkinleştirin
6. **Crashlytics**: Crashlytics'i etkinleştirin

### 4. Android Yapılandırması

#### 4.1 Google Services Plugin

`android/app/build.gradle` dosyasına ekleyin:

```gradle
plugins {
    id "com.android.application"
    id "kotlin-android"
    id "dev.flutter.flutter-gradle-plugin"
    id "com.google.gms.google-services"  // Bu satırı ekleyin
}
```

#### 4.2 Build.gradle Dependencies

`android/build.gradle` dosyasına ekleyin:

```gradle
buildscript {
    dependencies {
        classpath 'com.google.gms:google-services:4.4.0'
    }
}
```

#### 4.3 SHA-1 Fingerprint (FCM için)

```bash
# Debug SHA-1
keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android

# Release SHA-1 (keystore oluşturduktan sonra)
keytool -list -v -keystore <keystore-path> -alias <alias-name>
```

SHA-1 değerini Firebase Console > Project Settings > General > Your apps > Android app > Add fingerprint

### 5. iOS Yapılandırması (Opsiyonel)

#### 5.1 Podfile Güncelleme

`ios/Podfile` dosyasında minimum iOS versiyonunu 12.0 yapın:

```ruby
platform :ios, '12.0'
```

#### 5.2 Pod Install

```bash
cd ios
pod install
cd ..
```

### 6. Cloud Functions Kurulumu

```bash
# Functions klasörüne gidin
cd functions

# Bağımlılıkları yükleyin
npm install

# TypeScript'i derleyin
npm run build

# Functions'ı deploy edin
firebase deploy --only functions
```

### 7. Firestore Kurallarını Deploy Etme

```bash
# Firestore kurallarını deploy edin
firebase deploy --only firestore:rules
```

### 8. Uygulamayı Çalıştırma

#### 8.1 Development Mode

```bash
# Android emulator veya cihazda çalıştırın
flutter run

# Belirli bir cihazda çalıştırmak için
flutter devices
flutter run -d <device-id>
```

#### 8.2 Release Build

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS (Xcode gerekli)
flutter build ios --release
```

### 9. Test Etme

#### 9.1 Unit Tests

```bash
flutter test
```

#### 9.2 Widget Tests

```bash
flutter test test/widget_test.dart
```

#### 9.3 Integration Tests

```bash
flutter test integration_test/
```

### 10. Debugging

#### 10.1 Flutter Doctor

```bash
flutter doctor -v
```

#### 10.2 Firebase Debug

```bash
# Firebase CLI login
firebase login

# Firebase projesini seçin
firebase use <project-id>

# Functions loglarını görüntüleyin
firebase functions:log
```

#### 10.3 Common Issues

**Firebase bağlantı hatası:**
- `google-services.json` dosyasının doğru konumda olduğundan emin olun
- SHA-1 fingerprint'in Firebase'e eklendiğinden emin olun

**Build hatası:**
- `flutter clean` çalıştırın
- `flutter pub get` çalıştırın
- `flutter packages pub run build_runner build --delete-conflicting-outputs` çalıştırın

**Functions deploy hatası:**
- Node.js 20 kullandığınızdan emin olun
- `functions/package.json` dosyasındaki engine versiyonunu kontrol edin

### 11. Production Deployment

#### 11.1 Android

1. Keystore oluşturun:
```bash
keytool -genkey -v -keystore dinemeet.keystore -alias dinemeet -keyalg RSA -keysize 2048 -validity 10000
```

2. `android/key.properties` dosyası oluşturun:
```properties
storePassword=<password>
keyPassword=<password>
keyAlias=dinemeet
storeFile=../dinemeet.keystore
```

3. `android/app/build.gradle` dosyasını güncelleyin

4. Release build alın:
```bash
flutter build appbundle --release
```

#### 11.2 iOS

1. Apple Developer hesabı gerekli
2. Xcode'da signing yapılandırın
3. Archive oluşturun
4. App Store Connect'e yükleyin

### 12. Monitoring ve Analytics

#### 12.1 Firebase Analytics

- Firebase Console > Analytics bölümünden kullanıcı davranışlarını izleyin
- Custom events ekleyin

#### 12.2 Crashlytics

- Firebase Console > Crashlytics bölümünden crash raporlarını görüntüleyin
- Crash'leri düzeltin ve test edin

#### 12.3 Performance Monitoring

- Firebase Console > Performance bölümünden uygulama performansını izleyin

### 13. Güvenlik Kontrol Listesi

- [ ] Firebase Authentication etkin
- [ ] Firestore güvenlik kuralları deploy edildi
- [ ] Input validation uygulandı
- [ ] Rate limiting yapılandırıldı
- [ ] Kullanıcı verileri şifrelendi
- [ ] API anahtarları güvenli

### 14. Destek

Sorun yaşarsanız:

1. Flutter Doctor çıktısını kontrol edin
2. Firebase Console loglarını inceleyin
3. GitHub Issues bölümünde arama yapın
4. Yeni issue oluşturun

### 15. Güncellemeler

Projeyi güncellemek için:

```bash
git pull origin main
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter clean
flutter run
```

---

**Not:** Bu kılavuz sürekli güncellenmektedir. En güncel bilgiler için README.md dosyasını kontrol edin.
