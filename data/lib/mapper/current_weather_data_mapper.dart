import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../data.dart';

@injectable
class CurrentWeatherDataMapper
    extends BaseDataMapper<CurrentWeatherData, Weather> {
  const CurrentWeatherDataMapper();

  @override
  Weather mapToEntity(CurrentWeatherData? data) {
    return Weather(
      name: data?.location?.name ?? '',
      day: _formatDate(data?.location?.localtime),
      time: _formatTime(data?.location?.localtime),
      temperature: data?.current?.temperature ?? 0.0,
      condition: data?.current?.condition?.text ?? '',
      icon: data?.current?.condition?.icon ?? '',
      windSpeed: double.parse(
        ((data?.current?.windSpeed ?? 0.0) * 0.44704).toStringAsFixed(2),
      ),
      humidity: data?.current?.humidity ?? 0,
    );
  }

  String _formatDate(String? localtime) {
    if (localtime == null || localtime.isEmpty) return '';
    try {
      final date = DateTime.parse(localtime);
      return DateFormat('yyyy/MM/dd').format(date);
    } catch (e) {
      return '';
    }
  }

  String _formatTime(String? localtime) {
    if (localtime == null || localtime.isEmpty) return '';
    try {
      final date = DateTime.parse(localtime);
      return DateFormat('HH:mm').format(date);
    } catch (e) {
      return '';
    }
  }
}
