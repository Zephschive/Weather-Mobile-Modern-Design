import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherapp/models/weather_models.dart';

class WeatherService {

    static const BASE_URL="http://api.weatherapi.com/v1";
    final String apiKey;


  WeatherService(this.apiKey);

  Future<WeatherModels> getWeather(String cityName) async{
    final response = await http.get(Uri.parse('$BASE_URL?q=$cityName&appid=$apiKey&units=metric'));

    if(response.statusCode ==200){
      return WeatherModels.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('Failed to ;pad Weather data');
    }
  }
}