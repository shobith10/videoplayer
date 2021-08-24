import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_example/theme_provider.dart';
import 'package:video_example/widget/basics/changebuttonwidget.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Card(
              elevation: 8.0,
              child: ListTile(
                leading: Text('Dark Theme'),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ChangeThemebuttonwidget(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Card(
              elevation: 8.0,
              child: ListTile(
                leading: Text('Log Out'),
                //onTap: (),
              ),
            ),
          ],
        ),
      ),
    );
  }
}