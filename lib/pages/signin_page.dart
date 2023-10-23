import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/pages/shop_page.dart';
import 'package:plant_shop_app/pages/signup_page.dart';
import 'package:plant_shop_app/widgets/button.dart';
import 'package:plant_shop_app/widgets/text_form_field.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/screen2.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Sign In',
                    style: TextStyle(color: Constants.mainColor, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Log in to your account',
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextFormFieldWidget(
                      icon: Icon(Icons.email), text: 'mrkzqsmv@gmail.com'),
                  const SizedBox(
                    height: 12,
                  ),
                  const TextFormFieldWidget(
                      icon: Icon(Icons.lock), text: 'Password'),
                  Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      const Text('Remember me'),
                      const SizedBox(
                        height: 12,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(color: Constants.mainColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ShopPage()));
                    },
                    child: const ButtonWidget(
                        textColor: Colors.white,
                        bgColor: Constants.mainColor,
                        borderColor: Colors.transparent,
                        text: 'Log in'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Screen2()));
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(color: Constants.mainColor),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
