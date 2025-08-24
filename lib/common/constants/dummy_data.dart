import '../constants/app_constants.dart';

class DummyData {
  // Dummy Venues
  static const List<Map<String, dynamic>> venues = [
    {
      'id': 'venue_1',
      'name': 'Mekan A',
      'area': 'Kadıköy',
      'city': 'İstanbul',
      'priceLevel': 2, // 1-4 scale
      'cuisine': 'Turkish',
      'openHours': {
        'monday': '12:00-23:00',
        'tuesday': '12:00-23:00',
        'wednesday': '12:00-23:00',
        'thursday': '12:00-23:00',
        'friday': '12:00-00:00',
        'saturday': '12:00-00:00',
        'sunday': '12:00-22:00',
      },
      'rating': 4.2,
      'address': 'Kadıköy, İstanbul',
      'phone': '+90 216 123 45 67',
      'website': 'https://mekana.com',
      'description': 'Modern Türk mutfağı ve güzel atmosfer',
    },
    {
      'id': 'venue_2',
      'name': 'Mekan B',
      'area': 'Beşiktaş',
      'city': 'İstanbul',
      'priceLevel': 3,
      'cuisine': 'International',
      'openHours': {
        'monday': '11:00-22:00',
        'tuesday': '11:00-22:00',
        'wednesday': '11:00-22:00',
        'thursday': '11:00-22:00',
        'friday': '11:00-23:00',
        'saturday': '11:00-23:00',
        'sunday': '11:00-21:00',
      },
      'rating': 4.5,
      'address': 'Beşiktaş, İstanbul',
      'phone': '+90 212 987 65 43',
      'website': 'https://mekanb.com',
      'description': 'Uluslararası mutfak ve şık dekor',
    },
    {
      'id': 'venue_3',
      'name': 'Mekan C',
      'area': 'Nişantaşı',
      'city': 'İstanbul',
      'priceLevel': 4,
      'cuisine': 'Fine Dining',
      'openHours': {
        'monday': '18:00-23:00',
        'tuesday': '18:00-23:00',
        'wednesday': '18:00-23:00',
        'thursday': '18:00-23:00',
        'friday': '18:00-00:00',
        'saturday': '18:00-00:00',
        'sunday': '18:00-22:00',
      },
      'rating': 4.8,
      'address': 'Nişantaşı, İstanbul',
      'phone': '+90 212 555 12 34',
      'website': 'https://mekanc.com',
      'description': 'Premium fine dining deneyimi',
    },
    {
      'id': 'venue_4',
      'name': 'Kahve Dünyası',
      'area': 'Kadıköy',
      'city': 'İstanbul',
      'priceLevel': 1,
      'cuisine': 'Cafe',
      'openHours': {
        'monday': '08:00-22:00',
        'tuesday': '08:00-22:00',
        'wednesday': '08:00-22:00',
        'thursday': '08:00-22:00',
        'friday': '08:00-23:00',
        'saturday': '09:00-23:00',
        'sunday': '09:00-21:00',
      },
      'rating': 4.0,
      'address': 'Kadıköy, İstanbul',
      'phone': '+90 216 111 22 33',
      'website': 'https://kahvedunyasi.com',
      'description': 'Sıcak ve samimi kahve dükkanı',
    },
    {
      'id': 'venue_5',
      'name': 'Pizza Palace',
      'area': 'Beşiktaş',
      'city': 'İstanbul',
      'priceLevel': 2,
      'cuisine': 'Italian',
      'openHours': {
        'monday': '12:00-22:00',
        'tuesday': '12:00-22:00',
        'wednesday': '12:00-22:00',
        'thursday': '12:00-22:00',
        'friday': '12:00-23:00',
        'saturday': '12:00-23:00',
        'sunday': '12:00-21:00',
      },
      'rating': 4.3,
      'address': 'Beşiktaş, İstanbul',
      'phone': '+90 212 444 55 66',
      'website': 'https://pizzapalace.com',
      'description': 'Otantik İtalyan pizzası',
    },
  ];

