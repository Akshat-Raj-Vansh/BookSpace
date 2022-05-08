import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BookSpace',
                    style: TextStyle(fontSize: 100, color: Colors.amber),
                  ),
                  Container(
                    width: 450,
                    child: Text(
                      'The BookSpace is a decentralized publication layer of internet.It is a decentralized platform that allows you to publish your books on the internet.',
                      style: TextStyle(fontSize: 24, color: Colors.white38),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 100),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('MetaMask Login!'),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        'Metamask Login!',
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
