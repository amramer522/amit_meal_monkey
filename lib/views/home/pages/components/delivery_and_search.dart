import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DeliveryAndSearch extends StatelessWidget {
  const DeliveryAndSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivering to",
            style: TextStyle(fontSize: 11, color: Theme.of(context).hintColor),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Current Location",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 37,
              ),
              SvgPicture.asset("assets/icons/down.svg")
            ],
          ),
          SizedBox(
            height: 34,
          ),
          TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF2F2F2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                labelText: "Search food",
                prefixIcon: Padding(
                  padding: EdgeInsetsDirectional.only(start: 16),
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                    fit: BoxFit.scaleDown,
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
