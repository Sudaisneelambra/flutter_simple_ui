import 'package:exp_ui/data/notifier.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ValueListenableBuilder(
        valueListenable: page,
        builder: (context, value, child) {
          return Column(
            children: [
              SizedBox(height: 80),
              ListTile(
                title: const Text('home'),
                leading: const Icon(Icons.home),
                onTap: () {
                  page.value = 0;
                },
              ),
              ListTile(
                title: const Text('Profile'),
                leading: const Icon(Icons.person),
                onTap: () {
                  page.value = 1;
                },
              ),
              ListTile(
                title: const Text('Wallet'),
                leading: const Icon(Icons.account_balance_wallet),
                onTap: () {
                  page.value = 2;
                },
              ),
              ListTile(
                title: const Text('Help'),
                leading: const Icon(Icons.help),
                onTap: () {
                  page.value = 3;
                },
              ),
              ListTile(
                title: const Text('Settings'),
                leading: const Icon(Icons.settings),
                onTap: () {
                  page.value = 4;
                },
              ),
              Spacer(),
              ListTile(
                title: const Text('Logout'),
                leading: const Icon(Icons.logout),
                contentPadding: EdgeInsets.only(bottom: 50, left: 20),
                onTap: () {},
              ),
            ],
          );
        },
      ),
    );
  }
}
