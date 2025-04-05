import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../../domain.dart';

@injectable
class SignInUsecase implements UseCase<Either, SignInParams> {
  final Repository repository;

  SignInUsecase(this.repository);

  @override
  Future<Either> call(SignInParams params) async {
    if (params.email.isEmpty || params.password.isEmpty) {
      return Left(ServerFailure());
    }
    return await repository.signIn(params.email, params.password);
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});
}
