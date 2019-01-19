import 'package:flutter/material.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(top:10),
        children: <Widget>[
          Container(
            color: Colors.blue.shade300,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[

        Stack(
          children: <Widget>[
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
              ),
            )
          ],
        ),


      ],
    );
  }
}
