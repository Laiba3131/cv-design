import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project4/scr1.dart';
import 'package:project4/widgets.dart';

import 'CV.dart';

class scr3 extends StatefulWidget {
  @override
  State<scr3> createState() => _scr3State();
}

class _scr3State extends State<scr3> {
  TextEditingController company1 = TextEditingController();
  TextEditingController Type1 = TextEditingController();
  TextEditingController dura1 = TextEditingController();
  TextEditingController ref1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              height: 800,
              width: 1000,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          cir(Colors.purple, '1'),
                          line(Colors.purple),
                          cir(Colors.purple, '2'),
                          line(Colors.purple),
                          cir(Colors.purple, '3'),
                        ],
                      ),
                    ),
                    Heading("Add Experience"),
                    SingleChildScrollView(
                      child: Container(
                        child: Column(children: [
                          Data("Company Name", "Arfa software house", company1),
                          Data("Type", "Manager/superviser", Type1),
                          Data("Duration", "20-- _ 20--", dura1),
                          Data("Reference", "Reference", ref1),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 35.0),
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    width: 100,
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Back',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 45.0),
                                child: Row(
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        if (company1.text.isEmpty) {
                                          showSnack(context,
                                              "please enter company name");
                                        } else if (Type1.text.isEmpty) {
                                          showSnack(context,
                                              "please enter company type ");
                                        } else if (dura1.text.isEmpty) {
                                          showSnack(context,
                                              "please enter company duration ");
                                        } else if (ref1.text.isEmpty) {
                                          showSnack(context,
                                              "please enter company referance ");
                                        } else {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) => CV()),
                                            ),
                                          );
                                        }
                                        ;
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.purple,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width: 100,
                                        height: 30,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Next',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                            Icon(
                                              //Icons.forward,
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

Widget cir(Color col, String num) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: col,
    ),
    child: Center(
      child: Text(
        num,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget line(Color col2) {
  return Container(
    height: 3,
    width: 60,
    color: col2,
  );
}

Widget Data(String ch, String hint, TextEditingController con3) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ch,
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: con3,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    ),
  );
}

Widget Heading(String ch4) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 25),
    child: Center(
      child: Text(
        ch4,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
  );
}
