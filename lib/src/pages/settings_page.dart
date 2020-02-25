import 'package:flutter/material.dart';
import 'package:user_preferences/src/widgets/menu_widgets.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _secondaryColor = false;
  int _gender = 1;
  String _name = 'Pedro';

  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: _name);
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
            onChanged: (value) {
              setState(() {
                _secondaryColor = value;
              });
            },
          ),
          RadioListTile(
            title: Text('Masculino'),
            value: 1,
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value;
              });
              
            }
          ),
          RadioListTile(
            title: Text('Femenino'),
            value: 2,
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value;
              });
            }
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
              onChanged: (value) {
                
              },
            ),
          )
        ],
      )
    );
  }
}