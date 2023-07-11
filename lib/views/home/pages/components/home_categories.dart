import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../home.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({Key? key}) : super(key: key);

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  List<CategoryModel> categoryList = [
    CategoryModel(title: "Offers", image: "https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Pasta-alla-vodka-f1d2e1c.jpg"),
    CategoryModel(title: "Sri Lankan", image: "https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Pasta-alla-vodka-f1d2e1c.jpg"),
    CategoryModel(title: "Italian", image: "https://www.spendwithpennies.com/wp-content/uploads/2021/11/SWP-2-cream-cheese-pasta-sauce-1-500x375.jpg"),
    CategoryModel(title: "Indian", image: "https://images.immediate.co.uk/production/volatile/sites/30/2021/04/Pasta-alla-vodka-f1d2e1c.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 113,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(
                    categoryList[index].image,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Text(categoryList[index].title),
            ],
          ),
          separatorBuilder: (context, index) => SizedBox(
            width: 18,
          ),
          itemCount: categoryList.length),
    );
  }
}
