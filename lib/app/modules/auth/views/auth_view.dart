import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/gradients.dart';
import '../../../../utils/widgets/gradient_btn.dart';
import '../../../../utils/widgets/gradient_text.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
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
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 900,
                        child: Text(
                          'Sell and Purchase',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            fontSize: 64,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 900,
                        child: GradientText(
                          'NFT\'s',
                          gradient: primaryGradient,
                          style: GoogleFonts.poppins(
                            fontSize: 124,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 900,
                        child: Text(
                          'of Books.',
                          style: GoogleFonts.poppins(
                            fontSize: 64,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 100),
                      SizedBox(
                        width: 900,
                        child: Text(
                          'The BookSpace is a decentralized publication layer of internet.',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Colors.white38,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 900,
                        child: Text(
                          'It is a decentralized platform that allows you to publish your books on the internet.',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Colors.white38,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GradientButton(
                          onTap: () {},
                          child: Container(
                            width: 350,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter your USERNAME here',
                                errorStyle: Theme.of(context)
                                    .textTheme
                                    .overline
                                    ?.copyWith(color: Colors.red, fontSize: 24),
                                icon: Icon(
                                  Icons.person_outlined,
                                  color: Colors.white38,
                                ),
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .overline
                                    ?.copyWith(
                                        color: Colors.white38, fontSize: 18),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white38,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GradientButton(
                          onTap: () {},
                          child: Container(
                            width: 350,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter your EMAIL here',
                                errorStyle: Theme.of(context)
                                    .textTheme
                                    .overline
                                    ?.copyWith(color: Colors.red, fontSize: 24),
                                icon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.white38,
                                ),
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .overline
                                    ?.copyWith(
                                        color: Colors.white38, fontSize: 18),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white38,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        GradientButton(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            child: Text(
                              'Register',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                      ],
                    ),
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
