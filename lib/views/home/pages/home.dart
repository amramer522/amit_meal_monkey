import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/views/home/pages/components/delivery_and_search.dart';
import 'package:meal_monkey/views/home/pages/components/home_categories.dart';

import '../models/resturant.dart';
import 'components/item_resturant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RestaurantModel> restaurantList = [
    RestaurantModel(
        title: "Minute by tuk tuk",
        numOfRates: 168,
        type: ["Café", " Western Food", "Amr Food"],
        rate: 1,
        image: "https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Pasta-alla-vodka-f1d2e1c.jpg"),
    RestaurantModel(
        title: "Café de Noir", numOfRates: 70, type: ["Café", " Western Food"], rate: 2, image: "https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Pasta-alla-vodka-f1d2e1c.jpg"),
    RestaurantModel(
        title: "Bakes by Tella",
        numOfRates: 90,
        type: ["Café", " Western Food"],
        rate: 3.5,
        image: "https://www.spendwithpennies.com/wp-content/uploads/2021/11/SWP-2-cream-cheese-pasta-sauce-1-500x375.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DeliveryAndSearch(),
          HomeCategories(),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              children: [
                Text(
                  "Popular Restaurents",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text("View All"),
                ),
              ],
            ),
          ),
          ...List.generate(
              restaurantList.length,
              (index) => ItemRestaurant(
                    model: restaurantList[index],
                  )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text("View All"),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 135,
          //   child: ListView.separated(
          //       padding: const EdgeInsets.symmetric(horizontal: 21),
          //       scrollDirection: Axis.horizontal,
          //       itemBuilder: (context, index) => Column(
          //         mainAxisSize: MainAxisSize.min,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Expanded(
          //             child: Container(
          //               clipBehavior: Clip.antiAlias,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //               ),
          //               child: Image.network(
          //                 categoryList[index].image,
          //                 width: 228,
          //                 fit: BoxFit.cover,
          //               ),
          //             ),
          //           ),
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Text(categoryList[index].title),
          //           Row(
          //             children: [
          //
          //               SizedBox(
          //                 width: 4,
          //               ),
          //               Text(
          //                 "(1254 ratings) Hello",
          //                 style: TextStyle(color: Theme.of(context).hintColor, fontSize: 12),
          //               ),
          //               SizedBox(
          //                 width: 23,
          //               ),
          //               SvgPicture.asset(
          //                 "assets/icons/star.svg",
          //                 color: Theme.of(context).primaryColor,
          //               ),
          //               SizedBox(
          //                 width: 4,
          //               ),
          //               Text(
          //                 "1",
          //                 style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 11),
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //       separatorBuilder: (context, index) => SizedBox(
          //         width: 18,
          //       ),
          //       itemCount: categoryList.length),
          // ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              children: [
                Text(
                  "Recent Items",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text("View All"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
