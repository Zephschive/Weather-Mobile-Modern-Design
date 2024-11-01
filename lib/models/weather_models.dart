class WeatherModels {
  final String cityName;
  final double temperature;
  final String mainCondition;

  WeatherModels({
    required this.cityName, 
    required this.temperature,
    required this.mainCondition
  });


  factory WeatherModels.fromJson(Map<String, dynamic> json ){
    return WeatherModels(
     cityName: json['name'],
     temperature: json['main']['temp'].toDouble(), 
     mainCondition: json['weather'][0]['main']
     );
  }
}