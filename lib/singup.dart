import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  get _formKey => GlobalKey<FormState>();
  get _nameController => TextEditingController();
  get _emailController => TextEditingController();

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
                    style:
                        GoogleFonts.montserrat(fontSize: 75, color: Colors.red),
                  ),
                  Text(
                    "Shelf..",
                    style: GoogleFonts.montserrat(
                        fontSize: 75, color: Colors.black),
                  ),
                ],
              ),
            ),
            //
            //Container change on click next button
            //
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: GenderContainer(),
              // child: Container(
              //   height: 200,
              //   width: MediaQuery.of(context).size.width,
              //   // color: Colors.blue,

              //   child: Form(
              //     key: _formKey,
              //     child: Column(
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: TextFormField(
              //             decoration: const InputDecoration(
              //               border: UnderlineInputBorder(),
              //               labelText: 'Name',
              //             ),
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: TextFormField(
              //             decoration: const InputDecoration(
              //               border: UnderlineInputBorder(),
              //               labelText: 'Email',
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    // color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "Back",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 239, 45, 91)),
                      ),
                    ),
                  ),
                )),
                const SizedBox(
                  width: 200,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    width: 80,
                    // color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "Next",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 0, 133, 255)),
                      ),
                    ),
                  ),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "If You Have Account?",
                  style:
                      GoogleFonts.montserrat(fontSize: 20, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Log In",
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 0, 133, 255)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Singupnextpage2 extends StatefulWidget {
  const Singupnextpage2({super.key});

  @override
  State<Singupnextpage2> createState() => _Singupnextpage2State();
}

class _Singupnextpage2State extends State<Singupnextpage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 235, 234, 232),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyHomePage(),
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  var number = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        color: const Color.fromARGB(255, 235, 234, 232),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InternationalPhoneNumberInput(
              onInputChanged: (number) {
                print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: const TextStyle(color: Colors.black),
              initialValue: number,
              textFieldController: controller,
              formatInput: true,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              // inputBorder: OutlineInputBorder(),
              onSaved: (number) {
                print('On Saved: $number');
              },
            ),
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    var number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'IN');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class passwordContainer extends StatefulWidget {
  const passwordContainer({super.key});

  @override
  State<passwordContainer> createState() => _passwordContainerState();
}

class _passwordContainerState extends State<passwordContainer> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.height,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 235, 234, 232),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Conform Password',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenderContainer extends StatefulWidget {
  const GenderContainer({super.key});

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  get _formKey => GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.height,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 235, 234, 232),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gender :",
              style: GoogleFonts.montserrat(
                  fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    height: 35,
                    width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.male_outlined,
                          color: Colors.blue,
                        ),
                        Text(
                          "Male",
                          style: GoogleFonts.montserrat(
                              fontSize: 19, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    height: 35,
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.female_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          "Female",
                          style: GoogleFonts.montserrat(
                              fontSize: 19, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    height: 35,
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.transgender_outlined,
                          color: Color.fromARGB(255, 140, 45, 248),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Transgender",
                          style: GoogleFonts.montserrat(
                              fontSize: 19, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownDatePicker(
                inputDecoration: const InputDecoration(
                    // enabledBorder: const OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    // ),
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(10))
                    ), // optional
                isDropdownHideUnderline: true, // optional
                isFormValidator: true, // optional
                startYear: 1900, // optional
                endYear: 2020, // optional
                width: 10, // optional
                selectedDay: 1, // optional
                selectedMonth: 10, // optional
                selectedYear: 2000, // optional
                onChangedDay: (value) => print('onChangedDay: $value'),
                onChangedMonth: (value) => print('onChangedMonth: $value'),
                onChangedYear: (value) => print('onChangedYear: $value'),
                //boxDecoration: BoxDecoration(
                // border: Border.all(color: Colors.grey, width: 1.0)), // optional
                // showDay: false,// optional
                // dayFlex: 2,// optional
                // locale: "zh_CN",// optional
                // hintDay: 'Day', // optional
                // hintMonth: 'Month', // optional
                // hintYear: 'Year', // optional
                // hintTextStyle: TextStyle(color: Colors.grey), // optional
              ),
            ),
          ],
        ),
      ),
    );
  }
}
