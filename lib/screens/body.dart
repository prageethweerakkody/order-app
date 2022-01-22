import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/data/Product.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Banner(
          message: "Banner message",
          location: BannerLocation.topEnd,
          color: Colors.red,
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Color(0xFFFFD54F),
            height: 50,
            child: Center(
              child: Text("The store opens at 6 p.m."),
            ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                          context,
                          MaterialPageRoute(),
                        )),
              )),
        ),
      ],
    );
  }
}
