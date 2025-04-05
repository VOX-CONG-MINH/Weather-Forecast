import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../../domain.dart';

@injectable
class GetUserUsecase implements UseCase<Either<Failure, User>, NoParams> {
  final Repository repository;

  GetUserUsecase(this.repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await repository.getUser();
  }
}

class NoParams {}
