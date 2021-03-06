import 'package:flutter/material.dart';
import 'package:flutter/services.dart';







Route _creaerounte(Widget widget) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return widget;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // var offeset=animation.drive()
      return SlideTransition(
        position:
            animation.drive(Tween(end: Offset.zero, begin: Offset(0.3, 0.2))),
        child: child,
      );
    },
  );
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [Hero(tag: "a", child: FlutterLogo())],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);

  var pagges = [];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(onTap: (t) {}, items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Home")
        ]),
        appBar: AppBar(
          title: Text("asdfgh jkjk"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(_creaerounte(Page1()));
                          },
                          child: Text("data")),
                      SizedBox(
                        width: 300,
                      ),
                      Text("data")
                    ],
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bus_alert),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.airport_shuttle_outlined),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home2()));
                              },
                              icon: Icon(Icons.home_filled),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.military_tech),
                            )
                          ],
                        ),
                      ],
                    ),
                  ), //      sajibmridha.nor 01660175714
                  SizedBox(
                    child: Hero(
                      flightShuttleBuilder: (flightContext,
                              animation,
                              flightDirection,
                              fromHeroContext,
                              toHeroContext) =>
                          Image.asset(
                        "images/imag.jpg",
                        // fit: BoxFit.cover,
                      ),
                      tag: "a",
                      child: FlutterLogo(),
                    ),
                    // height: 5,
                  ),
                  Hero(
                    tag: "b",
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 5)),
                        ],
                        color: Colors.red,
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 8, color: Colors.cyan),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      height: 300,
                      width: 350,
                      child: Image.asset(
                        "images/imag.jpg",
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Center(
                  //     child: Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     "history of london",
                  //     style: TextStyle(
                  //         fontSize: 25,
                  //         fontStyle: FontSt
                  // yle.italic,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.deepPurple,
                  //         backgroundColor: Colors.yellow),
                  //   ),
                  // )),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Container(
                      height: 300,
                      width: 400,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      height: 4,
                      endIndent: 20,
                      indent: 20,
                      thickness: 1,
                      color: Colors.red,
                    ),
                  ),
                  Checkbox(
                      tristate: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: MaterialStateProperty.all(Colors.amber),
                      value: false,
                      onChanged: (T) {
                        // ischeck = T!;
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      height: 4,
                      thickness: 2,
                      color: Colors.green,
                    ),
                  )

                  // Container(
                  //   height: 200,
                  //   color: Colors.blue[100],
                  //   width: 400,
                  //   child: Image.network(
                  //     "data:image/jpeg;base64,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",
                  //     // fit: BoxFit.fill,
                  //     // repeat: ImageRepeat.repeat,
                  //     color: Colors.green[900],
                  //     colorBlendMode: BlendMode.hardLight,
                  //     alignment: Alignment.topLeft,
                  //   ),
                  // ),
                  // Container(
                  //   height: 400,
                  //   color: Colors.blue[100],
                  //   width: 400,
                  //   child: Image.network(
                  //     "data:image/jpeg;base64,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",
                  //     // fit: BoxFit.fill,
                  //     // repeat: ImageRepeat.repeat,
                  //     color: Colors.green[900],
                  //     colorBlendMode: BlendMode.hardLight,
                  //     alignment: Alignment.topLeft,
                  //   ),
                  // ),
                  // Image.asset("images/imag.jpg")

                  // Center(child: Text("Bangladesh")),
                  // Center(child: Text("Dhaka")),
                  // Center(child: Text("Brahmanbaria")),
                  // Container(
                  //   color: Colors.amber,
                  //   height: 50,
                  //   width: 300,
                  // ),
                  // Container(
                  //   color: Colors.cyan,
                  //   height: 50,
                  //   width: 60,
                  // ),
                  // Container(
                  //   color: Colors.cyan,
                  //   height: 50,
                  //   width: 80,
                  // ),
                  // Container(
                  //   color: Colors.green,
                  //   height: 400,
                  //   width: 400,
                  // ),
                ],
              ),
            ],
          ),
        ));
  }
}

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Text("class two"),
    );
  }
}
