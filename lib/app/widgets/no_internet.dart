import 'package:flutter/material.dart';

class NoInternet extends StatefulWidget {
  const NoInternet({super.key});

  @override
  State<NoInternet> createState() => _NoInternetState();
}

class _NoInternetState extends State<NoInternet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/no_internet.jpeg'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Ooops!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            Text(
              'Slow or No internet connection\nPlease check your internet settings.',
              style: TextStyle(
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
