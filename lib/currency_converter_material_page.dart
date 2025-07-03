import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  String title = '';
  String appbarTitle = '';
  double formula = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 3.0,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(100),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          appbarTitle,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.currency_exchange,
                  color: Colors.white,
                ),
              ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("USD to PKR"),
                      onTap: () {
                        title = "Rs.";
                        appbarTitle = "USD to PKR";
                        formula = 280.05;
                        result = 0;
                        setState(() {});
                      },
                    ),
                    PopupMenuItem(
                      child: Text("PKR to USD"),
                      onTap: () {
                        title = "\$";
                        appbarTitle = "PKR to USD";
                        formula = 1 / 280.05;
                        result = 0;
                        setState(() {});
                      },
                    )
                  ])
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$title ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                cursorColor: Colors.teal,
                style: TextStyle(
                  color: Colors.black,
                ),
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Enter an amount",
                  hintStyle: TextStyle(color: Colors.grey.shade700),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.monetization_on_outlined,
                  ),
                  prefixIconColor: Colors.grey.shade700,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = (double.parse(textEditingController.text) * formula);
                });
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.teal),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                fixedSize: WidgetStatePropertyAll(Size(200, 50)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)))),
              ),
              child: Text(
                "CONVERT",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
