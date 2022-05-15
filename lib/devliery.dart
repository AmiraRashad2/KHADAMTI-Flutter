import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:untitled23/Check%20OuT.dart';
class CurrentLocation extends StatelessWidget {
  static const String id ="CurrentLocation";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        backgroundColor:Colors.white,
        appBar:AppBar( leading: BackButton(color:Colors.black,),
          backgroundColor: Colors.white,
        ),
        body:Padding(
          padding:const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center
            ,
            children: [
              Text('Deliverys Address',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.blue,
                ),),
              SizedBox(height:13.0),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(40.0),
                  hintText:'Delivery To :',
                  prefixIcon: Icon(Icons.delivery_dining),

                  suffixIcon:GestureDetector
                    (child: Icon(Icons.add_location_alt)),
                  suffixText: "Current Location",
                  border:OutlineInputBorder(
                  ),
                ),
              ),
              FlatButton(onPressed: (){getCurrentPosition();},
                  child: Icon(Icons.add_location_alt)),
              SizedBox(height: 250,
                width: 100,
              ),
              SizedBox(width: 200,
                height: 40,
                ),

            ],
          ),
        )

    );
  }
  var longitude;
  var latitude;

  Future<void> getCurrentPosition() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
      print(latitude);
      print(longitude);
    } on Exception catch (e) {
      print(e);
    }
  }
}

class Location {
  var longitude;
  var latitude;

  Future<void> getCurrentPosition() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
      print(latitude);
      print(longitude);
    } on Exception catch (e) {
      print('Can not get location');
    }
  }
}