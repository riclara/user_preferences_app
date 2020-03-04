import 'package:flutter/material.dart';
import 'package:user_preferences/src/share_prefs/user_preferences.dart';
import 'package:user_preferences/src/widgets/menu_widgets.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final prefs = UserPreferences();

  bool _secondaryColor;
  int _gender;
  String _name;

  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _gender = prefs.gender;
    _secondaryColor = prefs.secondaryColor;
    _name = prefs.name;
    _textController = TextEditingController(text: _name);
  }

  _setSelectedRadio (int value) async {
    prefs.gender = value;
    _gender = value;
    setState(() { });
  }

  _setSelectedSwitch (bool value) async {
    prefs.secondaryColor = value;
    _secondaryColor = value;
    setState(() { });
  }

  _setInputText (String value) async {
    prefs.name = value;
    _name = value;
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings')
      ),
      drawer: MenuWidgets(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Setting', style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),),
          ),
          Divider(),
          SwitchListTile(
            value: _secondaryColor,
            title: Text('Color secundario'),
            onChanged: _setSelectedSwitch,
          ),
          RadioListTile(
            title: Text('Masculino'),
            value: 1,
            groupValue: _gender,
            onChanged: _setSelectedRadio
          ),
          RadioListTile(
            title: Text('Femenino'),
            value: 2,
            groupValue: _gender,
            onChanged: _setSelectedRadio
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona'
              ),
              onChanged: _setInputText,
            ),
          )
        ],
      )
    );
  }
}