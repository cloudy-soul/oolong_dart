import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

      SingleChildScrollView(
        child: Column(
          children: [
            topbar(),

            first(),
            /*
            welcome(),
            second(),
            third(),
            popu(),
            contact(),
            */
          ],
        ),
      ),

    );
  }

  Container topbar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal, // Add background if needed

      ),
      child: Column(
        children: [
          oicon(),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(onPressed: () {}, child: Text(" ABOUT US")),
                TextButton(onPressed: () {}, child: Text("OUR BEAUTIFUL TEAS")),
                TextButton(onPressed: () {}, child: Text("MATCHA")),
                TextButton(onPressed: () {}, child: Text("GIFT SETS")),
                TextButton(onPressed: () {}, child: Text("Gift cards")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container oicon() {
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,

      ),
      child: Text("Oolong \n tea shop",
          style: TextStyle(
            color: Colors.teal,
            fontStyle: FontStyle.italic,
          )
      ),
    );
  }

  Container first() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          height: 150,
          image: NetworkImage("images/h"), // From URL
          fit: BoxFit.cover,
        ),
      ),
      //child:  your content
    );
  }
}
