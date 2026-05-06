import 'package:flutter/material.dart';
import '../models/workshop.dart';

class WorkshopCard extends StatelessWidget {
  final Workshop workshop;

  const WorkshopCard({super.key, required this.workshop});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(workshop.title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(children: [
              const Icon(Icons.calendar_today, size: 16),
              const SizedBox(width: 8),
              Text(workshop.date),
            ]),
            Row(children: [
              const Icon(Icons.location_on, size: 16),
              const SizedBox(width: 8),
              Text(workshop.location),
            ]),
            Row(children: [
              const Icon(Icons.people, size: 16),
              const SizedBox(width: 8),
              Text("Kuota: ${workshop.quota}"),
            ]),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Daftar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
