import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../domain.dart';

@injectable
class GetForecastUsecases
    implements UseCase<Either<Failure, List<Weather>>, Params> {
  final Repository repository;

  GetForecastUsecases(this.repository);

  @override
  Future<Either<Failure, List<Weather>>> call(Params params) async {
    final city = params.city;
    final days = params.days;
    return await repository.getForecast(city, days);
  }
}

class Params {
  final String city;
  final int days;

  Params({required this.city, required this.days});
}
