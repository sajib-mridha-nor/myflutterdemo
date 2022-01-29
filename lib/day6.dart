import 'package:flutter/material.dart';

class ResponsibeUI extends StatelessWidget {
  const ResponsibeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: ,
        children: [
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: double.infinity,
                    color: Colors.grey,
                    child: Text("Flutter Responsive UI")),
              )),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 200,
                      width: double.maxFinite,
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 200,
                      width: double.maxFinite,
                      color: Colors.amber,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 200,
                      width: double.maxFinite,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 200,
                  // width: double.maxFinite,
                  color: Colors.green,
                ),
              )),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 200,
                      // width: 200,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 200,
                      // width: 200,
                      color: Colors.blue[200],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // height: 200,
                // width: 200,
                color: Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
