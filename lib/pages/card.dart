import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/pages/pay_page.dart';
import 'package:plant_shop_app/widgets/bottom_nav_bar.dart';
import 'package:plant_shop_app/widgets/button.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text('Cart'),
        centerTitle: true,
        actions: const [
          Icon(Icons.menu),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Constants.mainColor,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  createCart(),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PaymentPage()));
              },
              child: const ButtonWidget(
                  textColor: Colors.white,
                  bgColor: Constants.mainColor,
                  borderColor: Colors.transparent,
                  text: 'Checkout'),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Row createCart() {
    return Row(
      children: [
        Column(
          children: [
            Image.asset('assets/images/plant1.png'),
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aloe Vera',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('Height'),
                SizedBox(
                  width: 5,
                ),
                Text('Humadity'),
                SizedBox(
                  width: 5,
                ),
                Text('Width'),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('7.3'),
                SizedBox(
                  width: 5,
                ),
                Text('62%'),
                SizedBox(
                  width: 5,
                ),
                Text('3.3'),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text("\$22.21"),
          ],
        ),
      ],
    );
  }
}
