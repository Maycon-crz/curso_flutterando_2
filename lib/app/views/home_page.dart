import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/currency_box.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;
  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              top: 100,
              bottom: 20,
            ),
            child: Column(
              children: [
                Image.network("https://www.recicladarte.com/theme/img/parceiros/logos/61917746a6699__logo_recicladarte.jpg", width: 150, height: 150),
                SizedBox(height: 50),
                CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  controller: toText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    print(model);
                  },
                ),
                SizedBox(height: 10),
                CurrencyBox(
                  selectedItem: homeController.fromCurrency,
                  controller: fromText,
                  items: homeController.currencies,
                  onChanged: (model) {},
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('CONVERTER'),
                ),
              ],
            ),
          )),
    );
  }
}
