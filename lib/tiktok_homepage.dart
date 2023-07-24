import 'package:flutter/material.dart';
import 'package:homeapp/pages_tiktok/SearchTikTok.dart';
import 'package:homeapp/pages_tiktok/accountTikTok.dart';
import 'package:homeapp/pages_tiktok/addTikTok.dart';
import 'package:homeapp/pages_tiktok/homeTikTok.dart';
import 'package:homeapp/pages_tiktok/inboxTikTok.dart';

class TikTokHomePage extends StatefulWidget {
  const TikTokHomePage({super.key});

  @override
  State<TikTokHomePage> createState() => _TikTokHomePage();
}

class _TikTokHomePage extends State<TikTokHomePage> {
  final List<Widget> _children = [
    UserHomeTikTok(),
    UserSearchTikTok(),
    UserAddTikTok(),
    UserInboxTikTok(),
    UserAccountTikTok(),
  ];
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.inbox_outlined), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
