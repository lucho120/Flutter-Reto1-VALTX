import 'package:flutter/material.dart';
import 'package:app_reto1_valtx/views/home/widgets/content.dart';

import 'package:app_reto1_valtx/views/home/widgets/app_bottom_navigation.dart';
import 'package:app_reto1_valtx/views/home/widgets/header_bar.dart';
import 'widgets/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [HeaderBar(), Header(), Content()],
      ),
      bottomNavigationBar: const AppBottomNavigation(),
    );
  }
}
