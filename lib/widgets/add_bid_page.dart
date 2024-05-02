import 'package:flutter/material.dart';

class AddBidPage extends StatefulWidget {
  @override
  _AddBidPageState createState() => _AddBidPageState();
}

class _AddBidPageState extends State<AddBidPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _bidAmountController = TextEditingController();
  final TextEditingController _startingPriceController =
      TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _amountKgController = TextEditingController();
  final TextEditingController _amountUnitsController = TextEditingController();
  String? _category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: _category,
                onChanged: (value) => setState(() => _category = value),
                decoration: InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a category';
                  }
                  return null;
                },
                items: [
                  'Electronics',
                  'Fashion',
                  'Home & Garden',
// Add more categories as needed
                ]
                    .map((category) => DropdownMenuItem<String>(
                          value: category,
                          child: Text(category),
                        ))
                    .toList(),
              ),
              TextFormField(
                controller: _startingPriceController,
                decoration: InputDecoration(
                  labelText: 'Starting Price',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a starting price';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _amountKgController,
                      decoration: InputDecoration(
                        labelText: 'Amount (kg)',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an amount in units';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              TextFormField(
                controller: _bidAmountController,
                decoration: InputDecoration(
                  labelText: 'Bid Amount',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a bid amount';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20), // Add this line
              // Add your next TextFormField here
              SizedBox(height: 20), // Add this line
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Add bid logic here
                    print('Bid added successfully!');
                    Navigator.pop(context);
                  }
                },
                child: Text('Add Bid'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
