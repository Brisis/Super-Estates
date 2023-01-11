import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';
import 'package:seai/views/category.dart';
import 'package:seai/views/profile/profile.dart';
import 'package:seai/widgets/drawer_item.dart';
import 'package:seai/widgets/general/estate_amenities.dart';
import 'package:seai/widgets/general/estate_card.dart';
import 'package:seai/widgets/general/filter_search.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          icon: const Icon(
            Icons.menu,
            color: kDarkColor,
            size: 30,
          ),
        ),
        title: const Center(
          child: Text(
            "Super Estate Agency",
            style: TextStyle(
              fontSize: kLargeTextSize,
              fontWeight: FontWeight.bold,
              color: kBlackColor,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(routeTransition(const ProfileView()));
            },
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  border: Border.all(color: kPrimaryColor, width: 1.5),
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/user.jpg"),
                  )),
            ),
          ),
        ],
      ),
      drawer: const DrawerItem(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 30.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: Center(
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 8),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          isDense: true,
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search city or area',
                          hintStyle: const TextStyle(fontSize: kMediumTextSize),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const Dialog(
                          insetPadding: EdgeInsets.zero,
                          child: FilterSearchDialog(),
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.filter_alt_outlined,
                    color: kPrimaryColor,
                    size: 35,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Expanded(
                  child: CustomEstateCategory(
                    title: "House",
                    icon: Icons.house,
                    items: 220,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomEstateCategory(
                    title: "Apartment",
                    icon: Icons.apartment,
                    items: 190,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Expanded(
                  child: CustomEstateCategory(
                    title: "Room",
                    icon: Icons.window,
                    items: 300,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomEstateCategory(
                    title: "Cottage",
                    icon: Icons.cottage,
                    items: 312,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Featured Listings",
                  style: TextStyle(
                    fontSize: kHeaderTextSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      fontSize: kMediumTextSize,
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
            const SizedBox(height: 20),
            const Text(
              "Recommended",
              style: TextStyle(
                fontSize: kHeaderTextSize,
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
          ],
        ),
      ),
    );
  }
}

class CustomEstateCategory extends StatelessWidget {
  final String title;
  final IconData icon;
  final int items;
  const CustomEstateCategory({
    super.key,
    required this.title,
    required this.icon,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(routeTransition(const CategoryView()));
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(0.3),
          border: Border.all(color: Colors.grey.shade200, width: 1.0),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: kSecondaryColor,
              size: 30,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: kMediumTextSize,
                    fontWeight: FontWeight.w500,
                    color: kBlackColor,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "$items items",
                  style: const TextStyle(
                    fontSize: kSmallerTextSize,
                    fontWeight: FontWeight.w500,
                    color: kFadedBlack,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
