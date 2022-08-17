import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionCardWidget extends StatelessWidget {
  SubscriptionCardWidget(
      {required this.coinsText,
      required this.priceText,
      required this.onTap,
        required this.buyCoins,
      required this.isActive});

  final String coinsText;
  final String priceText;
  final VoidCallback onTap;
  final bool isActive;
  final VoidCallback buyCoins;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.height / 3.5,
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 5,
          shadowColor: const Color(0xff193D83),
          color: isActive ? const Color(0xff007C7C) : Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    coinsText,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        color: !isActive ? Colors.black : Colors.white),
                  ),
                  Text(
                    priceText,
                    style: GoogleFonts.aBeeZee(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: !isActive ? Colors.black : Colors.white),
                  ),
                  isActive == true
                      ? Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffE6E98D),
                          ),
                          child: MaterialButton(
                            onPressed: buyCoins,
                            child: Text(
                              'BUY',
                              style: GoogleFonts.aBeeZee(color: Colors.black),
                            ),
                          ),
                        )

                      : Container()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
