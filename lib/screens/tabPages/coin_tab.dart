import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/subscription_card.dart';
import 'package:google_fonts/google_fonts.dart';

class CoinTab extends StatefulWidget {
  const CoinTab({Key? key}) : super(key: key);

  @override
  State<CoinTab> createState() => _CoinTabState();
}

class _CoinTabState extends State<CoinTab> {
  bool card1Value = false;
  bool card2Value = false;
  bool card3Value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BUY COINS'),),
      resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SubscriptionCardWidget(
                      coinsText: "10 Coins",
                      priceText: '\$5',
                      onTap: () {
                        setState(() {
                          card1Value = !card1Value;
                          if (card1Value) {
                            card2Value = false;
                            card3Value = false;
                          }
                        });
                      },
                      isActive: card1Value,
                      buyCoins: buyCoins,
                    ),
                    SubscriptionCardWidget(
                      coinsText: "50 Coins",
                      priceText: '\$25',
                      onTap: () {
                        setState(() {
                          card2Value = !card2Value;
                          if (card2Value) {
                            card1Value = false;
                            card3Value = false;
                          }
                        });
                      },
                      isActive: card2Value,
                      buyCoins: buyCoins,
                    ),
                    SubscriptionCardWidget(
                      coinsText: "100 Coins",
                      priceText: '\$45',
                      onTap: () {
                        setState(() {
                          card3Value = !card3Value;
                          if (card3Value) {
                            card2Value = false;
                            card1Value = false;
                          }
                        });
                      },
                      isActive: card3Value,
                      buyCoins: buyCoins,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: InkWell(
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Enter Custom Amount',
                            style: GoogleFonts.aBeeZee(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CustomTextField(hintText: 'USD'),
                              Icon(
                                Icons.compare_arrows,
                                size: 35,
                                color: Colors.blueAccent,
                              ),
                              CustomTextField(hintText: 'Coins'),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: double.maxFinite,
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
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void buyCoins() {
    print('buy coins');
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: MediaQuery.of(context).size.width / 3.5,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 15, color: Color(0xff828282), fontFamily: "Rubik"),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
