// This is subscription page for users and show diffrent plans
//
//
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybookshelf/color/app_backgraoung_color.dart';
import 'package:mybookshelf/widgets/buttons/defult_button.dart';
import 'package:mybookshelf/widgets/buttons/defult_price.dart';



class subscription_page extends StatefulWidget {
  const subscription_page({super.key});

  @override
  State<subscription_page> createState() => _subscription_pageState();
}

class _subscription_pageState extends State<subscription_page> {
  bool isPaid = true;
  @override
  Widget build(BuildContext context) {
    // RadioGroupController myController = RadioGroupController();
    return Scaffold(
      backgroundColor: AppBackGraoung.backgraungColor,
      appBar: AppBar(
        elevation: 0,
        // leading: const BackButton(
        //   color: Colors.black, // <-- SEE HERE
        // ),
        // centerTitle: true,
        backgroundColor: AppBackGraoung.backgraungColor,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.red.shade300,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 5  horizontally
                      0.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Text("SHIFTING STARS",
                  style: GoogleFonts.inter(
                      fontSize: 32, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                  "For those who are interested in\nfinding random paragraphs, that's\nexactly what this webpage provides.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 51, 51, 51))),
            ),
            const SizedBox(
              height: 34,
            ),
            if (isPaid == true)
              DefultButton(
                logic: () => myBottom(),
                text: "Need subscription",
              ),
            if (isPaid == false)
              DefultButton(
                logic: null,
                text: "Read Now",
              ),
            const SizedBox(
              height: 20,
            ),
            if (isPaid == false)
              DefultButton(
                logic: null,
                text: "Add in your book shelf",
              ),
          ],
        ),
      ),
    );
  }
//
//myBottom()
//there is Bottomsheet
//

  myBottom() {
    showModalBottomSheet(
        backgroundColor: const Color.fromARGB(255, 217, 217, 217),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        context: context,
        isScrollControlled: true,
        constraints: BoxConstraints.tight(Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height * .7)),
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: InkWell(
                    child: const Icon(
                      Icons.close_rounded,
                      size: 30,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Expanded(
                    //     child: RadioGroup(
                    //   controller: myController,
                    //   values: ["Choice1"],
                    //   indexOfDefault: 0,
                    //   orientation:
                    //       RadioGroupOrientation.horizontal,
                    //   decoration: RadioGroupDecoration(
                    //     // spacing: 10.0,
                    //     labelStyle: TextStyle(
                    //       color: Colors.blue,
                    //     ),
                    //     activeColor: Colors.amber,
                    //   ),
                    // )),

                    //
                    //This expanded have plans choice to pay the user plan price
                    //expanded column(
                    //            textprice: 'Price:',
                    // text: 'Reference site about Lorem Ipsum, ',
                    // price: '299',
                    // month: '1 Month',
                    // discount: ' %5',  )
                    //
                    //there is mountly subscription diffrent diffrent price
                    //
                    Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 20, left: 20.0, right: 20),
                              child: DefultPrice(
                                textprice: 'Price:',
                                text: 'Reference site about Lorem Ipsum, ',
                                price: '299',
                                month: '1 Month',
                                discount: ' %5',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 20, left: 20.0, right: 20),
                              child: DefultPrice(
                                textprice: 'Price:',
                                text: 'Reference site about Lorem Ipsum, ',
                                price: '499',
                                month: '3 Month',
                                discount: ' %10',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 20, left: 20.0, right: 20),
                              child: DefultPrice(
                                textprice: 'Price:',
                                text: 'Reference site about Lorem Ipsum, ',
                                price: '719',
                                month: '6 Month',
                                discount: ' %20',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 20, left: 20.0, right: 20),
                              child: DefultPrice(
                                textprice: 'Price:',
                                text: 'Reference site about Lorem Ipsum, ',
                                price: '1299',
                                month: '12 Month',
                                discount: ' %25',
                              ),
                            )
                          ],
                        )),
                  ],
                )
              ],
            ),
          );
        });
  }
}
