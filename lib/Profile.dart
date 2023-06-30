import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybookshelf/widgets/buttons/defult_button.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 232),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 234, 232),
        elevation: 0,
        title: const ListTile(
          leading: Icon(Icons.arrow_back_ios_new_rounded,
              size: 25, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Welcome Back",
                style: GoogleFonts.montserrat(
                    fontSize: 37, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "Mr.Vishal Goswami",
                style: GoogleFonts.montserrat(
                    fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Email :",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      "hdar6336@gmail.com",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Gender :",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Male",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Age :",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      "18",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 39,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                "My Category",
                style: GoogleFonts.montserrat(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 235, 234, 232)),
                  child: const Center(
                    child: Category(),
                  )),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                "My Active Plan",
                style: GoogleFonts.montserrat(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: const Color.fromARGB(255, 228, 228, 228),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              "Plane Duration :",
                              style: GoogleFonts.montserrat(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              "Starting date :",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              "End date :",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              "12 Months",
                              style: GoogleFonts.montserrat(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                "27-05-2023",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              "27-05-2024",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                "My Active Plan",
                style: GoogleFonts.montserrat(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                          color: const Color.fromARGB(255, 233, 233, 233)),
                      child: Center(
                        child: Text(
                          "show my pays",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                          color: const Color.fromARGB(255, 209, 209, 209)),
                      child: Center(
                        child: Text(
                          "add payments",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            DefultButton(
              logic: null,
              text: 'Logout',
            ),
            const SizedBox(
              height: 38,
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return MultiSelectContainer(
        prefix: MultiSelectPrefix(
          selectedPrefix: const Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 14,
            ),
          ),
        ),
        items: [
          MultiSelectCard(value: 'Biographies', label: 'Biographies'),
          MultiSelectCard(value: 'Business', label: 'Business'),
          MultiSelectCard(value: 'Comics', label: 'Comics'),
          MultiSelectCard(value: 'Computer & Tech', label: 'Computer & Tech'),
          MultiSelectCard(value: 'Cokking', label: 'Cokking'),
          MultiSelectCard(value: 'Edu & Reference', label: 'Edu & Reference'),
          MultiSelectCard(value: 'Entertainment', label: 'Entertainment'),
          MultiSelectCard(value: 'Romance', label: 'Romance'),
          MultiSelectCard(value: 'Health & Fitness', label: 'Health & Fitness'),
          MultiSelectCard(value: 'History', label: 'History'),
          MultiSelectCard(value: 'Horror', label: 'Horror'),
          MultiSelectCard(value: 'Kids', label: 'Kids'),
          MultiSelectCard(value: 'Teen', label: 'Teen'),
        ],
        onChange: (allSelectedItems, selectedItem) {});
  }
}
