import 'package:flutter/material.dart';
import 'package:food_app/submenu_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late List food = [
    "Pizza",
    "Burger",
    "Kebab",
    "Dessert",
    "Salad",
  ];
  late List foodimages = [
    "images/one.jpg",
    "images/three.jpg",
    "images/two.jpg",
    "images/food3.jpg",
    "images/food4.jpg"
  ];
  late List price = ["13", "15", "17", "19", "21"];
  late List names = [
    "Neapolitan Pizza",
    "Chicago Pizza",
    "Detroit Pizza",
    "Sicilian Pizza",
    "Greek Pizza"
  ];
  late String desc = "Mix the butter and olive oil in a small bowl until combined well. Then add garlic before mixing in with pesto leaves from basil-- Thyme too if you want! When blending, top off each slice by pouring an Alfredo sauce mixture overtop, including tomatoes and feta cheese, so all is covered beautifully but not drowning out any flavor.";
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            SizedBox(
              height: h * 0.03,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Food Delivery",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto-Bold",
                ),
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              height: h * 0.08,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 1),
                      ),
                      child: Center(
                          child: Text(
                        food[index],
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: "Roboto-Regular",
                            fontWeight: FontWeight.bold),
                      )),
                    );
                  }),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Free delivery",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto-Bold",
                ),
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              height: h * 0.63,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  SubmenuPage(img: foodimages[index], name: names[index], price: price[index], desc: desc)),
                        );
                      },
                      child: Hero(
                        tag: foodimages[index],
                        child: Container(
                          width: 250,
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(foodimages[index]),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),BlendMode.darken )
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.35,
                              ),
                              Padding(
                                padding:  EdgeInsets.all(10.0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "\$" + price[index] + ".00",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto-Bold"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(bottom: 8,left:8 ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    names[index],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto-Regular"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
