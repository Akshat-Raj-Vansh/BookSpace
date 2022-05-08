import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/gradients.dart';
import '../../../../utils/widgets/gradient_text.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final books = [
    'assets/images/book.jpg',
    'assets/images/book2.jpg',
    'assets/images/book3.jpeg',
    'assets/images/book4.jpg',
    'assets/images/book5.jpg',
    'assets/images/book6.jpg',
    'assets/images/book7.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            // App Bar
            Container(
              color: Colors.black26,
              height: 100,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
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
                            width: 600,
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
                              color: Color.fromARGB(208, 0, 0, 0),
                              border: Border.all(
                                  color: Color.fromARGB(208, 0, 0, 0)),
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
              ),
            ),

            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildHeaderImage(),
                    _buildTrendingList(),
                    _buildRecentlyUpdatedList(),
                    _buildTopRatedList(),
                    _buildMostViewedList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildHeaderImage() => Obx(
        () => Container(
          height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1),
                BlendMode.dstATop,
              ),
              image: AssetImage(
                controller.recommendedBooks[controller.rBindex.value],
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 60),
              IconButton(
                onPressed: () {
                  controller.scrollBackwardRBook();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white30,
                  size: 24,
                ),
              ),
              SizedBox(width: 60),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 900,
                        child: Text(
                          'The Imperfections of ',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 900,
                        child: GradientText(
                          'Memory',
                          gradient: primaryGradient,
                          style: GoogleFonts.poppins(
                            fontSize: 84,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 900,
                        child: Text(
                          'in purgatory. He has to piece together the his jumbled memories.',
                          style: GoogleFonts.poppins(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(
                controller.recommendedBooks[controller.rBindex.value],
                fit: BoxFit.fitHeight,
              ),
              SizedBox(width: 140),
              IconButton(
                onPressed: () {
                  controller.scrollForwardRBook();
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white30,
                  size: 24,
                ),
              ),
              SizedBox(width: 120),
            ],
          ),
        ),
      );

  _buildTrendingList() => Column(
        children: [
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Currently Trending Novels',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 28,
                color: Colors.white60,
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 360,
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Card(
                    child: SizedBox(
                      child: Stack(
                        children: [
                          Image.asset(
                            books[
                                (index * Random().nextInt(100)) % books.length],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '$index',
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.white38),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      );
  _buildRecentlyUpdatedList() => Column(
        children: [
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Recently Updated Novels',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 28,
                color: Colors.white60,
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 360,
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Card(
                    child: SizedBox(
                      child: Stack(
                        children: [
                          Image.asset(books[
                              (index * Random().nextInt(100)) % books.length]),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '$index',
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.white38),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 15,
            ),
          ),
        ],
      );

  _buildMostViewedList() => Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                'Most Viewed Novels',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 360,
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Card(
                    child: SizedBox(
                      child: Stack(
                        children: [
                          Image.asset(books[
                              (index * Random().nextInt(100)) % books.length]),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '$index',
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.white38),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 15,
            ),
          ),
        ],
      );

  _buildTopRatedList() => Column(
        children: [
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Top Rated Novels',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 28,
                color: Colors.white60,
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 360,
            child: ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: Card(
                    child: SizedBox(
                      child: Stack(
                        children: [
                          Image.asset(books[
                              (index * Random().nextInt(100)) % books.length]),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '$index',
                              style: GoogleFonts.poppins(
                                  fontSize: 20, color: Colors.white38),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 15,
            ),
          ),
        ],
      );
}
