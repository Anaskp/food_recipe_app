import 'package:flutter/material.dart';
import 'package:food_reciepe/model/category_model.dart';
import 'package:food_reciepe/screens/category_product_screen.dart';

import '../service/services.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Services services = Services();
    return FutureBuilder(
      future: services.fetchCategory(),
      builder:
          (BuildContext context, AsyncSnapshot<List<CategoryModel>> snapshot) {
        if (snapshot.hasData) {
          return GridView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data!.length,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => CategoryProductScreen(
                          name: snapshot.data![index].catname)),
                    ),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 3,
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            snapshot.data![index].catImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          snapshot.data![index].catname,
                          style: const TextStyle(
                            color: Color(0xff042628),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }

        if (snapshot.hasError) {
          return const Center(
            child: Text('oops'),
          );
        }

        return const Center(
          child: CircularProgressIndicator(
            color: Color(0xff042628),
          ),
        );
      },
    );
  }
}
