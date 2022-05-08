import 'package:bookspace/utils/widgets/gradient_btn.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/gradients.dart';
import '../../../../utils/widgets/gradient_text.dart';
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
                    style:
                        GoogleFonts.poppins(fontSize: 20, color: Colors.white),
                  ),
                  Expanded(child: SizedBox(width: 10)),
                  Text(
                    'Github',
                    style:
                        GoogleFonts.poppins(fontSize: 20, color: Colors.white),
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
                        fontSize: 28, color: Colors.white38),
                  ),
                  Text(
                    'It is a decentralized platform that allows you to publish your books on the internet.',
                    style: GoogleFonts.poppins(
                        fontSize: 28, color: Colors.white38),
                  ),
                  SizedBox(height: 100),
                  GradientButton(
                    onTap: () {
                      Get.toNamed('/auth');
                      Get.snackbar(
                        'Button Pressed',
                        'MetaMask login should be initiated on the button click!',
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: Colors.white,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 10),
                      child: Text(
                        'Let\'s get started!',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Get.toNamed('/auth');
                  //     Get.snackbar(
                  //       'Button Pressed',
                  //       'MetaMask login should be initiated on the button click!',
                  //       snackPosition: SnackPosition.BOTTOM,
                  //       colorText: Colors.white,
                  //     );
                  //   },
                  //   child: Container(
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: 20, vertical: 10),
                  //     child: Text(
                  //       'Let\'s get started!',
                  //       style: TextStyle(fontSize: 20, color: Colors.white),
                  //     ),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(20),
                  //       border: Border.all(color: Colors.amber, width: 2),
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
