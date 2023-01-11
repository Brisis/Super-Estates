import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';
import 'package:seai/views/profile/favourites.dart';
import 'package:seai/views/profile/rentals.dart';
import 'package:seai/widgets/general/settings_item.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: kWhiteColor,
          ),
        ),
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontSize: kHeaderTextSize,
            fontWeight: FontWeight.bold,
            color: kWhiteColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/user.jpg"),
                maxRadius: 50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Benevolent Mudzinganyama",
                  style: TextStyle(
                    fontSize: kMediumTextSize,
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Landlord",
                  style: TextStyle(
                    fontSize: kSmallerTextSize,
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SettingsItem(
              title: "Edit Profile",
              icon: Icons.person_outline,
              onTap: () {},
            ),
            const Divider(
              color: kGreyColor,
              thickness: 0.1,
            ),
            SettingsItem(
              title: "My Rentals",
              icon: Icons.other_houses_outlined,
              onTap: () {
                Navigator.of(context)
                    .push(routeTransition(const RentalsView()));
              },
            ),
            const Divider(
              color: kGreyColor,
              thickness: 0.1,
            ),
            SettingsItem(
              title: "Favourites",
              icon: CupertinoIcons.heart,
              onTap: () {
                Navigator.of(context)
                    .push(routeTransition(const FavouritesView()));
              },
            ),
            const Divider(
              color: kGreyColor,
              thickness: 0.1,
            ),
            SettingsItem(
              title: "Tell a Friend",
              icon: CupertinoIcons.reply,
              onTap: () {},
            ),
            const Divider(
              color: kGreyColor,
              thickness: 0.1,
            ),
            SettingsItem(
              title: "Settings",
              icon: Icons.settings_outlined,
              onTap: () {},
            ),
            const Divider(
              color: kGreyColor,
              thickness: 0.2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(routeTransition(const LoginScreen()));
                },
                label: const Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: kMediumTextSize,
                    color: kWhiteColor,
                  ),
                ),
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  elevation: MaterialStateProperty.all(0),
                ),
                icon: const Icon(
                  Icons.logout,
                  color: kWhiteColor,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Super Estates @2022",
                style: TextStyle(
                  fontSize: kSmallerTextSize,
                  color: kWhiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
