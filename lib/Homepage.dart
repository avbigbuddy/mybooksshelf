import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybookshelf/color/app_backgraoung_color.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                                      hintText: 'Search books?',
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
                        return const Containerwidget();
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

class Containerwidget extends StatefulWidget {
  const Containerwidget({super.key});

  @override
  State<Containerwidget> createState() => _ContainerwidgetState();
}

class _ContainerwidgetState extends State<Containerwidget> {
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
            height: 310,
            child: ListView.builder(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const BookCard();
              },
            ),
          ),
        )
      ],
    );
  }
}

class BookCard extends StatefulWidget {
  const BookCard({super.key});

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
          child: Container(
            height: 260
            ,
            width: 160,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage('assets/download.jpg'))
                    ),
                    ),
                ),
                
                const SizedBox(
                  height: 6,
                ),
                Center(
                  child: Text("SHIFTING STARS",
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                ),
                Center(
                  child: Text("by Gary Stringer in\nSci-fi Fantasy",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 10,
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
