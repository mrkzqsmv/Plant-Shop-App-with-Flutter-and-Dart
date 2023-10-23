import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/widgets/button.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade300,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * (1 / 1.5),
            height: MediaQuery.of(context).size.height * (1 / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    Image.asset('assets/images/circle.png'),
                    Positioned(
                        top: 25,
                        left: 15,
                        child: Image.asset('assets/images/tick.png')),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Order Succesfully\n Placed',
                  style: TextStyle(color: Constants.mainColor, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Your payment was succesful!\n just wait skincares arrived at home.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ButtonWidget(
                      textColor: Colors.white,
                      bgColor: Constants.mainColor,
                      borderColor: Colors.transparent,
                      text: 'Countinue Shoping'),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Go to Orders',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
