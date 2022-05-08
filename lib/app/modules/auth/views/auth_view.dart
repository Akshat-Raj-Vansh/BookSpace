import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/gradients.dart';
import '../../../../utils/widgets/gradient_text.dart';
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
              alignment: Alignment.topCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'The Book Space',
                    style: GoogleFonts.poppins(
                        fontSize: 20, color: Colors.white38),
                  ),
                  Expanded(child: SizedBox(width: 10)),
                  Text(
                    'Github',
                    style: GoogleFonts.poppins(
                        fontSize: 20, color: Colors.white38),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'The Decentralized',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          fontSize: 64,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GradientText(
                        'MarketPlace',
                        gradient: primaryGradient,
                        style: GoogleFonts.poppins(
                          fontSize: 124,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'of Books.',
                        style: GoogleFonts.poppins(
                          fontSize: 64,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 100),
                      Text(
                        'The BookSpace is a decentralized publication layer of internet.',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Colors.white38,
                        ),
                      ),
                      Text(
                        'It is a decentralized platform that allows you to publish your books on the internet.',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Colors.white38,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
