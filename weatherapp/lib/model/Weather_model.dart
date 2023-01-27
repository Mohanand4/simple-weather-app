class WeatherModel {

  late String name;
  late String date;
  late double temp;
  late double maxTemp;
  late double minTemp;
  late String weatherStateName;
  late String next1day;
  late String next2day;
  late String next3day;
  late String next4day;

  WeatherModel(
      this.name,
      this.date,
      this.temp,
      this.maxTemp,
      this.minTemp,
      this.weatherStateName,
      this.next1day,
      this.next2day,
      this.next3day,
      this.next4day);


  WeatherModel.fromJson(dynamic data,int daydate){

    var jsonData = data['forecast']['forecastday'][daydate];
    name    = data['location'][daydate];
    date    = data['forecast']['forecastday'][daydate];
    temp    = jsonData['avgtemp_c'];
    maxTemp = jsonData['maxtemp_c'];
    minTemp = jsonData['mintemp_c'];

    weatherStateName = jsonData['condition']['text'];
  }
}
