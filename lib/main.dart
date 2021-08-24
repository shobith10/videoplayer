import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_example/page/basics_page.dart';

import 'package:video_example/settings.dart';
import 'package:video_example/theme_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Video Player',
          themeMode: ThemeMode.system,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          home: MainPage(),
        );
      }
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
    bottomNavigationBar: buildBottomBar(),
    body: buildPages(),
  );

  Widget buildBottomBar() {
    final style = TextStyle(color: Colors.white);

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.white,),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.white,),
          title: Text('Profile'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.white,),
          title: Text('Settings'),
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return BasicsPage();
      case 1:
        return profilepage();
    //return OrientationPage();
      case 2:
        return SettingPage();
      default:
        return BasicsPage();
    }
  }

  profilepage(){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Profile',
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
                Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.attach_money,
                        color: Colors.white,
                        size: 30,
                      ),
                      backgroundColor: Colors.blue,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                      onChanged: (value) {
                      },
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'name',
                        hintStyle:
                        TextStyle(color: Colors.white, fontSize: 16.0),
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                      onChanged: (value) {
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "EMAIL",
                        hintStyle:
                        TextStyle(color: Colors.white, fontSize: 16.0),
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                      onChanged: (value) {
                      },
                      keyboardType: TextInputType.datetime,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "DD/MM/YYYY",
                        hintStyle:
                        TextStyle(color: Colors.white, fontSize: 16.0),
                      )
                  ),
                ),
              ]
          )
      ),
    );
  }

}
