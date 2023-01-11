import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';
import 'package:seai/views/estate.dart';
import 'package:seai/widgets/general/estate_amenities.dart';

class EstateListingCard extends StatelessWidget {
  final String image;
  final double imageHeight;
  const EstateListingCard({
    super.key,
    required this.image,
    required this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(routeTransition(const EstateView()));
            },
            child: Container(
              height: imageHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(routeTransition(const EstateView()));
                      },
                      icon: Icon(
                        CupertinoIcons.heart,
                        color: Colors.white,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "\$280/month",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "4.2",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(routeTransition(const EstateView()));
                  },
                  child: const Text(
                    "360ADR Chelsea Loft Drive!",
                    style: TextStyle(
                      fontSize: kMediumTextSize,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: kGreyColor, width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                  color: kVerifiyColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.done_rounded,
                    color: Colors.white,
                    size: 15.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
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
                name: "1.045 ft",
                icon: Icons.line_style,
              ),
            ],
          )
        ],
      ),
    );
  }
}
