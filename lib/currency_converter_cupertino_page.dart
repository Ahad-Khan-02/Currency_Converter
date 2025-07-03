import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 12, 1, 71),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: const Color.fromARGB(255, 0, 102, 255),
        middle: Text(
          "USD to PKR",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: CupertinoColors.activeBlue,
              fontSize: 30),
        ),
      ),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Rs. ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CupertinoTextField(
                  style: TextStyle(
                    color: CupertinoColors.activeBlue,
                  ),
                  controller: textEditingController,
                  decoration: BoxDecoration(
                    color: CupertinoColors.inactiveGray,
                    border: Border.all(
                      width: 5,
                      color: CupertinoColors.activeBlue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: "Please enter the amount",
                  placeholderStyle: TextStyle(
                    color: CupertinoColors.extraLightBackgroundGray,
                  ),
                  prefix: Icon(
                    CupertinoIcons.money_dollar,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              CupertinoButton(
                color: CupertinoColors.activeBlue,
                onPressed: () {
                  setState(() {
                    result = (double.parse(textEditingController.text) * 280);
                  });
                },
                child: Text(
                  "CONVERT",
                  style: TextStyle(color: CupertinoColors.black),
                ),
              ),
            ]),
      ),
    );
  }
}
