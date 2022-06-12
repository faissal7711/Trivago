// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class EmpatyPaymentScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          primary: true, centerTitle: true, title: const Text("Payment Screen")),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
