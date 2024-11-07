import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/assert.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Hotel View"),
              background: Image.asset(
                Assert.hotel1,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
                title: Text("Widget ${index + 1}"), tileColor: Colors.green);
          }, childCount: 20))
        ],
      ),
    );
  }
}
