import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(leading: BackButton(color:Colors.black,),),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png'),
                      ),
                      Text('  Name',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color:Colors.blue
                        ),
                      ),

                      SizedBox(
                        height: 80.0,
                      ),
                    ] ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),

              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.account_balance_wallet),
                  Text('Account Balance',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.blue
                  ),
                ),
                  Icon(Icons.exposure_zero),
                  SizedBox(
                  height: 80.0,
                ),
             ] ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.event_note_sharp),
                Text('Number Of Orders',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.blue
                  ),
                ),
                Icon(Icons.exposure_zero),
                SizedBox(
                  height: 80.0,
                ),
              ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [                Icon(Icons.star),

                Text('Service Review',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.blue
                  ),
                ),
                Icon(Icons.exposure_zero),

                SizedBox(
                  height: 80.0,
                ),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.monetization_on_sharp),

                Text('Coupons',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.blue
                  ),
                ),
                Icon(Icons.exposure_zero),

                SizedBox(
                  height: 80.0,
                ),
                ]),
                Container(
                  child: MaterialButton(
                    onPressed: () {
                    },
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
);
  }
}