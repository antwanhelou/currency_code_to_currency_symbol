
import 'package:flutter/material.dart';
import './currency_symbols.dart';

class CurrencyToSymbolWidget extends StatefulWidget {
  final String currencyCode;
  final TextStyle? textStyle; 

  const CurrencyToSymbolWidget({
    Key? key,
    required this.currencyCode,
    this.textStyle, 
  }) : super(key: key);

  @override
  State<CurrencyToSymbolWidget> createState() => _CurrencyToSymbolState();
}

class _CurrencyToSymbolState extends State<CurrencyToSymbolWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      getCurrencySymbol(widget.currencyCode),
      style: widget.textStyle, 
    );
  }
}
