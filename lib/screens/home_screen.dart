import 'package:flutter/material.dart';
import 'package:login_signup/widgets/add_bid_page.dart';
import 'package:login_signup/widgets/auction_page.dart';
import 'package:login_signup/widgets/chat_page.dart';
import 'package:login_signup/widgets/payment_page.dart';
import 'package:login_signup/widgets/profile_page.dart';
import 'package:login_signup/widgets/search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const AuctionPage(), // Replace with your auction page widget
    ProfilePage(), // Replace with your profile page widget
    AddBidPage(), // Replace with your add bid page widget
    SearchPage(), // Replace with your search page widget
    ChatPage(), // Replace with your chat page widget
    PaymentPage(), // Replace with your payment page widget
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auction App'),
        backgroundColor: const Color.fromARGB(255, 51, 129, 62),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Auction',
            backgroundColor: Color.fromARGB(255, 51, 129, 62),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 51, 129, 62),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Bid',
            backgroundColor: Color.fromARGB(255, 51, 129, 62),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color.fromARGB(255, 51, 129, 62),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Color.fromARGB(255, 51, 129, 62),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payment',
            backgroundColor: Color.fromARGB(255, 51, 129, 62),
          ),
        ],
      ),
    );
  }
}
