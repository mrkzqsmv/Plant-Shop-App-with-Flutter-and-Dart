import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/pages/signin_page.dart';
import 'package:plant_shop_app/pages/signup_page.dart';
import 'package:plant_shop_app/widgets/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'The Best App\n For Your Plant',
              style: TextStyle(color: Constants.mainColor, fontSize: 32),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/screen1.png'),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Screen3()));
              },
              child: const ButtonWidget(
                bgColor: Constants.mainColor,
                borderColor: Colors.transparent,
                textColor: Colors.white,
                text: 'Sign In',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Screen2()));
              },
              child: const ButtonWidget(
                bgColor: Colors.white,
                borderColor: Constants.mainColor,
                textColor: Constants.mainColor,
                text: 'Create An Account',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
