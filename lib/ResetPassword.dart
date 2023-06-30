import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 232),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 234, 232),
        elevation: 0,
        centerTitle: true,
        title: Text(
              "Reset Password",
              style: GoogleFonts.montserrat(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context); 
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded,
                size: 25, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  "My",
                  style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 0, 133, 255)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  "Book's",
                  style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 224, 42, 42)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  "Shelf...",
                  style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 103,
          ),
          const Password(),
        ],
      ),
    );
  }
}

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 310,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          labelText: 'Password',
                          labelStyle: GoogleFonts.montserrat(
                              fontSize: 28,
                              color: const Color.fromARGB(157, 0, 0, 0))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        labelText: 'Conform Password',
                        labelStyle: GoogleFonts.montserrat(
                            fontSize: 28,
                            color: const Color.fromARGB(157, 0, 0, 0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Container(
                height: 70,
                width: 150,
                color: const Color.fromARGB(255, 235, 234, 232),
              ),
              trailing: Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 23, 23, 23),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Submit",
                    style: GoogleFonts.montserrat(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 235, 234, 232),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Email *',
                  labelStyle: GoogleFonts.montserrat(
                      fontSize: 25, color: const Color.fromARGB(157, 0, 0, 0))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 235, 234, 232),
            child: ListTile(
              leading: Text(
                "OTP",
                style: GoogleFonts.montserrat(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(120, 0, 0, 0)),
              ),
              title: OtpTextField(
                keyboardType: TextInputType.text,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                enabledBorderColor: Colors.black,
                borderRadius: BorderRadius.circular(10),
                numberOfFields: 6,
                fieldWidth: 44,
                borderColor: const Color.fromARGB(115, 0, 0, 0),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Container(
              height: 70,
              width: 150,
              color: const Color.fromARGB(255, 235, 234, 232),
              child: ListTile(
                leading: Text(
                  "Timer",
                  style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(120, 0, 0, 0)),
                ),
                trailing: Text(
                  "1:30",
                  style: GoogleFonts.montserrat(
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue),
                ),
              ),
            ),
            trailing: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 23, 23, 23),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Send",
                  style: GoogleFonts.montserrat(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
