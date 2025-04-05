import 'package:dartz/dartz.dart';
import 'package:shared/shared.dart';

import '../domain.dart';

abstract class Repository {
  Future<Either<Failure, Weather>> getCurrentWeather(String city);
  Future<Either<Failure, List<Weather>>> getForecast(String city, int days);
  Future<Either<Failure, void>> confirmEmail(String email);
  Future<Either> signIn(String email, String password);
  Future<Either> signUp(String email, String password, String name);
  Future<Either<Failure, User>> getUser();
  Future<Either<Failure, Map<String, Weather>>> saveHistorySearch(
    Weather weather,
    String uuid,
  );
  Future<Either> signOut();
}
