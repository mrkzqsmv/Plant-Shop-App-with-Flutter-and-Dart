import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/pages/shop_page.dart';
import 'package:plant_shop_app/pages/signin_page.dart';
import 'package:plant_shop_app/widgets/button.dart';
import 'package:plant_shop_app/widgets/text_form_field.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/screen2.png'),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Constants.mainColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Create your new account',
                    style: TextStyle(
                        color: Color.fromRGBO(83, 82, 82, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextFormFieldWidget(
                      icon: Icon(Icons.person), text: 'Full Name'),
                  const SizedBox(
                    height: 7,
                  ),
                  const TextFormFieldWidget(
                      icon: Icon(Icons.mail), text: 'mrkzqsmv@gmail.com'),
                  const SizedBox(
                    height: 7,
                  ),
                  const TextFormFieldWidget(
                      icon: Icon(Icons.lock), text: 'Password'),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      const Text('Remember me'),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(color: Constants.mainColor),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
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
                        text: 'Sign Up'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset('assets/images/or_continue.png'),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset('assets/images/google_facebook_apple.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Screen3()));
                          },
                          child: const Text(
                            'Sign in',
                            style: TextStyle(color: Constants.mainColor),
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
