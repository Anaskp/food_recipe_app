import 'package:flutter/material.dart';

import 'package:food_reciepe/widgets/item_list.dart';

class SearchResultScreen extends StatelessWidget {
  final String name;

  const SearchResultScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff042628),
        centerTitle: true,
        title: const Text('Food Recipe'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You searched for $name',
              style: const TextStyle(
                color: Color(0xff042628),
                fontSize: 22,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ItemList(name: name),
          ],
        ),
      ),
    );
  }
}
