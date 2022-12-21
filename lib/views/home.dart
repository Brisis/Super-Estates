import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _searchController = TextEditingController();
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: kDarkColor,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
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
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 15,
                      color: kGreyColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const SizedBox(
                      height: 270,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: EstateListingCard(
                          image: "assets/images/apart1.jpg",
                          imageHeight: 150.0,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Recommended",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            EstateListingCard(
              image: "assets/images/apart2.jpg",
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
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

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
          Container(
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
                    onPressed: () {},
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
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "\$28.5k",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "4.2",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
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
              const Expanded(
                child: Text(
                  "360ADR Chelsea Loft Drive!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: kGreyColor, width: 1.0),
                  borderRadius: BorderRadius.circular(15),
                  color: kVerifiyColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.done_rounded,
                    color: Colors.white,
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

class EstateAmenitiesItem extends StatelessWidget {
  final String name;
  final IconData icon;
  const EstateAmenitiesItem({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              border: Border.all(color: kGreyColor, width: 1.0),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Icon(
              icon,
              color: kSecondaryColor,
            ),
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
