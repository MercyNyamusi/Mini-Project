import 'package:flutter/material.dart';
import 'package:carpool/addcard.dart';
import 'package:carpool/main.dart';

class Verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
      Row(children: [
        Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: (() {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                }))),
      ]),
      Center(
          child: Column(
        children: [
          SizedBox(height: 50),
          Container(
              child: Text("Enter Code",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30))),
          Container(
              child: Text("The code was sent to 250*******783",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10))),
          SizedBox(height: 50),
          Container(
              child: Column(children: [
            Text("Code",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 10),
            Text("* * *    * * *",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 10),
            Text("Didn't receive the code?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 15)),
            Text("Resend",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15))
          ])),
          SizedBox(height: 30),
          Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(177, 47, 125, 1)),
                      fixedSize: MaterialStateProperty.all(const Size(250, 45)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ))),
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddCard()));
                  }),
                  child: Text("Next"))),
          SizedBox(height: 30)
        ],
      )),
      Divider(
          thickness: 5,
          indent: 550,
          endIndent: 550,
          color: Color.fromRGBO(177, 47, 125, 1)),
    ]));
  }
}
