import 'package:data/data.dart';
import 'package:domain/domain.dart';

class AppInitializer {
  Future<void> init() async {
    try {
      configureDataDependencies();
      configureDomainDependencies();
    } catch (e) {
      rethrow;
    }
  }
}
