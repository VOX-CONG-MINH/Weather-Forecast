import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../domain.dart';

@injectable
class SignOutUsecase implements UseCase<Either, SignOutParams> {
  final Repository repository;

  SignOutUsecase(this.repository);

  @override
  Future<Either> call(SignOutParams s) async {
    try {
      await repository.signOut();
      return Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}

class SignOutParams {
  SignOutParams();
}
