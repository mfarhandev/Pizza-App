import 'package:flutter/material.dart';

class SubmenuPage extends StatefulWidget {
  SubmenuPage(
      {required this.img,
      required this.name,
      required this.price,
      required this.desc});
  late String img;
  late String name;
  late String price;
  late String desc;

  @override
  State<SubmenuPage> createState() => _SubmenuPageState();
}

class _SubmenuPageState extends State<SubmenuPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
              Hero(
                tag: widget.img,
                child: Container(
                  height: h * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.img), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto-Regular"),
                    ),
                    Text(
                      "\$" + widget.price + ".00",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto-Bold"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  widget.desc,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto-Light"),
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Roboto-Regular",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
