import 'package:flutter/material.dart';
import 'package:myflutterdemo/day7.dart';

class Day8Demo extends StatefulWidget {
  const Day8Demo({Key? key}) : super(key: key);

  @override
  _Day8DemoState createState() => _Day8DemoState();
}

class _Day8DemoState extends State<Day8Demo> {
  var v;
  @override
  Widget build(BuildContext context) {
    var snackbar = SnackBar(
      content: Text("Your are selected $v"),
      backgroundColor: Colors.red,
    );
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 200,
              width: 300,
              child: DropdownButton(
                hint: Text("Choose your option"),
                value: v,
                onChanged: (valueKey) {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => Firebasedemo()));
                  setState(() {
                    v = valueKey;
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text("month"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Item two "),
                    value: 2,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                  ),
                  DropdownMenuItem(
                    child: Text("Item three "),
                    value: 3,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                  ),
                  DropdownMenuItem(
                    child: Text("Item one four"),
                    value: 4,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
