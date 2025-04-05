import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../domain.dart';

@injectable
class GetWeatherUsecase implements UseCase<Either<Failure, Weather>, String> {
  final Repository repository;

  GetWeatherUsecase(this.repository);

  @override
  Future<Either<Failure, Weather>> call(String city) async {
    return await repository.getCurrentWeather(city);
  }
}
