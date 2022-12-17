import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AnunDetaliatPiese extends StatefulWidget {
  AnunDetaliatPiese(
      {super.key,
      required this.imagePiese,
      this.titlePiese,
      this.descriptionPiese});

  final Image imagePiese;
  String? titlePiese;
  String? descriptionPiese;

  @override
  State<AnunDetaliatPiese> createState() => _AnunDetaliatPieseState();
}

class _AnunDetaliatPieseState extends State<AnunDetaliatPiese> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titlePiese ?? ''),
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                widget.imagePiese,
                Text(widget.titlePiese ?? ''),
                Text(widget.descriptionPiese ?? ''),
                ElevatedButton(
                  child: Text('Comanda'),
                  onPressed: () async {
                    setState(() {
                      _isLoading = true;
                    });
                    http.Response response = await http.post(
                        Uri.parse('https://samsareala.ro/wp-json/wc/v3/orders'),
                        headers: <String, String>{
                          'Content-Type': 'application/json',
                          'Authorization':
                              'Basic Y2tfMjE5YzhkZTQ5MDE4MjNmYzAxNmFlNzBhOWI2OGJmMWIxOTc3OGU3ZTpjc19iNWMwZGY1OWZhNTE3NzNjYTU5Mzg4Nzg0NDhjNmQyY2Y1OTgwNGZl'
                        },
                        body: '''{
  "set_paid": false,
  "billing": {
    "first_name": "John",
    "last_name": "Doe",
    "address_1": "969 Market",
    "address_2": "",
    "city": "San Francisco",
    "state": "CA",
    "postcode": "94103",
    "country": "US",
    "email": "john.doe@example.com",
    "phone": "(555) 555-5555"
  },
  "line_items": [
    {
      "product_id": 36,
      "quantity": 1
    }
  ]
}''');
                    if (response.statusCode == 201) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Comanda a fost creata."),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text("A intervenit o eroare la plasarea comenzii."),
                      ));
                    }
                    setState(() {
                      _isLoading = false;
                    });
                  },
                ),
              ],
            ),
    );
  }
}
