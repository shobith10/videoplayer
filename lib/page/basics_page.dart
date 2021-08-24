import 'package:flutter/material.dart';
import 'package:video_example/widget/other/tabbar_widget.dart';
import 'package:video_example/widget/basics/file_player_widget.dart';
import 'package:video_example/widget/basics/network_player_widget.dart';

class BasicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => TabBarWidget(
    tabs: [
      Tab(icon: Icon(Icons.attach_file), text: 'File'),
      Tab(icon: Icon(Icons.ondemand_video_outlined), text: 'Network'),
    ],
    children: [
      buildFiles(),
      buildNetwork(),
    ],
  );

  Widget buildFiles() => FilePlayerWidget();

  Widget buildNetwork() => NetworkPlayerWidget();
}