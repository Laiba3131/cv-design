import 'package:flutter/material.dart';

showSnack(context, text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}

Widget CustomTextField(String ch, String hint, con1) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   ch,
        //   style: TextStyle(
        //       fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
        // ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 300,
          child: TextFormField(
            controller: con1,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
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

class CustomData extends StatelessWidget {
  var ch, hint;
  TextEditingController con1;
  CustomData(this.ch, this.hint, this.con1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   ch,
          //   style: TextStyle(
          //       fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
          // ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: TextFormField(
              controller: con1,
              decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
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
}
