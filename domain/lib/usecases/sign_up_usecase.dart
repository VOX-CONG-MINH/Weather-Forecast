import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../../domain.dart';

@injectable
class SignUpUsecase implements UseCase<Either, SignUpParams> {
  final Repository repository;

  SignUpUsecase(this.repository);

  @override
  Future<Either> call(SignUpParams params) async {
    if (params.email.isEmpty ||
        params.password.isEmpty ||
        params.name.isEmpty) {
      return Left(ServerFailure());
    }
    return await repository.signUp(params.email, params.password, params.name);
  }
}

class SignUpParams {
  final String email;
  final String password;
  final String name;

  SignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
