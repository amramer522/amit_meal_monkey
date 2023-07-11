import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/views/home/pages/home.dart';
import 'package:meal_monkey/views/home/pages/menu.dart';
import 'package:meal_monkey/views/home/pages/more.dart';
import 'package:meal_monkey/views/home/pages/offers.dart';
import 'package:meal_monkey/views/home/pages/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> pages = [
    MenuPage(),
    OffersPage(),
    HomePage(),
    ProfilePage(),
    MorePage(),
  ];
  List<String> titles = [
    "Menu",
    "Latest Offers",
    "Good morning Akila!",
    "Profile",
    "More"
  ];

  int currentPage = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentPage]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/cart.svg"),
          ),
        ],
      ),
      body: pages[currentPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          currentPage = 2;
          setState(() {});
        },
        backgroundColor: currentPage == 2?Theme.of(context).primaryColor:const Color(0xffB6B7B7),
        child: SvgPicture.asset("assets/icons/home.svg"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.only(top: 10),
        notchMargin: 10,
        child: Row(
          children: [
            _ItemBottom(
              isSelected: currentPage == 0,
              image: "menu",
              title: "Menu",
              onTap: () {
                currentPage = 0;
                setState(() {});
              },
            ),
            _ItemBottom(
              isSelected: currentPage == 1,
              image: "offers",
              title: "Offers",
              onTap: () {
                currentPage = 1;
                setState(() {});
              },
            ),
            const Spacer(),
            _ItemBottom(
                isSelected: currentPage == 3,
                image: "profile",
                title: "Profile",
                onTap: () {
                  currentPage = 3;
                  setState(() {});
                }),
            _ItemBottom(
              isSelected: currentPage == 4,
              image: "more",
              title: "More",
              onTap: () {
                currentPage = 4;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemBottom extends StatelessWidget {
  final String title, image;
  final VoidCallback onTap;
  final bool isSelected;

  const _ItemBottom({Key? key, required this.title, required this.image, required this.onTap, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                "assets/icons/$image.svg",
                color: isSelected ? Theme.of(context).primaryColor : null,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                title,
                style: TextStyle(color: isSelected ? Theme.of(context).primaryColor : null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
