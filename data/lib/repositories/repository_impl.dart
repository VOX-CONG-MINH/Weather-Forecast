import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../data.dart';

@LazySingleton(as: Repository)
class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final FirestoreDataSource _firestoreDataSource;
  final EmailJsDataSource _emailJsDataSource;
  final CurrentWeatherDataMapper _currentWeatherDataMapper;
  final ForecastWeatherDataMapper _forecastWeatherDataMapper;

  final UserDataMapper _userDataMapper;

  RepositoryImpl(
    this._remoteDataSource,
    this._currentWeatherDataMapper,
    this._forecastWeatherDataMapper,
    this._firestoreDataSource,
    this._emailJsDataSource,
    this._userDataMapper,
  );

  @override
  Future<Either<Failure, Weather>> getCurrentWeather(String city) async {
    try {
      final weather = await _remoteDataSource.getCurrentWeather(city);
      return Right(_currentWeatherDataMapper.mapToEntity(weather));
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Weather>>> getForecast(
    String city,
    int days,
  ) async {
    try {
      final forecasts = await _remoteDataSource.getForecast(city, days);
      return Right(_forecastWeatherDataMapper.mapToListEntity(forecasts));
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> confirmEmail(String email) async {
    try {
      await _emailJsDataSource.sendConfirmationEmail(email);
      await _firestoreDataSource.confirmEmail(email);

      return Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either> signIn(String email, String password) async {
    final result = await _firestoreDataSource.signin(email, password);
    return result;
  }

  @override
  Future<Either> signUp(String email, String password, String name) async {
    final result = await _firestoreDataSource.signup(email, password, name);

    return result;
  }

  @override
  Future<Either> signOut() async {
    try {
      await _firestoreDataSource.signOut();

      return Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, User>> getUser() async {
    try {
      final user = await _firestoreDataSource.getUser();
      return Right(_userDataMapper.mapToEntity(user));
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Map<String, Weather>>> saveHistorySearch(
    Weather weather,
    String uuid,
  ) async {
    try {
      final historyWeather = await _firestoreDataSource.saveHistorySearch(
        weather,
        uuid,
      );
      return historyWeather;
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
