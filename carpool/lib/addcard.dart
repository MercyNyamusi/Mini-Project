import 'package:carpool/phone_no_verification.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: (() {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => Verification()));
            }),
          ),
          title: Text("Add New Card", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Center(
                child: Container(
                    width: 800,
                    child: ListView(children: [
                      Container(
                          width: 500,
                          height: 200,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.network(
                                "data:image/jpeg;base64,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"),
                          )),
                      SizedBox(height: 50),
                      Container(
                          width: 800,
                          child: Form(
                              child: Column(
                            children: [
                              ListTile(
                                title: Text('Card Number',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color: Colors.pinkAccent)),
                                    hintText: '1234 1234 1234 1234',
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      title: Text('Expiry Date',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      subtitle: TextFormField(
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 3,
                                                  color: Colors.pinkAccent)),
                                          hintText: '01/01/2000',
                                          icon: Icon(Icons.calendar_today),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      title: Text('CVV/CVC',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      subtitle: TextFormField(
                                        decoration: const InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 3,
                                                  color: Colors.pinkAccent)),
                                          hintText: '000',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ListTile(
                                title: Text('Full Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: TextFormField(
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3,
                                            color: Colors.pinkAccent)),
                                    hintText: 'John Doe',
                                  ),
                                ),
                              ),
                            ],
                          ))),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.only(left: 300, right: 300),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(177, 47, 125, 1)),
                                fixedSize: MaterialStateProperty.all(
                                    const Size(100, 45)),
                                textStyle: MaterialStateProperty.all(
                                    const TextStyle(fontSize: 15)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ))),
                            onPressed: (() {
                              Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Verification()));
                            }),
                            child: Text("Add New Card",
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                      Divider(
                          thickness: 5,
                          indent: 550,
                          endIndent: 500,
                          color: Color.fromRGBO(177, 47, 125, 1)),
                    ])))));
  }
}
