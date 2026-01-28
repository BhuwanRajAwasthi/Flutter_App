import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyconvApp extends StatelessWidget {
  const CurrencyconvApp({super.key});
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 117, 146, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(66, 117, 146, 1),

        title: Text(
          'Currency Converter',
          style: TextStyle(fontWeight: FontWeight.w900,
          color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Please enter the amount',
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black45,
                  filled: true,
                  focusedBorder: border,
                  enabledBorder: border,

                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 107, 107, 107),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('Button clicked');
                  }
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 255, 255, 255),
                  ),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
