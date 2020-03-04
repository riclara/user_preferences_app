import 'package:flutter/material.dart';
import 'package:user_preferences/src/share_prefs/user_preferences.dart';
import 'package:user_preferences/src/widgets/menu_widgets.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = UserPreferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: prefs.secondaryColor ? Colors.teal : Colors.blue,
        title: Text('User Preferences')
      ),
      drawer: MenuWidgets(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Secondary Color'),
          Divider(),
          Text('Gender ${ prefs.gender }'),
          Divider(),
          Text('User Name'),
          Divider(),
        ],
      ),
    );
  }
}