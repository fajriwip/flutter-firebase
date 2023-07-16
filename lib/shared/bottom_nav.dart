import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatelessWidget {
  final List<Map<String, dynamic>> navBarItem = [
    {
      'label': 'topics',
      'icondata': FontAwesomeIcons.graduationCap,
      'route': '/topics',
    },
    {
      'label': 'about',
      'icondata': FontAwesomeIcons.bolt,
      'route': '/about',
    },
    {
      'label': 'profile',
      'icondata': FontAwesomeIcons.circleUser,
      'route': '/profile',
    },
  ];

  BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: navBarItem.map((e) {
        return BottomNavigationBarItem(
          icon: Icon(
            e['icondata'],
            size: 20,
          ),
          label: e['label'],
        );
      }).toList(),
      onTap: (idx) => Navigator.pushNamed(context, navBarItem[idx]['route']),
    );
  }
}
