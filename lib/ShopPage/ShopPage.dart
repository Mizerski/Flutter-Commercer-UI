// ignore_for_file: file_names
import 'package:e_commerce/Data/Content.dart';
import 'package:e_commerce/ShopPage/components/Categories.dart';
import 'package:e_commerce/ShopPage/components/CategoryTitle.dart';
import 'package:e_commerce/ShopPage/components/ShopWall.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ShopWall(),
          CategoryTitle(
            title: "Categories",
            buttonText: "All",
          ),
          Categoris(
            height: 170,
            width: 140,
            categories: Content.categories,
            categoriesTitle: Content.categoriesTitle,
            image: "assets/images/category",
          ),
          SizedBox(height: 30),
          CategoryTitle(
            title: "Best Selling by Categories",
            buttonText: "All",
          ),
          Categoris(
            height: 180,
            width: 210,
            categories: Content.bestSell,
            categoriesTitle: Content.bestSellTitle,
            image: "assets/images/bestsell",
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
