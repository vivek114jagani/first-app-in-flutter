import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class Info4 extends StatelessWidget {
  const Info4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 190, 199, 249),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, top: 130),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: FlutterLogo(
                size: 280,
              ),
            ),
            const SizedBox(height: 70),
            const Row(
              children: [
                Text(
                  '04.',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Text(
              'FLutter Is A Treding Technology',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Flutter is a free and open-source mobile UI framework created by Google and released in May 2017',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 142, 151, 200),
                elevation: 0,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const HomePage(),
                    ),
                  );
                },
                child: const Icon(Icons.home),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
