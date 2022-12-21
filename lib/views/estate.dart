import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';
import 'package:seai/widgets/general/estate_amenities.dart';

class EstateView extends StatefulWidget {
  const EstateView({super.key});

  @override
  State<EstateView> createState() => _EstateViewState();
}

class _EstateViewState extends State<EstateView> {
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.heart,
              size: 30,
              color: kBlackColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 30.0),
        child: ListView(
          children: [
            SizedBox(
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const SizedBox(
                    height: 300,
                    width: 320,
                    child: Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: EstateGallery(
                        image: "assets/images/apart1.jpg",
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "360ADR Chelsea Loft Drive!",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "\$280  /m",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const EstateAmenitiesItem(
              name: "Westlea, Harare, Zimbabwe",
              icon: Icons.location_pin,
              iconColor: kDarkColor,
            ),
            const Divider(
              color: kGreyColor,
              thickness: 0.5,
            ),
            const Text(
              "Amenities",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                EstateAmenitiesItem(
                  name: "4 Beds",
                  icon: Icons.bed,
                ),
                SizedBox(
                  width: 10,
                ),
                EstateAmenitiesItem(
                  name: "Bath",
                  icon: Icons.shower,
                ),
                SizedBox(
                  width: 10,
                ),
                EstateAmenitiesItem(
                  name: "1.045 ft",
                  icon: Icons.line_style,
                ),
              ],
            ),
            const Divider(
              color: kGreyColor,
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Tennant Reviews",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: kSecondaryColor,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const TennantReview(),
            const TennantReview(),
            const TennantReview(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: const Text(
                  "Book Viewing",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EstateGallery extends StatelessWidget {
  final String image;
  const EstateGallery({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class TennantReview extends StatelessWidget {
  const TennantReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.jpg"),
              maxRadius: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Benevolent Mudzinganyama",
                    style: TextStyle(
                      fontSize: 15,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "02/09/2022",
                    style: const TextStyle(
                      fontSize: 13,
                      color: kFadedBlack,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Comment goes like this; The quick brown fox jumps over the little fence.",
          style: TextStyle(
            fontSize: 14,
            color: kFadedBlack,
          ),
        ),
        const Divider(
          color: kGreyColor,
          thickness: 0.2,
        ),
      ],
    );
  }
}
