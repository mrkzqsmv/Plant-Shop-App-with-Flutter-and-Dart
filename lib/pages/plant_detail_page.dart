import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/pages/card.dart';
import 'package:plant_shop_app/widgets/button.dart';

class PlantDetailPage extends StatefulWidget {
  final List items;
  final String imgPath;
  final String name;
  final double price;
  final String description;
  final double height;
  final String humadity;
  final double width;

  const PlantDetailPage(
      {super.key,
      required this.imgPath,
      required this.name,
      required this.price,
      required this.description,
      required this.height,
      required this.humadity,
      required this.width,
      required this.items});

  @override
  State<PlantDetailPage> createState() => _PlantDetailPageState();
}

class _PlantDetailPageState extends State<PlantDetailPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        actions: [
          Image.asset('assets/images/heart.png'),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.imgPath,
              width: 200,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.name,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.description,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price',
                  style: TextStyle(fontSize: 16),
                ),
                Text('Quantity'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.price.toString(),
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    createPlusButton(const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      count.toString(),
                      style: const TextStyle(fontSize: 25),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    createPlusButton(const Icon(
                      Icons.remove,
                      color: Colors.white,
                    )),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Height'), Text('Humadity'), Text('Width')],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.height.toString(),
                  style:
                      const TextStyle(fontSize: 12, color: Constants.mainColor),
                ),
                Text(widget.humadity,
                    style: const TextStyle(
                        fontSize: 12, color: Constants.mainColor)),
                Text(widget.width.toString(),
                    style: const TextStyle(
                        fontSize: 12, color: Constants.mainColor))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const CardPage()));
              },
              child: const ButtonWidget(
                  textColor: Colors.white,
                  bgColor: Constants.mainColor,
                  borderColor: Colors.transparent,
                  text: 'Buy Now'),
            )
          ],
        ),
      ),
    );
  }

  createPlusButton(Icon icon) {
    return InkWell(
      onTap: () {
        setState(() {
          if (icon == const Icon(Icons.add)) {
            count--;
          } else if (icon == const Icon(Icons.add)) {
            count++;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Constants.mainColor,
        ),
        child: icon,
      ),
    );
  }
}
