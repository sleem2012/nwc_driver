import 'package:flutter/material.dart';
import 'widget/request_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(height: 5,);
      },
      itemBuilder: (context, index) {
        return const RequestTile();
      },
      itemCount: 5,
    );
  }
}
