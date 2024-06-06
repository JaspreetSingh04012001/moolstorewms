import 'package:flutter/material.dart';
import 'package:moolwmsstore/Dock%20Supervisor/View/dmsDrawer.dart';

class DMSDashboard extends StatelessWidget {
  const DMSDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      drawer: const DmsDrawer(),
    );
  }
}
