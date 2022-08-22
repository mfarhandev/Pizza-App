import 'package:flutter/material.dart';

import 'menu_page.dart';

class StaterPage extends StatefulWidget {
  const StaterPage({Key? key}) : super(key: key);

  @override
  State<StaterPage> createState() => _StaterPageState();
}

class _StaterPageState extends State<StaterPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "images/starter-image.jpg",
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.5),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 78.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Taking Order For Faster Delivery",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: "Roboto-Bold",
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 78.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "See resturants nearby by adding your location",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 25,
                        fontFamily: "Roboto-light",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.3,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  MenuPage()),
                      );
                    },
                    child: Container(
                      height: h * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text(
                          "Start",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Roboto-Regular",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Now Deliver To Your Door 24/7",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                      fontFamily: "Roboto-light",
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
