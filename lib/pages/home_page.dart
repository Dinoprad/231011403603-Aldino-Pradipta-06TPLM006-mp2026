import 'package:flutter/material.dart';
import '../models/workshop.dart';
import '../widgets/workshop_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final workshops = [
      Workshop(title: "Flutter Basic", date: "10 Mei 2026", location: "Lab A", quota: 30),
      Workshop(title: "UI/UX Design", date: "12 Mei 2026", location: "Ruang Seminar", quota: 25),
      Workshop(title: "Machine Learning", date: "15 Mei 2026", location: "Online", quota: 50),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Workshop Kampus")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: workshops.length,
          itemBuilder: (context, index) {
            return WorkshopCard(workshop: workshops[index]);
          },
        ),
      ),
    );
  }
}
