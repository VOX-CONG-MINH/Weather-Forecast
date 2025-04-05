import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../domain.dart';

@injectable
class ConfirmEmailUsecase implements UseCase<Either<Failure, void>, String> {
  final Repository repository;

  ConfirmEmailUsecase(this.repository);

  @override
  Future<Either<Failure, void>> call(String email) async {
    try {
      await repository.confirmEmail(email);
      return Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
