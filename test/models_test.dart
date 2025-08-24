import 'package:dinemeet/data/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppUser Model Tests', () {
    test('should create AppUser from JSON', () {
      final json = {
        'uid': 'test_user',
        'displayName': 'Test User',
        'age': 25,
        'gender': 'male',
        'interests': ['kahve', 'kitap'],
        'city': 'İstanbul',
        'ratings': {
          'avg': 4.5,
          'count': 3,
        },
        'flags': {
          'verified': true,
          'banned': false,
        },
      };

      final user = AppUser.fromJson(json);

      expect(user.uid, 'test_user');
      expect(user.displayName, 'Test User');
      expect(user.age, 25);
      expect(user.gender, 'male');
      expect(user.interests, ['kahve', 'kitap']);
      expect(user.city, 'İstanbul');
      expect(user.ratings?.avg, 4.5);
      expect(user.ratings?.count, 3);
      expect(user.flags?.verified, true);
      expect(user.flags?.banned, false);
    });

    test('should convert AppUser to JSON', () {
      final user = AppUser(
        uid: 'test_user',
        displayName: 'Test User',
        age: 25,
        gender: 'male',
        interests: ['kahve', 'kitap'],
        city: 'İstanbul',
        ratings: const Ratings(avg: 4.5, count: 3),
        flags: const Flags(verified: true, banned: false),
      );

      final json = user.toJson();

      expect(json['uid'], 'test_user');
      expect(json['displayName'], 'Test User');
      expect(json['age'], 25);
      expect(json['gender'], 'male');
      expect(json['interests'], ['kahve', 'kitap']);
      expect(json['city'], 'İstanbul');
      expect(json['ratings']['avg'], 4.5);
      expect(json['ratings']['count'], 3);
      expect(json['flags']['verified'], true);
      expect(json['flags']['banned'], false);
    });
  });

  group('MatchPreferences Model Tests', () {
    test('should create MatchPreferences from JSON', () {
      final json = {
        'uid': 'test_user',
        'mode': '1v1',
        'ageRangeMin': 20,
        'ageRangeMax': 30,
        'genderPreference': 'female',
        'mustHaveInterests': ['kahve', 'kitap'],
        'city': 'İstanbul',
        'cityRadiusKm': 15,
        'strictness': 0.7,
      };

      final preferences = MatchPreferences.fromJson(json);

      expect(preferences.uid, 'test_user');
      expect(preferences.mode, '1v1');
      expect(preferences.ageRangeMin, 20);
      expect(preferences.ageRangeMax, 30);
      expect(preferences.genderPreference, 'female');
      expect(preferences.mustHaveInterests, ['kahve', 'kitap']);
      expect(preferences.city, 'İstanbul');
      expect(preferences.cityRadiusKm, 15);
      expect(preferences.strictness, 0.7);
    });

    test('should convert MatchPreferences to JSON', () {
      final preferences = MatchPreferences(
        uid: 'test_user',
        mode: '1v1',
        ageRangeMin: 20,
        ageRangeMax: 30,
        genderPreference: 'female',
        mustHaveInterests: ['kahve', 'kitap'],
        city: 'İstanbul',
        cityRadiusKm: 15,
        strictness: 0.7,
      );

      final json = preferences.toJson();

      expect(json['uid'], 'test_user');
      expect(json['mode'], '1v1');
      expect(json['ageRangeMin'], 20);
      expect(json['ageRangeMax'], 30);
      expect(json['genderPreference'], 'female');
      expect(json['mustHaveInterests'], ['kahve', 'kitap']);
      expect(json['city'], 'İstanbul');
      expect(json['cityRadiusKm'], 15);
      expect(json['strictness'], 0.7);
    });
  });

  group('Group Model Tests', () {
    test('should create Group from JSON', () {
      final json = {
        'groupId': 'test_group',
        'mode': '2v2',
        'participantUids': ['user1', 'user2', 'user3', 'user4'],
        'status': 'pending',
        'reservationRef': 'test_reservation',
      };

      final group = Group.fromJson(json);

      expect(group.groupId, 'test_group');
      expect(group.mode, '2v2');
      expect(group.participantUids, ['user1', 'user2', 'user3', 'user4']);
      expect(group.status, 'pending');
      expect(group.reservationRef, 'test_reservation');
    });

    test('should convert Group to JSON', () {
      final group = Group(
        groupId: 'test_group',
        mode: '2v2',
        participantUids: ['user1', 'user2', 'user3', 'user4'],
        status: 'pending',
        reservationRef: 'test_reservation',
      );

      final json = group.toJson();

      expect(json['groupId'], 'test_group');
      expect(json['mode'], '2v2');
      expect(json['participantUids'], ['user1', 'user2', 'user3', 'user4']);
      expect(json['status'], 'pending');
      expect(json['reservationRef'], 'test_reservation');
    });
  });

  group('Reservation Model Tests', () {
    test('should create Reservation from JSON', () {
      final json = {
        'resId': 'test_reservation',
        'venueName': 'Mekan A',
        'venueArea': 'Kadıköy',
        'date': '2024-01-15T19:00:00.000Z',
        'time': '19:00-21:00',
        'groupId': 'test_group',
        'notes': 'Test reservation',
        'status': 'proposed',
      };

      final reservation = Reservation.fromJson(json);

      expect(reservation.resId, 'test_reservation');
      expect(reservation.venueName, 'Mekan A');
      expect(reservation.venueArea, 'Kadıköy');
      expect(reservation.time, '19:00-21:00');
      expect(reservation.groupId, 'test_group');
      expect(reservation.notes, 'Test reservation');
      expect(reservation.status, 'proposed');
    });

    test('should convert Reservation to JSON', () {
      final reservation = Reservation(
        resId: 'test_reservation',
        venueName: 'Mekan A',
        venueArea: 'Kadıköy',
        date: DateTime.parse('2024-01-15T19:00:00.000Z'),
        time: '19:00-21:00',
        groupId: 'test_group',
        notes: 'Test reservation',
        status: 'proposed',
      );

      final json = reservation.toJson();

      expect(json['resId'], 'test_reservation');
      expect(json['venueName'], 'Mekan A');
      expect(json['venueArea'], 'Kadıköy');
      expect(json['time'], '19:00-21:00');
      expect(json['groupId'], 'test_group');
      expect(json['notes'], 'Test reservation');
      expect(json['status'], 'proposed');
    });
  });
}
