
import 'package:exp_ui/data/notifier.dart';
import 'package:exp_ui/views/pages/help.dart';
import 'package:exp_ui/views/pages/home_page.dart';
import 'package:exp_ui/views/pages/profile.dart';
import 'package:exp_ui/views/pages/settings.dart';
import 'package:exp_ui/views/pages/wallet.dart';
import 'package:exp_ui/views/widgets/drawer.dart';
import 'package:flutter/material.dart';

  List <Widget> lists =[
      HomePage(),
      ProfileWidget(),
      WalletWidget(),
      HelpWidget(),
      SettingsWidget()
  ];
class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pukki pakki poko'),
        actionsPadding: EdgeInsets.only(right: 20),
        actions: [
          ValueListenableBuilder(
            valueListenable: darkMode, 
            builder: (context, value, child) {
              return IconButton(
                        onPressed: () {
                          darkMode.value = !value ;
                        },
                        icon: Icon(value ? Icons.light_mode : Icons.dark_mode)
                     );
            },
          )
        ],
      ),
      drawer: DrawerWidget(),
      body: ValueListenableBuilder(
        valueListenable: page, 
        builder: (context, value, child) {
          return Center(
            child: lists[value]
          );
        },
      )
    );
  }
}