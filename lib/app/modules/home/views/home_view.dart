import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:vakansi_bali/app/data/models/destination_request.dart';
// import 'package:vakansi_bali/app/view/components/basic_button.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Destination List"),
      ),
      body: _destinationListView(context)
    );
  }

  Widget _destinationListView(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.explore,
            color: Colors.blue,
            size: 40.0,
          ),
          title: Text('Pantai Kuta'),
          subtitle: Text('Pantai terkenal di Bali'),
          onTap: () => Get.offAndToNamed(Routes.DETAILS),
        ),
        ListTile(
          leading: Icon(
            Icons.explore,
            color: Colors.blue,
            size: 40.0,
          ),
          title: Text('Garuda Wisnukencana'),
          subtitle: Text('Taman patung di Bali'),
          onTap: () => Get.offAndToNamed(Routes.DETAILS),
        ),
        ListTile(
          leading: Icon(
            Icons.explore,
            color: Colors.blue,
            size: 40.0,
          ),
          title: Text('Pantai Pandawa'),
          subtitle: Text('Pantai terkenal di Bali selatan'),
          onTap: () => Get.offAndToNamed(Routes.DETAILS),
        ),
        ListTile(
          leading: Icon(
            Icons.explore,
            color: Colors.blue,
            size: 40.0,
          ),
          title: Text('Nusa Penida'),
          subtitle: Text('Pulau terkenal di Bali'),
          onTap: () => Get.offAndToNamed(Routes.DETAILS),
        ),
        ListTile(
          leading: Icon(
            Icons.explore,
            color: Colors.blue,
            size: 40.0,
          ),
          title: Text('Pantai Kuta'),
          subtitle: Text('Pantai terkenal di Bali'),
          onTap: () => Get.offAndToNamed(Routes.DETAILS),
        ),
      ],
    );
  }
}
