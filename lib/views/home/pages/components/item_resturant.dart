import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/resturant.dart';

class ItemRestaurant extends StatelessWidget {
  final RestaurantModel model;

  const ItemRestaurant({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          model.image,
          height: 240,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Text(model.title),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/star.svg",
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    model.rate.toString(),
                    style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 11),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "(${model.numOfRates} ratings) ${model.type[0]}",
                    style: TextStyle(color: Theme.of(context).hintColor, fontSize: 12),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CircleAvatar(
                    radius: 2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "(${model.type.sublist(1).join(" ")})",
                    style: TextStyle(color: Theme.of(context).hintColor, fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 32,
        )
      ],
    );
  }
}
