//
// Create BookShelfPage
//
//

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybookshelf/color/app_backgraoung_color.dart';



class BookShelfPage extends StatefulWidget {
  const BookShelfPage({super.key});

  @override
  State<BookShelfPage> createState() => _BookShelfPageState();
}

class _BookShelfPageState extends State<BookShelfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppBackGraoung.backgraungColor,
        body: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.home_rounded,
                              color: Colors.black,
                              size: 35,
                            ),
                            Text("Home",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                )),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ))),
                        Expanded(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.book,
                              color: Colors.black,
                              size: 35,
                            ),
                            Text("Book shelf",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                )),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ))),
                        Expanded(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 35,
                            ),
                            Text("Search",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                )),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ))),
                        Expanded(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 35,
                            ),
                            Text("Profile",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                )),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ))),
                      ],
                    )
                  ],
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 71,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(
                    255,
                    235,
                    234,
                    232,
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 21, right: 21),
                      child: SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 12,
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3.0, // soften the shadow
                                        spreadRadius: 1.0, //extend the shadow
                                        offset: Offset(
                                          0.0, // Move to right 5  horizontally
                                          0.0, // Move to bottom 5 Vertically
                                        ),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search books from your shelf?',
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 25,
                                        color: Colors.black,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const Expanded(
                                child: Icon(
                                  Icons.more_vert,
                                  shadows: <Shadow>[
                                    Shadow(color: Colors.black, blurRadius: 4)
                                  ],
                                  size: 40,
                                ),
                              ),
                            ],
                          )),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Containerwidgetshelf();
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class Containerwidgetshelf extends StatefulWidget {
  const Containerwidgetshelf({super.key});
  @override
  State<Containerwidgetshelf> createState() => _ContainerwidgetshelfState();
}

class _ContainerwidgetshelfState extends State<Containerwidgetshelf> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text("Hacking Related Books:",
              style:
                  GoogleFonts.inter(fontSize: 21, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: 270,
            child: ListView.builder(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const BookSelfCard1();
              },
            ),
          ),
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: 270,
            child: ListView.builder(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const BookSelfCard2();
              },
            ),
          ),
        )
      ],
    );
  }
}

class BookSelfCard1 extends StatefulWidget {
  const BookSelfCard1({super.key});

  @override
  State<BookSelfCard1> createState() => _BookSelfCard1State();
}

class _BookSelfCard1State extends State<BookSelfCard1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
          child: Container(
            height: 220,
            width: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0, // Soften the shaodw
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Image(
                        image: AssetImage('assets/Images/1678183912 1.png'))),
                const SizedBox(
                  height: 6,
                ),
                Center(
                  child: Text("SHIFTING STARS",
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BookSelfCard2 extends StatefulWidget {
  const BookSelfCard2({super.key});

  @override
  State<BookSelfCard2> createState() => _BookSelfCard2State();
}

class _BookSelfCard2State extends State<BookSelfCard2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
          child: Container(
            height: 220,
            width: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0, // Soften the shaodw
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Image(
                        image: AssetImage('assets/Images/1678183912 1.png'))),
                const SizedBox(
                  height: 6,
                ),
                Center(
                  child: Text("SHIFTING STARS",
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
