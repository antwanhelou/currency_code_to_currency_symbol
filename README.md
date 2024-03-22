# Currency Code to Currency Symbol Package

This Dart package provides an easy and efficient way to convert currency codes (e.g., "USD", "EUR") to their corresponding currency symbols (e.g., "$", "€") and display them in your Flutter applications.

## Installation

To use this package, add `currency_code_to_currency_symbol` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  currency_code_to_currency_symbol: ^0.0.4

```
2.Import the package
```dart
import 'package:currency_code_to_currency_symbol/currency_code_to_currency_symbol.dart';

```
## Features

Converts currency codes to symbols for over 100+ currencies.
Offers a widget for easy display of currency symbols in your UI.
Supports using enums for type-safe currency code handling.
Flexible usage: get a symbol as a string or directly use a customizable widget for UI display.



## Usage



```dart
import 'package:flutter/material.dart';
import 'package:currency_code_to_currency_symbol/currency_code_to_currency_symbol.dart';
import 'package:currency_code_to_currency_symbol/src/currency_symbols_enum.dart';

// You have the flexibility to directly use the getCurrencySymbol function 
//if you only need the symbol as a String
String symbol = getCurrencySymbol("USD");
print(symbol); // Outputs: $

//In this example:

//A DropdownButton widget lets the user select a CurrencyCode from the available enum values.
//Upon selection, the selectedCurrency state is updated, which triggers a rebuild.
//The Text widget displays the corresponding currency symbol by calling getCurrencySymbolENUM(selectedCurrency).
import 'package:flutter/material.dart';
import 'package:currency_code_to_currency_symbol/src/currency_symbols_enum.dart';

class _MyAppState extends State<MyApp> {
  // Initial currency code
  CurrencyCode selectedCurrency = CurrencyCode.USD;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Currency Symbol Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<CurrencyCode>(
                value: selectedCurrency,
                onChanged: (value) {
                  setState(() {
                    selectedCurrency = value!;
                  });
                },
                items: CurrencyCode.values.map((CurrencyCode code) {
                  return DropdownMenuItem<CurrencyCode>(
                    value: code,
                    child: Text(code.toString().split('.').last),
                  );
                }).toList(),
              ),
              Text(
                'Symbol: ${getCurrencySymbolENUM(selectedCurrency)}',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//if you wanna use it as a text:
import 'package:flutter/material.dart';
import 'package:currency_code_to_currency_symbol/currency_code_to_currency_symbol.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CurrencyToSymbolWidget(
            currencyCode: 'USD',
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}


```

