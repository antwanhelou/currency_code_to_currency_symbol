1.Add dependancy 
```yaml
currency_code_to_currency_symbol: 0.01
```
2.Import the package
```dart
import 'package:currency_code_to_currency_symbol/currency_code_to_currency_symbol.dart';

```
## Features

This package receives a currency code for example usd and converts it to currency symbol => $



## Usage



```dart
import 'package:flutter/material.dart';
import 'package:your_package_name/currency_code_to_currency_symbol.dart'; // Adjust the import path as necessary

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Currency Symbol Example')),
        body: Center(
          child: currency_code_to_currency_symbol(currencyCode: 'USD'), // Example usage
        ),
      ),
    );
  }
}

```

