import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/gradients.dart';
import '../../../../utils/widgets/gradient_btn.dart';
import '../../../../utils/widgets/gradient_text.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
              child: Container(
                height: 500,
                child: Image.asset('assets/images/cover.jpg'),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GradientText(
                    'The Book Space',
                    gradient: primaryGradient,
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Home',
                    style: GoogleFonts.poppins(
                        fontSize: 20, color: Colors.white38),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'My List',
                    style: GoogleFonts.poppins(
                        fontSize: 20, color: Colors.white38),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'NFT',
                    style: GoogleFonts.poppins(
                        fontSize: 20, color: Colors.white38),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Publish',
                    style: GoogleFonts.poppins(
                        fontSize: 20, color: Colors.white38),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        gradient: rprimaryGradient,
                        border: Border.all(
                          color: Colors.white38,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Container(
                        width: 900,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        child: TextFormField(
                          onTap: () {},
                          decoration: InputDecoration(
                            hintText: 'Enter the Book, Author, or ISBN',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white38,
                            ),
                            errorStyle: Theme.of(context)
                                .textTheme
                                .overline
                                ?.copyWith(color: Colors.red, fontSize: 24),
                            icon: Icon(
                              Icons.search_outlined,
                              color: Colors.cyan,
                            ),
                            labelStyle: Theme.of(context)
                                .textTheme
                                .overline
                                ?.copyWith(color: Colors.white38, fontSize: 18),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.white38,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(208, 0, 0, 0),
                          border:
                              Border.all(color: Color.fromARGB(208, 0, 0, 0)),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    icon: Icon(
                      Icons.notifications_outlined,
                      color: Colors.white38,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Sign Out',
                    style: GoogleFonts.poppins(
                        fontSize: 20, color: Colors.white38),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 900,
                    child: Text(
                      'Browse the new ',
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
                      'NFT\'s, Books',
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
                      'on BookSpace.',
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
            ),
          ],
        ),
      ),
    );
  }
}
