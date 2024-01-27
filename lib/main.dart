import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX In-Named Routing"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => NextPage(),
                      duration: Duration(seconds: 3),
                      transition: Transition.zoom);
                },
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              ),
              Text("Navigate To Next Page"),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
