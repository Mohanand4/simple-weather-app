import 'package:flutter/material.dart';
import 'package:weatherapp/Screens/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context){return Search();} ));
          }, icon: const Icon(Icons.search))
        ],

      ),

      body: Container(
        child: Text(''),
      ),
    );
  }
}
