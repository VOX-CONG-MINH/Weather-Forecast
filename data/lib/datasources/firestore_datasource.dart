import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

@LazySingleton()
class FirestoreDataSource {
  FirestoreDataSource();

  Future<void> confirmEmail(String email) async {
    final collection = FirebaseFirestore.instance.collection('subscriptions');

    try {
      await collection.doc(email).update({'confirmed': true});
    } catch (_) {
      throw ServerFailure();
    }
  }

  Future<Either<String, UserData>> signin(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user;
      if (user == null) {
        throw ServerFailure();
      }
      final userData = await getUser();
      return Right(userData);
    } on FirebaseAuthException catch (e) {
      String message = '';

      if (e.code == 'invalid-email') {
        message = 'Not user found for that email';
      } else if (e.code == 'invalid-credential') {
        message = 'Wrong password provided for that user';
      }

      return Left(message);
    }
  }

  Future<Either> signup(String email, String password, String name) async {
    try {
      var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      FirebaseFirestore.instance.collection('Users').doc(data.user?.uid).set({
        'uid': data.user?.uid,
        'name': name,
        'email': data.user?.email,
      });

      return const Right('Signup was Successful');
    } on FirebaseAuthException catch (e) {
      String message = '';

      if (e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email.';
      }
      return Left(message);
    }
  }

  Future<UserData> getUser() async {
    try {
      FirebaseAuth firebaseAuth = FirebaseAuth.instance;
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

      var userDoc =
          await firebaseFirestore
              .collection('Users')
              .doc(firebaseAuth.currentUser?.uid)
              .get();

      final data = userDoc.data() as Map<String, dynamic>;
      final userData = UserData(
        id: firebaseAuth.currentUser!.uid,
        name: data['name'] as String?,
        email: data['email'] as String? ?? firebaseAuth.currentUser?.email,
      );
      return userData;
    } catch (e) {
      throw ServerFailure();
    }
  }

  Future<Either<Failure, Map<String, Weather>>> saveHistorySearch(
    Weather weather,
    String uuid,
  ) async {
    try {
      if (uuid.isEmpty) {
        return Left(ServerFailure());
      }

      final collection = FirebaseFirestore.instance.collection(
        'search_history',
      );

      final today = DateTime.now();
      final todayString =
          "${today.year}/${today.month.toString().padLeft(2, '0')}/${today.day.toString().padLeft(2, '0')}";

      final oldDocsSnapshot =
          await collection.where('day', isNotEqualTo: todayString).get();

      if (oldDocsSnapshot.docs.isNotEmpty) {
        final batch = FirebaseFirestore.instance.batch();
        for (var doc in oldDocsSnapshot.docs) {
          batch.delete(doc.reference);
        }
        await batch.commit();
        print('Deleted ${oldDocsSnapshot.docs.length} old documents');
      }

      final existingDoc =
          await collection
              .where('uuid', isEqualTo: uuid)
              .where('city', isEqualTo: weather.name)
              .where('day', isEqualTo: todayString)
              .get();

      final todayHistorySnapshot =
          await collection
              .where('uuid', isEqualTo: uuid)
              .where('day', isEqualTo: todayString)
              .get();

      final history = {
        for (var doc in todayHistorySnapshot.docs)
          doc.id: Weather(
            name: doc.data()['city'] as String? ?? '',
            temperature: doc.data()['temperature'] as double? ?? 0.0,
            humidity: doc.data()['humidity'] as int? ?? 0,
            condition: doc.data()['condition'] as String? ?? '',
            icon: doc.data()['icon'] as String? ?? '',
            windSpeed: doc.data()['windSpeed'] as double? ?? 0.0,
            day: doc.data()['day'] as String? ?? '',
            time: doc.data()['time'] as String? ?? '',
          ),
      };

      if (existingDoc.docs.isNotEmpty) {
        print(
          'City "${weather.name}" already exists for UUID: $uuid on $todayString',
        );
        return Right(history);
      }

      print('Saving new history for city "${weather.name}"');
      final searchHistoryDoc = {
        'uuid': uuid,
        'city': weather.name,
        'temperature': weather.temperature,
        'humidity': weather.humidity,
        'condition': weather.condition,
        'icon': weather.icon,
        'windSpeed': weather.windSpeed,
        'day': todayString,
        'time': weather.time,
      };

      final docRef = await collection.add(searchHistoryDoc);
      history[docRef.id] = weather;

      return Right(history);
    } catch (e) {
      print('Error in saveHistorySearch: $e');
      return Left(ServerFailure());
    }
  }

  Future<Either> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return const Right(unit);
    } catch (e) {
      ('Error in signOut: $e');
      return Left(ServerFailure());
    }
  }
}
