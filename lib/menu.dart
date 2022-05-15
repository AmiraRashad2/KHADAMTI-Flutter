import 'package:flutter/material.dart';
import 'package:untitled23/problem%20des.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(leading: BackButton(color:Colors.black,),),

      body:Padding(
      padding: EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              TextFormField(decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(
                    Radius.circular(20.0)),
                ),
                hintText:'  Choose Category',
                contentPadding: EdgeInsets.all(0.0),
                suffixIcon:Icon(Icons.search),
                border:OutlineInputBorder(
                ),
              ),
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Problem(),),);
                        setState(() {
                        });
                      },
                      child: Container(
                      child: Column(
                      children: <Widget>[
                        Image.network('https://files.fm/thumb_show.php?i=vtsmrupvs',
                          height: 150,
                          width: 150,),
                        Text('Carpenter',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.blue),)
                ],
          ),
      ),
    ),

                  SizedBox(
                    width: 10,
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Problem(),));
                      setState(() {
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.network('https://files.fm/thumb_show.php?i=rgbxv2x2j',
                            height: 150,
                            width: 150,),
                          Text('Blacksmith',
                            style: TextStyle(
                                fontSize: 18.0,
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
                height: 90,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => Problem(),));
                      setState(() {
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.network('https://files.fm/thumb_show.php?i=sgbx6qjex',
                            height: 150,
                            width: 150,),
                          Text('Electrician',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color:Colors.blue
                            ),)
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => Problem(),),);
                      setState(() {
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.network('https://files.fm/thumb_show.php?i=csg2xunhr',
                            height: 150,
                            width: 150,),
                          Text('Construction',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color:Colors.blue
                            ),)
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(
                height: 90,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(),),);
                      setState(() {
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.network('https://files.fm/thumb_show.php?i=yt44wkpfk',
                            height: 150,
                            width: 150,),
                          Text('Paint',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color:Colors.blue
                            ),)
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(),),);
                      setState(() {
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.network('https://files.fm/thumb_show.php?i=vnkhzwrn2',
                            height: 150,
                            width: 150,),
                          Text('Cleaner',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color:Colors.blue
                            ),)
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(
                height: 90,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(),),);
                      setState(() {
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.network('https://files.fm/thumb_show.php?i=wpgamwk7e',
                            height: 150,
                            width: 150,),
                          Text('Conditioning',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color:Colors.blue
                            ),)
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  GestureDetector(
                    onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Problem(),),);
                      setState(() {
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.network('https://files.fm/thumb_show.php?i=23s9jrckc',
                            height: 150,
                            width: 150,),
                          Text('Ceramic',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color:Colors.blue
                            ),)
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(
               height: 90,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(),),);
                      setState(() {
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.network('https://files.fm/thumb_show.php?i=r3ka6h339',
                            height: 150,
                            width: 150,),
                          Text('Alumital',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color:Colors.blue
                            ),)
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(),),);
                      setState(() {
                      });
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.network('https://files.fm/thumb_show.php?i=9vet2agnr',
                            height: 150,
                            width: 150,),
                          Text('Plumber',
                            style: TextStyle(
                                fontSize: 18.0,
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
    );
  }
}
