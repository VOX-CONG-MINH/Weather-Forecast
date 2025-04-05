import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserDataMapper extends BaseDataMapper<UserData, User> {
  const UserDataMapper();

  @override
  User mapToEntity(UserData? data) {
    return User(
      name: data?.name ?? '',
      email: data?.email ?? '',
      uuid: data!.id,
    );
  }
}