  // Sample Users for Testing
  static const List<Map<String, dynamic>> sampleUsers = [
    {
      'uid': 'user_1',
      'displayName': 'Ayşe Yılmaz',
      'age': 24,
      'gender': 'female',
      'zodiac': 'leo',
      'interests': ['kahve', 'kitap', 'sinemalar'],
      'city': 'İstanbul',
      'district': 'Kadıköy',
      'languages': ['Türkçe', 'English'],
      'lifestyle': {
        'smoke': false,
        'alcohol': 'social',
        'diet': 'none'
      },
      'availability': {
        'days': ['friday', 'saturday'],
        'timeSlots': ['19:00-21:00', '20:00-22:00']
      },
      'bio': 'Kitap okumayı ve yeni yerler keşfetmeyi seviyorum.',
      'photos': ['https://example.com/photo1.jpg'],
      'ratings': {'avg': 4.5, 'count': 3},
      'flags': {'verified': true, 'banned': false}
    },
    {
      'uid': 'user_2',
      'displayName': 'Mehmet Demir',
      'age': 26,
      'gender': 'male',
      'zodiac': 'scorpio',
      'interests': ['spor', 'müze', 'doğa yürüyüşü'],
      'city': 'İstanbul',
      'district': 'Beşiktaş',
      'languages': ['Türkçe'],
      'lifestyle': {
        'smoke': false,
        'alcohol': 'none',
        'diet': 'none'
      },
      'availability': {
        'days': ['thursday', 'friday', 'saturday'],
        'timeSlots': ['18:00-20:00', '19:00-21:00']
      },
      'bio': 'Spor yapmayı ve kültür aktivitelerini seviyorum.',
      'photos': ['https://example.com/photo2.jpg'],
      'ratings': {'avg': 4.2, 'count': 2},
      'flags': {'verified': false, 'banned': false}
    },
    {
      'uid': 'user_3',
      'displayName': 'Zeynep Kaya',
      'age': 23,
      'gender': 'female',
      'zodiac': 'libra',
      'interests': ['canlı müzik', 'tatlı', 'kahve'],
      'city': 'İstanbul',
      'district': 'Nişantaşı',
      'languages': ['Türkçe', 'English', 'Français'],
      'lifestyle': {
        'smoke': false,
        'alcohol': 'social',
        'diet': 'vegetarian'
      },
      'availability': {
        'days': ['friday', 'saturday', 'sunday'],
        'timeSlots': ['20:00-22:00', '21:00-23:00']
      },
      'bio': 'Müzik ve sanat tutkunu. Yeni insanlarla tanışmayı seviyorum.',
      'photos': ['https://example.com/photo3.jpg'],
      'ratings': {'avg': 4.7, 'count': 4},
      'flags': {'verified': true, 'banned': false}
    },
    {
      'uid': 'user_4',
      'displayName': 'Ali Özkan',
      'age': 25,
      'gender': 'male',
      'zodiac': 'gemini',
      'interests': ['oyun', 'stand-up', 'spor'],
      'city': 'İstanbul',
      'district': 'Kadıköy',
      'languages': ['Türkçe', 'English'],
      'lifestyle': {
        'smoke': true,
        'alcohol': 'yes',
        'diet': 'none'
      },
      'availability': {
        'days': ['saturday', 'sunday'],
        'timeSlots': ['19:00-21:00', '20:00-22:00']
      },
      'bio': 'Oyun oynamayı ve eğlenceli sohbetleri seviyorum.',
      'photos': ['https://example.com/photo4.jpg'],
      'ratings': {'avg': 3.8, 'count': 1},
      'flags': {'verified': false, 'banned': false}
    }
  ];

  // Sample Match Preferences
  static const List<Map<String, dynamic>> sampleMatchPreferences = [
    {
      'uid': 'user_1',
      'mode': '1v1',
      'ageRangeMin': 22,
      'ageRangeMax': 28,
      'genderPreference': 'male',
      'mustHaveInterests': ['kitap', 'sinemalar'],
      'city': 'İstanbul',
      'cityRadiusKm': 15,
      'strictness': 0.7
    },
    {
      'uid': 'user_2',
      'mode': '2v2',
      'ageRangeMin': 20,
      'ageRangeMax': 30,
      'genderPreference': 'mixed',
      'mustHaveInterests': ['spor', 'müze'],
      'city': 'İstanbul',
      'cityRadiusKm': 20,
      'strictness': 0.5
    },
    {
      'uid': 'user_3',
      'mode': '1v1',
      'ageRangeMin': 21,
      'ageRangeMax': 27,
      'genderPreference': 'male',
      'mustHaveInterests': ['canlı müzik', 'kahve'],
      'city': 'İstanbul',
      'cityRadiusKm': 10,
      'strictness': 0.8
    },
    {
      'uid': 'user_4',
      'mode': '3v3',
      'ageRangeMin': 22,
      'ageRangeMax': 30,
      'genderPreference': 'mixed',
      'mustHaveInterests': ['oyun', 'stand-up'],
      'city': 'İstanbul',
      'cityRadiusKm': 25,
      'strictness': 0.3
    }
  ];
}
