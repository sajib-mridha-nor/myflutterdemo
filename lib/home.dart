import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List list = List.generate(20, (index) => index);
  List clr = [
    Colors.blue[200],
    Colors.blue[400],
    Colors.blue[600],
    Colors.blue[800],
    Colors.green[200],
    Colors.green[400],
    Colors.green[400],
    Colors.green[600],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:
        
         GridView.count(
            crossAxisCount: 3,
            children: List.generate(
              clr.length,
              (index) => Card(
                child: Container(height: 200, width: 200, color: clr[index]),
              ),
            ))

        // (
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       //  childAspectRatio: 4, mainAxisExtent: 10,
        //       mainAxisSpacing: 8,
        //       crossAxisSpacing: 10),
        //   itemBuilder: (context, index) => Card(
        //     child: Container(height: 200, width: 200, color: clr[index]),
        //   ),
        //   itemCount: clr.length,
        // )
        );
    //  ListView.separated(
    //     itemCount: 20,
    //     itemBuilder: (context, index) =>
    //      ListTile(
    //         onTap: () {},
    //         // isThreeLine: true,
    //         enabled: true,
    //         // dense: true,
    //         contentPadding: EdgeInsets.all(8),
    //         hoverColor: Colors.yellow,
    //         selectedColor: Colors.amber,
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20)),
    //         // selected: true,
    //         tileColor: Colors.cyan,
    //         title: Text("Banglades"),
    //         leading: Icon(CupertinoIcons.heart),
    //         subtitle: Text("Banglades in beautiful contry"),
    //         trailing: Icon(Icons.arrow_forward)),
    //     separatorBuilder: (context, index) => Divider(
    //           indent: 10,
    //           // endIndent: 10,
    //           height: 4,
    //           thickness: 4,
    //           color: Colors.brown,
    //         )));
  }
}

            // Card(
            //   elevation: 20,
            //   color: Colors.blue,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   shadowColor: Colors.orange,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text("Bangladesh"),
            //   ),
            // ),
