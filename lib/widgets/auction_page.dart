import 'package:flutter/material.dart';

class AuctionPage extends StatefulWidget {
  const AuctionPage({super.key});
  @override
  State<AuctionPage> createState() => _AuctionPageState();
}

class _AuctionPageState extends State<AuctionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10, // Replace with your actual auction list length
        itemBuilder: (context, index) {
          return AuctionCard(
            title: 'Auction ${index + 1}',
            description: 'This is a sample auction description',
            price: '\$100.00',
            bidderCount: 5,
            timeLeft: '1 hour 30 minutes',
            imageUrl: 'https://via.placeholder.com/150', // Add this line
          );
        },
      ),
    );
  }
}

class AuctionCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final int bidderCount;
  final String timeLeft;
  final String imageUrl;
  AuctionCard({
    required this.title,
    required this.description,
    required this.price,
    required this.bidderCount,
    required this.timeLeft,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100, // Set the width of the image column
              child: Image.network(imageUrl),
            ),
            SizedBox(width: 16), // Add some space between the columns
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(description),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(price),
                      Text('Bidder count: $bidderCount'),
                    ],
                  ),
                  Text(timeLeft),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
