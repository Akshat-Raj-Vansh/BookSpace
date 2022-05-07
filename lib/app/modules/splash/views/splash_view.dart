import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Text(
                    'The Book Space',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Expanded(child: SizedBox(width: 10)),
                  Text(
                    'Github',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'The Decentralized',
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                  Text(
                    'Publishing Layer',
                    style: TextStyle(fontSize: 100, color: Colors.amber),
                  ),
                  Text(
                    'of Internet',
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                  SizedBox(height: 100),
                  Text(
                    'The BookSpace is a decentralized publishing layer of internet.',
                    style: TextStyle(fontSize: 24, color: Colors.white38),
                  ),
                  Text(
                    'It is a decentralized platform that allows you to publish your books on the internet.',
                    style: TextStyle(fontSize: 24, color: Colors.white38),
                  ),
                  SizedBox(height: 100),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Button Pressed'),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        'Let\'s get started!',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.amber, width: 2),
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
