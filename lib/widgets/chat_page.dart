import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with your actual chat message count
                itemBuilder: (context, index) {
                  return ChatMessage(
                    text: 'This is a sample chat message',
                    isSender: index % 2 == 0,
                  );
                },
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Align items with equal space between them
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      labelText: 'Type a message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    String messageText =
                        _messageController.text.trim(); // Get the message text
                    if (messageText.isNotEmpty) {
                      // Check if the message is not empty
                      // You can perform actions here like sending the message to a server, adding to a list, etc.
                      print('Sending message: $messageText');

                      // Clear the text field after sending the message
                      _messageController.clear();
                    } else {
                      // Handle empty message scenario (optional)
                      print('Cannot send an empty message.');
                    }
                  },
                  child: Text('Send'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isSender;
  ChatMessage({required this.text, required this.isSender});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSender
                  ? Color.fromARGB(255, 51, 129, 62)
                  : Color.fromARGB(255, 208, 208, 208),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
