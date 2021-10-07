import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:karmas/screen/details.dart';

class Homes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            // person should not go back once they logged in
            // Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: Text(
          'Kerma Drives',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: [
          Container(
            // height: 50,
            // width: ,
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
              child: Text(
                'MY DRIVE',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Details()),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Search here',
                    suffixIcon: Container(
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 55, left: 20, right: 20),
                      child: Container(
                        height: 270,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/sr.jpg',
                                ),
                                fit: BoxFit.cover)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(right: 30, top: 20),
                                      child: Text(
                                        '9,523',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(right: 25, top: 0),
                                      child: Text(
                                        'JOINED',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                ' CATOGARY',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                ' SPIRITUAL EMPOWERMENT',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                ' 05:00 AM| 7 DEC 2019',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 45,
                            ),
                            Row(
                              children: [
                                Container(
                                  // height: 50,
                                  width: 150,
                                  padding: EdgeInsets.only(left: 20),
                                  child: ElevatedButton(
                                    child: Text('JOINED'),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      primary: Colors.green,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Details()),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // height: 50,
                                  width: 150,
                                  padding: EdgeInsets.only(left: 5, right: 20),
                                  child: ElevatedButton(
                                    child: Text(
                                      'DO KARMA',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        primary: Colors.white),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Details()),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 20, right: 20),
                      child: Container(
                        height: 270,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/sr.jpg',
                                ),
                                fit: BoxFit.cover)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(right: 30, top: 20),
                                      child: Text(
                                        '9,523',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(right: 25, top: 0),
                                      child: Text(
                                        'JOINED',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                ' CATOGARY',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                ' SPIRITUAL EMPOWERMENT',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                ' 05:00 AM| 7 DEC 2019',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 45,
                            ),
                            Row(
                              children: [
                                Container(
                                  // height: 50,
                                  width: 150,
                                  padding: EdgeInsets.only(left: 20),
                                  child: ElevatedButton(
                                    child: Text('JOINED'),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        primary: Colors.green),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Details()),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // height: 50,
                                  width: 150,
                                  padding: EdgeInsets.only(left: 5, right: 20),
                                  child: ElevatedButton(
                                    child: Text(
                                      'DO KARMA',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        primary: Colors.white),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Details()),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
