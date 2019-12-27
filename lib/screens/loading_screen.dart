import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLoction();
  }

  void getLoction() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
  }

  @override
  Widget build(BuildContext context) {
    print('build Called');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // print('Pressed');
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
