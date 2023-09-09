import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WallateScreen extends StatefulWidget {
  const WallateScreen({super.key});

  @override
  State<WallateScreen> createState() => _WallateScreenState();
}

class _WallateScreenState extends State<WallateScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Wallate'),
    );
  }
}
