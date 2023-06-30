// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybookshelf/Homepage.dart';
import 'package:mybookshelf/ResetPassword.dart';
import 'package:mybookshelf/singup.dart';
import 'package:mybookshelf/widgets/buttons/login.button.dart';
import 'package:http/http.dart' as http;
// import 'package:libhide/loginanimation.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  late AnimationController _loginController2;
  late Animation<Offset> _offsetForLoginbutton;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..forward();
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(3.5, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));

    _loginController2 = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..forward();

    _offsetForLoginbutton = Tween<Offset>(
      begin: const Offset(0.0, 2),
      end: Offset.zero,
    ).animate(
        CurvedAnimation(parent: _loginController2, curve: Curves.elasticIn));
  }

  bool show = false;
  bool permission = false;
  bool showForm = false;
  int tapCount = 0;
  @override
  void dispose() {
    _controller.dispose();
    _loginController2.dispose();
    super.dispose();
  }

  logic() {
    Future.delayed(const Duration(milliseconds: 260));
    setState(() {
      show = true;
    });
  }

  final _formKey = GlobalKey<FormState>();
  final emailphoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool showpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 232),
      body: SingleChildScrollView(
       
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (show == false)
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 39),
                    child: SlideTransition(
                      position: _offsetAnimation,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My",
                              style: GoogleFonts.montserrat(
                                  fontSize: 100, color: Colors.blue),
                            ),
                            Text(
                              "Book's",
                              style: GoogleFonts.montserrat(
                                  fontSize: 100, color: Colors.red),
                            ),
                            Text(
                              "Shelf..",
                              style: GoogleFonts.montserrat(
                                  fontSize: 100, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 37,
                ),
                AnimatedContainer(
                  height: showForm == false ? 0 : 260,
                  duration: const Duration(seconds: 1),
                  child: Container(
                    height: 260,
                    width: double.infinity,
                    child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16, top: 20),
                              child: TextFormField(
                                style: GoogleFonts.montserrat(
                                fontSize: 18,
                                
                                ),
                                controller: emailphoneController,
                                decoration: InputDecoration(
                                  label: const Text("Email / Phone"),
                                  labelStyle: GoogleFonts.montserrat(
                                    color: Colors.grey.shade700,
                                    fontSize: 25,
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 2, color: Colors.black),
                                  ),
                                ),
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                   return "Email / Phone required";
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16, top: 20),
                              child: TextFormField(
                                style: GoogleFonts.montserrat(
                                fontSize: 18,
                                  
                                ),
                                obscureText: showpassword,
                                controller: passwordController,
                                decoration: InputDecoration(
                                  label: const Text("Password"),
                                  labelStyle: GoogleFonts.montserrat(
                                    color: Colors.grey.shade700,
                                    fontSize: 25,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: (){
                                      setState(() {
                                      showpassword = !showpassword;
                                      });
                                    },
                                    child: Icon( showpassword == true? Icons.visibility_off: Icons.visibility)),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 2, color: Colors.black),
                                  ),
                                ),
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                   return "Password required";
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, CupertinoPageRoute(builder: (context) => const ResetPasswordPage()));
                                    },

                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Forget Password",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.blue.shade700,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ),
                SlideTransition(
                  position: _offsetForLoginbutton,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LoginButton(onPressed: () async {
                        if(tapCount == 0){
                         setState(() {
                          showForm = !showForm;
                          tapCount++;
                        });
                        }else 
                        if(showForm == true&& tapCount == 1){
                          if(_formKey.currentState!.validate()) {
                            await loginApi(email: emailphoneController.text, password: passwordController.text, token: "12346789");
                          }
                        }
                      }),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 22,
                        ),
                        child: SizedBox(
                          height: 36,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "don't have a account?",
                                style: GoogleFonts.montserrat(fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text(
                                  "Sing Up",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 21,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future animationLogic() async {
    setState(() {
      _controller = AnimationController(
        duration: const Duration(milliseconds: 2000),
        vsync: this,
      )..forward();
      _offsetAnimation = Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(3.5, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ));
    });
  }

  Future<void> loginApi({required String email, required String password, required String token}) async{
    final response = await http.post(
    Uri.parse('http://64.227.132.31:3000/api/v1/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "user_identy": email,
      "password": password,
      "token": token
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    log(response.body.toString());
    Map data = jsonDecode(response.body);
    if(data["status"] == 200){
      Navigator.push(context, CupertinoPageRoute(builder: (context)=> const HomePage()));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login Crendtail not match")));
    }
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    log(response.body.toString());
    throw Exception('Failed to create album.');
  }
  }
  
}
