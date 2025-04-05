import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain.dart';

@injectable
class HistorySearchUsecase implements UseCase<Either, HistorySearchParams> {
  final Repository repository;

  HistorySearchUsecase(this.repository);

  @override
  Future<Either> call(HistorySearchParams historySearchParams) async {
    return await repository.saveHistorySearch(
      historySearchParams.weather,
      historySearchParams.uuid,
    );
  }
}

class HistorySearchParams {
  final String uuid;
  final Weather weather;

  HistorySearchParams({required this.uuid, required this.weather});
}
