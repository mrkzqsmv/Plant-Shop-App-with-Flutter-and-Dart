import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';
import 'package:plant_shop_app/models/plant_model.dart';
import 'package:plant_shop_app/pages/plant_detail_page.dart';
import 'package:plant_shop_app/widgets/bottom_nav_bar.dart';
import 'package:plant_shop_app/widgets/text_form_field.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<PlantModel> items = [
    PlantModel(
        imgPath: 'assets/images/plant1.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant2.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant3.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant4.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant1.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant2.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant3.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant4.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant1.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant2.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant3.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant4.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant1.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant2.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant3.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant4.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant1.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant2.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant3.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
    PlantModel(
        imgPath: 'assets/images/plant4.png',
        name: 'Leaf Palm Branch',
        price: 5.00,
        description:
            'Roses are some of the most beloved and iconic flowers in the world. They are renowned for their exquisite beauty, enchanting fragrance, and the myriad of emotions they can convey. These timeless blooms have been a source of inspiration for poets, artists, and romantics throughout history.',
        height: 7.3,
        humadity: '62%',
        width: 3.3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          Image.asset('assets/images/vector.png'),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Let’s find your plants',
              style: TextStyle(color: Constants.mainColor, fontSize: 32),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextFormFieldWidget(
              text: 'Search',
              icon: Icon(Icons.search),
            ),
            const SizedBox(
              height: 10,
            ),
            createGridView(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  createGridView() {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlantDetailPage(
                        items: items,
                        imgPath: items[index].imgPath,
                        name: items[index].name,
                        price: items[index].price,
                        description: items[index].description,
                        height: items[index].height,
                        humadity: items[index].humadity,
                        width: items[index].width)));
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Constants.mainColor.withAlpha(10),
                  border: Border.all(
                    color: Constants.mainColor.withAlpha(10),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('assets/images/heart.png'),
                      ],
                    ),
                    Image.asset(
                      items[index].imgPath,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      items[index].name,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(items[index].price.toString()),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Constants.mainColor,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
