import 'package:flutter/material.dart';
import 'package:my_app/information/info4.dart';

class Info3 extends StatelessWidget {
  const Info3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 143, 222, 234),
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                  'assets/pngfind.com-dell-laptops-png-5400927.png',
                  height: 500),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text(
                  '03.',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Text(
              'Learn About Computer Language',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'You can make something new using c,c++,JAVA,etc..',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 88, 188, 202),
                elevation: 0,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Info4(),
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
