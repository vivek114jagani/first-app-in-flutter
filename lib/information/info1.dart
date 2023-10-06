import 'package:flutter/material.dart';
import 'package:my_app/information/info2.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 184, 206),
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/pngwing.com.png', height: 500),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Text(
                  '01.',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Text(
              'Stylish Wood Chair',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Chair with minimal style and modern wooden and plastic material',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 224, 128, 160),
                elevation: 0,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Info2(),
                    ),
                  );
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
