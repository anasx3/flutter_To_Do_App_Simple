// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

 
class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Color(0xffe9edf3),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xfffefefe),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ],
          title: Text(
            "تطبيق مهام",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Text(
                "المهام كامله",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            for (int i = 0; i < 20; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xfffefefe),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "أنا أنس الجهني مطور تطبيقات ومواقع اسعى لتعليم غيري",
                            style: TextStyle(fontSize: 17),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 2,
                                    offset: Offset(0, 3))
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              Icon(
                                Icons.done,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
