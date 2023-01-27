import 'package:flutter/material.dart';

import '../service/weather_service.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  late String dataset;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Search a City"),
        centerTitle: true,

      ),

      body: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            Center(
              child: TextField(
                onSubmitted: (data){
                  String cityName =data;
                  WeatgerService s = WeatgerService();
                  s.getWeather(cityName: cityName);
                },
                decoration:  InputDecoration(
                         border: OutlineInputBorder(
                           borderSide: BorderSide(),
                           borderRadius: BorderRadius.circular(10),
                         ),
                    // hintText: 'Enter a city',
                     suffixIcon: Icon(Icons.search),
                    label: Text('Search a City'),

                ),



              ),

            ),

            ElevatedButton(onPressed: (){

              setState(() {
                String cityName ='Madrid';
                WeatgerService s = WeatgerService();
                s.getWeather(cityName: cityName);
              });

            }, child: Text("ENTER"))
          ],
        ),
      ),
    );
  }
}
