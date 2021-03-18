import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgerPage extends StatefulWidget {
  final imgPath, foodName, pricePerItem, heroTag;

  BurgerPage({this.imgPath, this.foodName, this.pricePerItem, this.heroTag});

  @override
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: Colors.black),
                Stack(
                  children: [
                    Container(
                      height: 45.0,
                      width: 45.0,
                      color: Colors.transparent,
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0xFFFE7D6A).withOpacity(0.3),
                          blurRadius: 6.0,
                          spreadRadius: 4.0,
                          offset: Offset(0.0, 4.0),
                        )
                      ], color: Color(0xFFFE7D6A), shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'SUPER',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w800, fontSize: 27.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              widget.foodName.toString().toUpperCase(),
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w800, fontSize: 27.0),
            ),
          ),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: widget.heroTag,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 45.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFFE7D6A).withOpacity(0.1),
                                  blurRadius: 6.0,
                                  spreadRadius: 6.0,
                                  offset: Offset(5.0, 11.0))
                            ]),
                      ),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white),
                        child: Center(
                          child: Icon(Icons.favorite_border,
                              color: Color(0xFFFE7D6A), size: 25.0),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
