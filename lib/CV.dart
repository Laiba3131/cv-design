import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CV extends StatefulWidget {
  var Name3, phone3, email3, address3, obj3;
  var level3, institue3, starting3;
  var company2, Type2, dura2, ref2;
  CV({
    this.Name3,
    this.email3,
    this.phone3,
    this.address3,
    this.obj3,
    this.level3,
    this.institue3,
    this.starting3,
    this.company2,
    this.Type2,
    this.dura2,
    this.ref2,
  });

  @override
  State<CV> createState() => _CVState();
}

class _CVState extends State<CV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 3508,
          width: 2480,
          child: Row(children: [
            Container(
              // height: double.infinity,
              width: 350,
              color: Color.fromARGB(255, 161, 137, 64),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80, top: 30, bottom: 30),
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Color.fromARGB(255, 190, 184, 25),
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80'),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.access_time,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ABOUT ME",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, bottom: 30),
                      child: Text(
                        widget.obj3,
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(Icons.access_time, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "CONTACT ME",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 30),
                      child: Row(
                        children: [
                          CircleAvatar(
                              foregroundColor: Colors.black,
                              // backgroundColor: Colors.white,
                              radius: 10,
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 10,
                              )),
                          Column(
                            children: [
                              Text(widget.phone3,
                                  style: TextStyle(color: Colors.white)),
                              Text(widget.phone3,
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 30),
                      child: Row(
                        children: [
                          Icon(Icons.email, color: Colors.white),
                          Column(
                            children: [
                              Text(widget.email3,
                                  style: TextStyle(color: Colors.white)),
                              Text(widget.email3,
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 30),
                      child: Row(
                        children: [
                          Icon(Icons.home, color: Colors.white),
                          Column(
                            children: [
                              Container(
                                width: 250,
                                child: Text(widget.address3,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(Icons.access_time, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "HOBBIES",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                          child: Text('Book Reading',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                          child: Text('Creative Writing',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                          child: Text('Open source',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 15.0),
                          child: Icon(Icons.access_time, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            "PRO SKILLS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            '.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('HTML', style: TextStyle(color: Colors.white)),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(children: [
                            Container(
                              width: 150,
                              height: 5,
                              color: Colors.white,
                            ),
                            Container(
                              height: 5,
                              width: 100,
                              color: Colors.blue,
                            ),
                          ])
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                      child: Row(children: [
                        Text(
                          '.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('CSS', style: TextStyle(color: Colors.white)),
                        SizedBox(
                          width: 8,
                        ),
                        Stack(children: [
                          Container(
                            width: 150,
                            height: 5,
                            color: Colors.white,
                          ),
                          Container(
                            height: 5,
                            width: 100,
                            color: Colors.blue,
                          ),
                        ])
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            '.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('JAVA', style: TextStyle(color: Colors.white)),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(children: [
                            Container(
                              width: 150,
                              height: 5,
                              color: Colors.white,
                            ),
                            Container(
                              height: 5,
                              width: 100,
                              color: Colors.blue,
                            ),
                          ])
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            '.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('SQA', style: TextStyle(color: Colors.white)),
                          SizedBox(
                            width: 8,
                          ),
                          Stack(children: [
                            Container(
                              width: 150,
                              height: 5,
                              color: Colors.white,
                            ),
                            Container(
                              height: 5,
                              width: 100,
                              color: Colors.blue,
                            ),
                          ])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, top: 0),
                        child: Container(
                          height: 200,
                          width: 900,
                          color: Color.fromARGB(255, 161, 137, 64),
                          child: Column(
                            children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 50),
                                  child: Text(
                                    widget.Name3,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50),
                                  ),
                                ),
                              ),
                              Center(
                                child: Text('ANDROID AND IOS DEVELOPER',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(Icons.access_time),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "EDUCATION",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 2,
                          width: 900,
                          color: Colors.blue,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 15),
                            child: Text(
                              widget.level3,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0, top: 15),
                            child: Text(
                              widget.institue3,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Text(
                              widget.starting3,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 15),
                            child: Text(
                              widget.level3,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0, top: 15),
                            child: Text(
                              widget.institue3,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Text(
                              widget.starting3,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 15),
                            child: Text(
                              widget.level3,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0, top: 15),
                            child: Text(
                              widget.institue3,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Text(
                              widget.starting3,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(Icons.access_time),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "WORK EXPERIENCE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 2,
                          width: 900,
                          color: Colors.blue,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 15),
                            child: Text(
                              widget.company2,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, bottom: 15, top: 8.0),
                        child: Container(
                          width: 800,
                          child: Row(
                            children: [
                              Text(
                                widget.Type2,
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                widget.dura2,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 15),
                            child: Text(
                              widget.company2,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, bottom: 15, top: 8.0),
                        child: Container(
                          width: 800,
                          child: Row(
                            children: [
                              Text(
                                widget.Type2,
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                widget.dura2,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 15),
                            child: Text(
                              widget.company2,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, bottom: 15, top: 8.0),
                        child: Container(
                          width: 800,
                          child: Row(
                            children: [
                              Text(
                                widget.Type2,
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                widget.dura2,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(Icons.access_time),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "REFRENCE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 2,
                          width: 900,
                          color: Colors.blue,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 15),
                            child: Text(
                              widget.ref2,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                      ),
                    ])),
          ]),
        ),
      ),
    );
  }
}
