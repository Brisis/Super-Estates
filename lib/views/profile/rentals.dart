import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';
import 'package:seai/views/estate.dart';
import 'package:seai/widgets/general/estate_amenities.dart';

class RentalsView extends StatelessWidget {
  const RentalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
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
            "My Rentals",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kBlackColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: EstateCard(
                image: "assets/images/apart1.jpg",
                name: "360ADR Chelsea Loft Drive!",
              ),
            );
          },
        ),
      ),
    );
  }
}

class EstateCard extends StatelessWidget {
  final String image;
  final String name;
  const EstateCard({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: kGreyColor, width: 0.6),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(routeTransition(const EstateView()));
            },
            child: Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(routeTransition(const EstateView()));
                  },
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    EstateAmenitiesItem(
                      name: "4 Beds",
                      icon: Icons.bed,
                    ),
                    EstateAmenitiesItem(
                      name: "Bath",
                      icon: Icons.shower,
                    ),
                    EstateAmenitiesItem(
                      name: "Saved",
                      icon: CupertinoIcons.heart_fill,
                      iconColor: kDarkColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Expires: 02/09/2023",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
