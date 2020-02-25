import 'package:flutter/material.dart';
import 'package:user_preferences/src/widgets/menu_widgets.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Preferences')
      ),
      drawer: MenuWidgets(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Secondary Color'),
          Divider(),
          Text('Gender'),
          Divider(),
          Text('User Name'),
          Divider(),
        ],
      ),
    );
  }
}