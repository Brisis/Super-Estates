import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';
import 'package:seai/widgets/general/estate_card.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: kBlackColor,
          ),
        ),
        title: const Center(
          child: Text(
            "Category: Apartments",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: ListView(
          children: [
            const Text(
              "128 Properties",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Nearest",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 15,
                      color: kGreyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const SizedBox(
                    height: 270,
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: EstateListingCard(
                        image: "assets/images/apart1.jpg",
                        imageHeight: 150.0,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Around Me",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            const EstateListingCard(
              image: "assets/images/apart2.jpg",
              imageHeight: 150.0,
            ),
            const SizedBox(height: 20),
            const EstateListingCard(
              image: "assets/images/apart1.jpg",
              imageHeight: 150.0,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
