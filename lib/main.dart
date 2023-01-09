import 'package:flutter/material.dart';
import 'package:shoping/nav.dart';
import 'package:shoping/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Color.fromRGBO(255, 253, 252, 1),
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 20)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                nav(
                  Icons.person,
                ),
                nav(
                  Icons.shopping_bag,
                ),
                nav(Icons.home, isSelected: true),
                nav(
                  Icons.favorite,
                ),
                nav(
                  Icons.settings,
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: Center(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white60,
                  shape: BoxShape.circle,
                ),
                width: 40,
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  "assets/images/menu.png",
                )),
          ),
          actions: [
            Center(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    shape: BoxShape.circle,
                  ),
                  width: 40,
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/images/search.png")),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  'Shop ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text('Application',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                newMethod('Home Decor'),
                newMethod('Bath&body'),
                newMethod('Beauty'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 20, spreadRadius: 1)
                    ]),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        topCandles('Candles', isSelected: true),
                        topCandles('Vases'),
                        topCandles('Bins'),
                        topCandles('Floral'),
                        topCandles('Decor'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              print('clicked');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => Result()),
                                ),
                              );
                            },
                            child: candles(
                                image: 'images/candles.jpg',
                                prise: '24',
                                title: 'fahid'),
                          ),
                          candles(
                              image: 'images/candles1.jpg',
                              prise: '45',
                              title: 'fayis'),
                          candles(
                              image: 'images/candles3.jpg',
                              prise: '32',
                              title: 'farzeen'),
                          candles(
                              image: 'images/candles4.jpg',
                              prise: '34',
                              title: 'fathima'),
                        ],
                      ),
                    ),
                    LineBar(),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        children: [
                          Text(
                            'HoliDay Special',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Spacer(),
                          Text('View All',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          bbbb(
                              image: 'images/candles4.jpg',
                              text1: 'guahija',
                              text2: 'aijkncs',
                              text3: '78'),
                          bbbb(
                              image: 'images/candles3.jpg',
                              text1: 'ad',
                              text2: 'aiadadjkncs',
                              text3: '56'),
                          bbbb(
                              image: 'images/candles1.jpg',
                              text1: 'xsadad',
                              text2: 'adadaeeas',
                              text3: '12'),
                          bbbb(
                              image: 'images/candles.jpg',
                              text1: 'guahija',
                              text2: 'daddad',
                              text3: '34'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container bbbb(
      {required String image,
      required String text1,
      required String text2,
      required String text3}) {
    return Container(
      width: 270,
      height: 180,
      color: Color.fromARGB(255, 255, 255, 255),
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              width: 120,
              height: 200,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                text1,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: Color.fromARGB(255, 100, 99, 99),
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Text(
                '\$ $text3',
                style: TextStyle(
                    color: Color.fromARGB(255, 94, 92, 92),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding candles(
      {required String image, required String title, required String prise}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Container(
          height: 220,
          width: 160,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        Text('\$ $prise', style: TextStyle(fontSize: 15)),
      ]),
    );
  }

  Column topCandles(String text, {bool isSelected = false}) {
    return Column(children: [
      Text(
        text,
        style: TextStyle(
            color: isSelected
                ? Color.fromARGB(153, 0, 0, 0)
                : Color.fromARGB(96, 155, 153, 153),
            fontSize: 17,
            fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 5),
      if (isSelected == true)
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Color.fromARGB(255, 0, 0, 0)),
        ),
    ]);
  }

  TextButton newMethod(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(letterSpacing: 1, fontSize: 15),
      ),
      style: TextButton.styleFrom(
          shape: StadiumBorder(),
          primary: Color.fromARGB(255, 255, 255, 255),
          backgroundColor: Colors.pink[200]),
    );
  }
}

class LineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
        color: Color.fromARGB(255, 196, 192, 192),
      ),
      margin: EdgeInsets.only(left: 40),
      width: MediaQuery.of(context).size.width,
      height: 5,
      alignment: Alignment.topLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        width: 120,
        height: 5,
      ),
    );
  }
}
