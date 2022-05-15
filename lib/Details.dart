import 'package:flutter/material.dart';
import 'package:untitled23/devliery.dart';
class Details extends StatelessWidget {
  static const String id ="Details";
  List<bool> isTypeSelected = [false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 2.0,
        centerTitle: true,
        title: Text(
          "Details",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: BackButton(color:Colors.black,),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Please check your cart",
              style: TextStyle(
                color: Color(0xFFC5C5C5),
              ),
            ),
            SizedBox(height: 25.0),
            Column(
                children: <Widget>[
                  cardWidget(
                      context,
                      'assets/kengenlogo.jpeg',
                      'Plumber',
                      'ID: 123456789',
                      'Auto Pay on 24th May 18',
                      '\$1240.00',
                      'Due in 3 days',
                      Colors.green),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                  ),
                  cardWidget(
                      context,
                      'assets/totallogo.jpg',
                      'Carpenter',
                      'ID: 123456789',
                      'Enable Auto Pay',
                      '\$1490.00',
                      'Due in 2 days',
                      Colors.grey),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                  ),
                ]
            ),
            Spacer(),
            Row(
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context)=> CurrentLocation()));

                  },
                  child: Text(
                    "CHECKOUT",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  color: Color(0xFFE5E5E5),
                  padding: EdgeInsets.all(16.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  buildNumberField(var input) {
    return TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0,0.0,0.0,0.0),

        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0xFFC5C5C5),
        ),
        hintText: input,
        border: OutlineInputBorder(),
      ),
    );
  }


  Widget buildCheckItem({required String title, required bool isSelected}) {

    return Container(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Icon(
            isSelected ? Icons.check_circle : Icons.circle,
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          SizedBox(width: 10.0),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.blue : Colors.grey),
          ),
        ],
      ),
    );
  }
}

Widget cardWidget(BuildContext context, String image, String title,
    String subtitle, String desc, String amount, String days, Color color) {
  return Material(
    elevation: 2.0,
    borderRadius: BorderRadius.circular(18.0),
    child: Container(
      width: MediaQuery.of(context).size.width - 30.0,
      height: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                    leading: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.black, width: 1),
                          image: DecorationImage(image: AssetImage(image))),
                    ),
                    subtitle: Text(
                      subtitle,
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                    trailing: Container(
                      width: 80.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[300]),
                      child: Center(
                        child: Text(
                          'Select',
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[

                        Column(
                          children: <Widget>[
                            Text(
                              amount, style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                            ),
                            ),

                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 5.0,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    ),
  );
}