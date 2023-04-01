import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project4/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'scr2.dart';

class scr1 extends StatefulWidget {
  const scr1({super.key});

  @override
  State<scr1> createState() => _scr1State();
}

class _scr1State extends State<scr1> {
  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController Objective = TextEditingController();

  savePersonalInfo() async {
    var pref = await SharedPreferences.getInstance();
    var data = {
      "name": Name.text,
      "email": Email.text,
      "phone": phone.text,
      "address": Address.text,
      "objective": Objective.text
    };
    pref.setString("personalInfo", jsonEncode(data));
  }

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
                          cir(Colors.grey, '2'),
                          line(Colors.grey),
                          cir(Colors.grey, '3'),
                        ],
                      ),
                    ),
                    Heading("personal information"),
                    CustomData("Name", "Full Name", Name),
                    // Data("Phone no", " 0324---", phone),
                    // Data("Email", "Enter email", Email),
                    // Data("Address", "Address", Address),
                    // Data("Objective", "About yourself", Objective),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Row(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              if (Name.text.isEmpty) {
                                showSnack(context, "Please Enter Name");
                              } else if (phone.text.isEmpty) {
                                showSnack(context, "Please Enter Phone");
                              } else if (Email.text.isEmpty) {
                                showSnack(context, "Please Enter Email");
                              } else if (Address.text.isEmpty) {
                                showSnack(context, "Please Enter Address");
                              } else if (Objective.text.isEmpty) {
                                showSnack(context, "Please Enter Objective");
                              } else {
                                savePersonalInfo();
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: ((context) => scr2()),
                                //   ),
                                // );
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(10)),
                              width: 100,
                              height: 30,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Next',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  Icon(
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
