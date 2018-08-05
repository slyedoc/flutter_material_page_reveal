import 'package:flutter/material.dart';

final pages = [
  new PageViewModel(
      const Color(0xFF678FB4),
      'assets/hotels.png',
      'Hotels',
      'All hotels and hostels are sorted by hospitality rating',
      'assets/key.png'),
  new PageViewModel(
      const Color(0xFF65B0B4),
      'assets/banks.png',
      'Banks',
      'We carefully verify all banks before adding them into the app',
      'assets/wallet.png'),
  new PageViewModel(
    const Color(0xFF9B90BC),
    'assets/stores.png',
    'Store',
    'All local stores are categorized for your convenience',
    'assets/shopping_cart.png',
  ),    
];

class Page extends StatelessWidget {
  final PageViewModel viewModel;
  final double percentVisable;

  Page({
    this.viewModel,
    this.percentVisable = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: viewModel.color,
      child: Opacity(
        opacity: percentVisable,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform(
              transform: Matrix4.translationValues(
                  0.0, 50.0 * (1.0 - percentVisable), 0.0),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Image.asset(
                  viewModel.heroAssetPath,
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(
                  0.0, 30.0 * (1.0 - percentVisable), 0.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(viewModel.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'FlamanteRomb',
                      fontSize: 34.0,
                    )),
              ),
            ),
            Transform(
                            transform: Matrix4.translationValues(
                  0.0, 30.0 * (1.0 - percentVisable), 0.0),
                          child: Padding(
                padding: const EdgeInsets.only(bottom: 75.0),
                child: Text(viewModel.body,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'FlamanteRomb',
                      fontSize: 18.0,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageViewModel {
  final Color color;
  final String heroAssetPath;
  final String title;
  final String body;
  final String iconAssetPath;

  PageViewModel(this.color, this.heroAssetPath, this.title, this.body,
      this.iconAssetPath);
}
