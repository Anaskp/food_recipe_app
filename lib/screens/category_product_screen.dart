import 'package:flutter/material.dart';
import 'package:food_reciepe/widgets/widgets.dart';

class CategoryProductScreen extends StatelessWidget {
  final String name;

  const CategoryProductScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff042628),
        centerTitle: true,
        title: const Text('Food Recipe'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                'https://www.themealdb.com/images/category/$name.png',
                fit: BoxFit.contain,
                width: size.width,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                name,
                style: const TextStyle(
                  color: Color(0xff042628),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ItemList(
              name: name,
            ),
          ],
        ),
      ),
    );
  }
}
