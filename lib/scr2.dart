import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project4/widgets.dart';

import 'scr1.dart';
import 'scr3.dart';

class scr2 extends StatefulWidget {
  @override
  State<scr2> createState() => _scr2State();
}

class _scr2State extends State<scr2> {
  TextEditingController level1 = TextEditingController();
  TextEditingController institute1 = TextEditingController();
  TextEditingController Starting1 = TextEditingController();
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
                          cir(Colors.grey, '3'),
                        ],
                      ),
                    ),
                    Heading("Add Education"),
                    SingleChildScrollView(
                      child: Container(
                        child: Column(children: [
                          Data("Level", "BS/Masters", level1),
                          Data("Institute", "University Name", institute1),
                          Data("Starting and Ending Date", "20-- _ 20--",
                              Starting1),
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
                                        if (level1.text.isEmpty) {
                                          showSnack(
                                              context, "Please Enter Level");
                                        } else if (institute1.text.isEmpty) {
                                          showSnack(context,
                                              "Please Enter Institute");
                                        } else if (Starting1.text.isEmpty) {
                                          showSnack(
                                              context, "Please Enter duration");
                                        } else {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) => scr3()),
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

Widget Data(String ch, String hint, TextEditingController con2) {
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
          controller: con2,
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
