import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';

class FilterSearchDialog extends StatelessWidget {
  const FilterSearchDialog({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryOption> categories = const [
      CategoryOption(
        icon: Icons.house,
        title: "House",
      ),
      CategoryOption(
        icon: Icons.apartment,
        title: "Apartment",
      ),
      CategoryOption(
        icon: Icons.window,
        title: "Room",
      ),
      CategoryOption(
        icon: Icons.cottage,
        title: "Cottage",
      ),
    ];

    List<StarRangeItem> ratings = const [
      StarRangeItem(
        title: "NO",
      ),
      StarRangeItem(
        title: "5.0",
      ),
      StarRangeItem(
        title: "4.0",
      ),
      StarRangeItem(
        title: "3.0",
      ),
      StarRangeItem(
        title: "2.0",
      ),
      StarRangeItem(
        title: "1.0",
      ),
    ];

    List<RoomsItem> beds = const [
      RoomsItem(
        title: "Any",
      ),
      RoomsItem(
        title: "1",
      ),
      RoomsItem(
        title: "2",
      ),
      RoomsItem(
        title: "3",
      ),
    ];

    List<RoomsItem> baths = const [
      RoomsItem(
        title: "Any",
      ),
      RoomsItem(
        title: "1",
      ),
      RoomsItem(
        title: "2",
      ),
      RoomsItem(
        title: "3",
      ),
    ];

    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.cancel_rounded,
                    color: kBlackColor,
                  ),
                ),
                const Text(
                  "Filters",
                  style: TextStyle(
                    fontSize: kHeaderTextSize,
                    fontWeight: FontWeight.w600,
                    color: kBlackColor,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: kMediumTextSize,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    const Text(
                      "Category",
                      style: TextStyle(
                        fontSize: kHeaderTextSize,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: CategoryOption(
                                icon: categories[index].icon,
                                title: categories[index].title,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Price Range",
                      style: TextStyle(
                        fontSize: kHeaderTextSize,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const PriceRangeSlider(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Star Range",
                      style: TextStyle(
                        fontSize: kHeaderTextSize,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: ratings.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: StarRangeItem(
                                title: ratings[index].title,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Bedrooms",
                      style: TextStyle(
                        fontSize: kHeaderTextSize,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: beds.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: RoomsItem(
                                title: beds[index].title,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Bathrooms",
                      style: TextStyle(
                        fontSize: kHeaderTextSize,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: baths.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: RoomsItem(
                                title: baths[index].title,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(10.0)),
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Apply Filters",
                        style: TextStyle(
                          fontSize: kLargeTextSize,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryOption extends StatelessWidget {
  final String title;
  final IconData icon;
  const CategoryOption({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(0.3),
          border: Border.all(color: Colors.grey.shade200, width: 1.0),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: kSecondaryColor,
              size: 30,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: kMediumTextSize,
                fontWeight: FontWeight.w500,
                color: kBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StarRangeItem extends StatelessWidget {
  final String title;
  const StarRangeItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(0.3),
          border: Border.all(color: Colors.grey.shade200, width: 1.0),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: Color(0xFFFFD700),
              size: 25,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: kMediumTextSize,
                fontWeight: FontWeight.w500,
                color: kBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoomsItem extends StatelessWidget {
  final String title;
  const RoomsItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 25,
        ),
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(0.3),
          border: Border.all(color: Colors.grey.shade200, width: 1.0),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: kMediumTextSize,
            fontWeight: FontWeight.w500,
            color: kBlackColor,
          ),
        ),
      ),
    );
  }
}

class PriceRangeSlider extends StatefulWidget {
  const PriceRangeSlider({super.key});

  @override
  State<PriceRangeSlider> createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<PriceRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(0, 250);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RangeSlider(
          values: _currentRangeValues,
          max: 1500,
          divisions: 5,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "\$0",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  color: kFadedBlack,
                ),
              ),
              Text(
                "\$1500",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  color: kFadedBlack,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
