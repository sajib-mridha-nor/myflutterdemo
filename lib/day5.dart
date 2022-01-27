import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatefulWidget {  //  sajibmridha.nor 01660185714
  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  // const MyTextField({Key? key}) : super(key: key);
  TextEditingController usernameController =
      TextEditingController(text: "Bangladesh");
  var pass = TextEditingController();

  var text1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
                child: TextField(
                    controller: usernameController,
                    maxLines: 1,
                    maxLength: 20,
                    decoration: InputDecoration(
                      label: Text(
                        "User Nema",
                        style: TextStyle(),
                      ),
                      hintText: "Enter some Text.......",
                      hintStyle: TextStyle(color: Colors.amber),
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: pass,
                  // enabled: false,
                  autofocus: false,
                  obscureText: false,
                  // maxLines: 2,
                  maxLength: 20,
                  // cursorColor: Colors.red,
                  // cursorHeight: 30,
                  // cursorWidth: 20,
                  cursorRadius: Radius.circular(10),
                  keyboardType: TextInputType.phone,
                  enabled: true,
                  // keyboardAppearance: KeyboardLockMode.numLock,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp("[a-z A-Z á-ú Á-Ú 0-9]"),
                    ),
                    FilteringTextInputFormatter.deny(RegExp('[abFeG]')),
                  ],
                  showCursor: true,
                  autocorrect: true,
                  enableSuggestions: true,
                  autofillHints: ["banglades"],
                  decoration: InputDecoration(
                    icon: Icon(Icons.home),
                    // prefixIcon: Icon()
                    prefixIcon: Icon(
                      CupertinoIcons.heart,
                      color: Colors.lime,
                    ),
                    // suffix: Icon(
                    //   CupertinoIcons.search,
                    //   color: Colors.lime,
                    // ),
                    suffixIcon: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Colors.lime,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.search,
                            // color: Colors.lime,
                          )),
                    ),

                    fillColor: Color(0xFFb4ceff),
                    border: InputBorder.none,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 4,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.yellow, width: 4)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Color(
                              0xFFb4ceff,
                            ),
                            width: 3)),
                    label: Text(
                      "User Password",
                      style: TextStyle(),
                    ),
                    hintText: "Enter some Text.......",
                    hintStyle: TextStyle(color: Colors.amber),
                  )),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    text1 = usernameController.text;
                  });
                },
                child: Text("Save")),
            Text(text1)
          ],
        ));
  }
}
