import 'package:flutter/material.dart';
import 'package:flutter_application_coffee_app/sign_in.dart';

class info extends StatefulWidget {
  const info({Key? key}) : super(key: key);

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              color: const Color.fromRGBO(50, 74, 89, 1),
              height: 300, // Increased height to accommodate larger image
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0, // Adjust the value to set the vertical position
                    child: Image.asset(
                      'assets/img1.png',
                      width: 350, // Increased width
                      height: 385, // Increased height
                    ),
                  ),
                  Positioned(
                    right: 80,
                    bottom:
                        100, // Adjust the value to set the vertical position
                    child: const Text(
                      'Magic Coffee',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: const Text(
                'Feel yourself like',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: const Text(
                'a barista!',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: const Text(
                'Magic coffee on order.',
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 60,
              width: 40,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const sign_in()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromRGBO(50, 74, 89, 1), // Button color
                  shape: const CircleBorder(), // Circular button shape
                  padding: const EdgeInsets.all(20), // Button padding
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
