import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';
import 'package:seai/views/profile/profile.dart';
import 'package:seai/widgets/drawer_item.dart';
import 'package:seai/widgets/general/estate_amenities.dart';
import 'package:seai/widgets/general/estate_card.dart';

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
            const Text(
              "Super Estate Agency",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: Center(
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            isDense: true,
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search city or area'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomEstatePill(
                  title: "House",
                  icon: Icons.house,
                ),
                CustomEstatePill(
                  title: "Apartment",
                  icon: Icons.apartment,
                ),
                CustomEstatePill(
                  title: "Room",
                  icon: Icons.window,
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
            const SizedBox(height: 20),
            const Text(
              "Recommended",
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
          ],
        ),
      ),
    );
  }
}

class CustomEstatePill extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomEstatePill({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200, width: 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: kGreyColor,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
