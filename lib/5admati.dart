import 'package:flutter/material.dart';
import 'package:untitled23/NavBar.dart';
import 'package:untitled23/Profile.dart';
import 'package:untitled23/menu.dart';
class khadmati extends StatefulWidget {
  const khadmati({Key? key}) : super(key: key);
  @override
  State<khadmati> createState() => _khadmatiState();
}

class _khadmatiState extends State<khadmati> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: BackButton(color:Colors.black,),),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                  'https://files.fm/thumb_show.php?i=dhzdkyszu'),

                  SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),),);
                          setState(() {});
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.network(
                                'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png',
                                height: 120,
                                width: 120,
                              ),
                              Text(
                                'Profile',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.blue,),
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavBar(),),);
                          setState(() {});
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.network(
                                'https://files.fm/thumb_show.php?i=q32p37ct7',
                                height: 120,
                                width: 150,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 100.0,
                  ),

                  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Menu(),),);
                          setState(() {
                          });
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.network('https://files.fm/thumb_show.php?i=d4x38q6gv',
                                height: 120,
                                width: 120,),
                              Text('Our services',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.blue
                                ),)
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

