class AppConstants {
  // App Info
  static const String appName = 'DineMeet';
  static const String appVersion = '1.0.0';
  
  // Firebase Collections
  static const String usersCollection = 'users';
  static const String matchPreferencesCollection = 'matchPreferences';
  static const String groupsCollection = 'groups';
  static const String reservationsCollection = 'reservations';
  static const String chatsCollection = 'chats';
  static const String surveysCollection = 'surveys';
  static const String reportsCollection = 'reports';
  static const String venuesCollection = 'venues';
  static const String matchQueueCollection = 'matchQueue';
  
  // Match Modes
  static const List<String> matchModes = ['1v1', '2v2', '3v3'];
  
  // Gender Options
  static const List<String> genderOptions = [
    'male',
    'female', 
    'nonbinary',
    'prefer_not'
  ];
  
  // Zodiac Signs
  static const List<String> zodiacSigns = [
    'aries', 'taurus', 'gemini', 'cancer',
    'leo', 'virgo', 'libra', 'scorpio',
    'sagittarius', 'capricorn', 'aquarius', 'pisces'
  ];
  
  // Interest Categories
  static const List<String> interestCategories = [
    'kahve',
    'sinemalar', 
    'canlı müzik',
    'kitap',
    'oyun',
    'doğa yürüyüşü',
    'tatlı',
    'stand-up',
    'müze',
    'spor'
  ];
  
  // Alcohol Preferences
  static const List<String> alcoholPreferences = [
    'none',
    'social', 
    'yes'
  ];
  
  // Diet Preferences
  static const List<String> dietPreferences = [
    'none',
    'vegan',
    'vegetarian', 
    'halal'
  ];
  
  // Days of Week
  static const List<String> daysOfWeek = [
    'monday',
    'tuesday',
    'wednesday',
    'thursday',
    'friday',
    'saturday',
    'sunday'
  ];
  
  // Time Slots
  static const List<String> timeSlots = [
    '18:00-20:00',
    '19:00-21:00',
    '20:00-22:00',
    '21:00-23:00'
  ];
  
  // Cities (Turkey)
  static const List<String> cities = [
    'İstanbul',
    'Ankara',
    'İzmir',
    'Bursa',
    'Antalya',
    'Adana',
    'Konya',
    'Gaziantep',
    'Mersin',
    'Diyarbakır'
  ];
  
  // Istanbul Districts
  static const List<String> istanbulDistricts = [
    'Kadıköy',
    'Beşiktaş',
    'Nişantaşı',
    'Şişli',
    'Beyoğlu',
    'Üsküdar',
    'Maltepe',
    'Ataşehir',
    'Bakırköy',
    'Fatih'
  ];
  
  // Languages
  static const List<String> languages = [
    'Türkçe',
    'English',
    'Deutsch',
    'Français',
    'Español',
    'Italiano',
    'Русский',
    'العربية'
  ];
  
  // Report Reasons
  static const List<String> reportReasons = [
    'inappropriate_behavior',
    'fake_profile',
    'harassment',
    'spam',
    'other'
  ];
  
  // Group Status
  static const List<String> groupStatuses = [
    'pending',
    'confirmed', 
    'cancelled',
    'completed'
  ];
  
  // Reservation Status
  static const List<String> reservationStatuses = [
    'proposed',
    'locked',
    'cancelled'
  ];
  
  // Message Types
  static const List<String> messageTypes = [
    'text',
    'system'
  ];
  
  // Default Values
  static const int defaultAgeMin = 18;
  static const int defaultAgeMax = 65;
  static const int defaultCityRadius = 10;
  static const double defaultStrictness = 0.5;
  static const int maxBioLength = 280;
  static const int maxPhotos = 6;
  
  // Timeouts
  static const int reservationConfirmationTimeout = 15; // minutes
  static const int matchQueueTimeout = 30; // minutes
  
  // Limits
  static const int maxInterests = 10;
  static const int maxLanguages = 5;
  static const int maxParticipants = 6; // 3v3
}
