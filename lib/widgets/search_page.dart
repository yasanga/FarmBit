import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              // Add Row widget to align search bar and button horizontally
              children: [
                Expanded(
                  // Expanded widget to allow the TextFormField to take up remaining space
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      labelText: 'Search',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                SizedBox(
                    width:
                        10), // Add some spacing between the search bar and button
                ElevatedButton(
                  onPressed: () {
                    // Search logic here
                    print('Searching for ${_searchController.text}');
                  },
                  child: Text('Search'),
                ),
              ],
            ),
            SizedBox(height: 20),
            SearchResultList(), // Replace with your search result list widget
          ],
        ),
      ),
    );
  }
}

class SearchResultList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with your actual search result count
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Result $index'),
          subtitle: Text('This is a sample search result'),
        );
      },
    );
  }
}
