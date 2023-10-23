import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/pages/success_page.dart';
import 'package:plant_shop_app/widgets/button.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text('Payment Method'),
        centerTitle: true,
        actions: const [
          Icon(Icons.menu),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(child: Image.asset('assets/images/pay_cart.png')),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                createDot(Colors.grey),
                const SizedBox(
                  width: 7,
                ),
                createDot(Constants.mainColor),
                const SizedBox(
                  width: 7,
                ),
                createDot(Colors.grey)
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SuccessPage()));
              },
              child: const ButtonWidget(
                  textColor: Colors.white,
                  bgColor: Constants.mainColor,
                  borderColor: Colors.transparent,
                  text: 'Payment'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  createDot(Color color) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
