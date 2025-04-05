import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class ForecastWeatherDataMapper
    extends BaseDataMapper<ForecastWeatherData, Weather> {
  const ForecastWeatherDataMapper();

  @override
  Weather mapToEntity(ForecastWeatherData? data) {
    return Weather(
      day: data?.date ?? '',
      temperature: data?.day?.avgTemperature ?? 0.0,
      condition: data?.day?.condition?.text ?? '',
      icon: data?.day?.condition?.icon ?? '',
      windSpeed: double.parse(
        ((data?.day?.maxWindSpeed ?? 0.0) * 0.44704).toStringAsFixed(2),
      ),
      humidity: data?.day?.avgHumidity ?? 0,
    );
  }
}
