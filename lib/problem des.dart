import 'package:flutter/material.dart';
import 'package:untitled23/Details.dart';
class Problem extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Problem Descripiton',
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color:Colors.blue,
            ),),
     SizedBox(height:13.0),
      TextFormField(decoration: InputDecoration(
  contentPadding: EdgeInsets.all(40.0),
  hintText:'Write Here',
          suffixIcon:IconButton(
            icon:Icon(Icons.photo_camera),
            color:Colors.black,
            onPressed:onPhoto
        ),
          border:OutlineInputBorder(
            ),
        ),
  textCapitalization: TextCapitalization.words,
      ),
SizedBox(height: 250,
  width: 100,
),
      ElevatedButton(onPressed: (){Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Details(),),);}, child: Text('Submit'))


          ],
        ),
        )
    );
  }
}
void onPhoto() {
  print ('ChatBot Clicked');
}
