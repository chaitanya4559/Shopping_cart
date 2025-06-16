import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.car});
  final Map<String, String> car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: Text(
          "${car['brand']}",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/lanterns_light_darkness_1108935_187x300.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Image.network(
              car['imgUrl']!,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            Text(
              "${car['model']}",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Text(
              car['price']!,
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 176, 176, 176),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              car['details'] ?? "",
              style: TextStyle(
                fontSize: 17,
                color: const Color.fromARGB(255, 140, 140, 140),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
