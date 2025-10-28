import 'package:flutter/material.dart';
import 'stat_item.dart';

/// Widget that displays user statistics in a row
class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        StatItem(label: 'Publicaciones', value: '536'),
        StatItem(label: 'Seguidores', value: '5790'),
        StatItem(label: 'Seguidos', value: '10'),
      ],
    );
  }
}
