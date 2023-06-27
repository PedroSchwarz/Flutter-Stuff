import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(title: const Text('Details home page')),
      child: const Text('details'),
    );
  }
}
