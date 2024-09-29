import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer_title.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/pages/settings_page.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 70,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //home list title
          myDrawerTitle(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),
          //setting list title
          myDrawerTitle(
            text: "S E T T I N G",
            icon: Icons.settings,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => settingsPage()
              ),
            ),
          ),

          const Spacer(),

          //logout list title
          myDrawerTitle(text: "L O G O U T",
              icon: Icons.logout,
              onTap: () {}
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
