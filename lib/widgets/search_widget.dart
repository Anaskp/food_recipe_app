import 'package:flutter/material.dart';
import 'package:food_reciepe/screens/screens.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      height: size.height / 4,
      width: size.width,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              'https://images.pexels.com/photos/3026808/pexels-photo-3026808.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              fit: BoxFit.cover,
              width: size.width,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
                width: size.width - 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onSubmitted: ((value) => searchFun(context, value)),
                          cursorColor: const Color(0xff042628),
                          controller: searchController,
                          decoration: const InputDecoration(
                            hintText: 'Search recipe',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              left: 10,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () =>
                            searchFun(context, searchController.text),
                        icon: const Icon(
                          Icons.search,
                          color: Color(
                            0xff042628,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }

  void searchFun(context, text) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchResultScreen(name: text),
      ),
    );
  }
}
