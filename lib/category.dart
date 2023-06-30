import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybookshelf/widgets/buttons/defult_button.dart';


class SelectCategoty extends StatefulWidget {
  const SelectCategoty({super.key});

  @override
  State<SelectCategoty> createState() => _SelectCategotyState();
}

class _SelectCategotyState extends State<SelectCategoty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 234, 232),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const SizedBox(
                height: 205,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My",
                      style: GoogleFonts.montserrat(
                          fontSize: 75, color: Colors.blue),
                    ),
                    Text(
                      "Book's",
                      style: GoogleFonts.montserrat(
                          fontSize: 75, color: Colors.red),
                    ),
                    Text(
                      "Shelf..",
                      style: GoogleFonts.montserrat(
                          fontSize: 75, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Select Category",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 200,
                      width: 500,
                      child: tags(),
                    ),
                  ),
                ],
              ),
              DefultButton(
                logic: null,
                text: 'Submit',
              ),
            ])));
  }
}

class tags extends StatefulWidget {
  const tags({super.key});

  @override
  State<tags> createState() => _tagsState();
}

class _tagsState extends State<tags> {
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
