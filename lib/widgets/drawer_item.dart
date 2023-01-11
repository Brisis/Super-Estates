import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seai/helpers/constants.dart';
import 'package:seai/views/explore.dart';
import 'package:seai/views/profile/favourites.dart';
import 'package:seai/views/profile/profile.dart';
import 'package:seai/views/profile/rentals.dart';
import 'package:seai/widgets/general/settings_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(routeTransition(const ProfileView()));
                },
                child: const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user.jpg"),
                    maxRadius: 50,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(routeTransition(const ProfileView()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Benevolent Mudzinganyama",
                      style: const TextStyle(
                        fontSize: kMediumTextSize,
                        color: kWhiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Landlord",
                      style: const TextStyle(
                        fontSize: kSmallerTextSize,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SettingsItem(
                title: "Explore",
                icon: Icons.search,
                onTap: () {
                  Navigator.of(context)
                      .push(routeTransition(const ExploreEstatesView()));
                },
              ),
              const Divider(
                color: kGreyColor,
                thickness: 0.1,
              ),
              SettingsItem(
                title: "Notification",
                icon: Icons.notifications_outlined,
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
                title: "Customer Support",
                icon: Icons.call,
                onTap: () {},
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
      ),
    );
  }
}
