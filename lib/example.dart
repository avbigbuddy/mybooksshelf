// import 'package:flutter/material.dart';

// class SignupPage extends StatefulWidget {
//   @override
//   _SignupPageState createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();

//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );

//     _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Curves.easeInOut,
//       ),
//     );

//     _animationController.forward();
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(children: [
//       Positioned(
//         top: -60,
//         left: -60,
//         child: ScaleTransition(
//           scale: _animation,
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.blue.withOpacity(0.3),
//             ),
//           ),
//         ),
//       ),
//       Positioned(
//         bottom: -60,
//         right: -60,
//         child: ScaleTransition(
//           scale: _animation,
//           child: Container(
//             height: 300,
//             width: 300,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.blue.withOpacity(0.3),
//             ),
//           ),
//         ),
//       ),
//       SingleChildScrollView(
//           child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const SizedBox(height: 60),
//                     FadeTransition(
//                       opacity: _animation,
//                       child: const Text(
//                         "Sign Up",
//                         style: TextStyle(
//                           fontSize: 32,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     FadeTransition(
//                       opacity: _animation,
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "Full Name",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     FadeTransition(
//                       opacity: _animation,
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "Email Address",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     FadeTransition(
//                       opacity: _animation,
//                       child: TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           hintText: "Password",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     FadeTransition(
//                         opacity: _animation,
//                         child: ElevatedButton(
//                             onPressed: () {},
//                             child: const Text(
//                               "Sign Up",
//                               style: TextStyle(fontSize: 18),
//                             )))
//                   ])))
//     ]));
//   }
// }

import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderIconRadioButton extends StatefulWidget {
  final Gender gender;
  final bool isSelected;
  final Function(Gender) onChanged;

  GenderIconRadioButton({
    required this.gender,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  _GenderIconRadioButtonState createState() => _GenderIconRadioButtonState();
}

class _GenderIconRadioButtonState extends State<GenderIconRadioButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(widget.gender);
      },
      child: Row(
        children: [
          Radio<Gender>(
            value: widget.gender,
            groupValue: widget.isSelected ? widget.gender : null,
            onChanged: (Gender? value) {
              widget.onChanged(value!);
            },
          ),
          Icon(
            widget.gender == Gender.male ? Icons.male : Icons.female,
            color: widget.isSelected ? Colors.blue : Colors.black,
          ),
          SizedBox(width: 8),
          Text(
            widget.gender == Gender.male ? 'Male' : 'Female',
            style: TextStyle(
              color: widget.isSelected ? Colors.blue : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   Gender _selectedGender = Gender.male;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gender Icon Radio Button'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GenderIconRadioButton(
//               gender: Gender.male,
//               isSelected: _selectedGender == Gender.male,
//               onChanged: (Gender newValue) {
//                 setState(() {
//                   _selectedGender = newValue;
//                 });
//               },
//             ),
//             GenderIconRadioButton(
//               gender: Gender.female,
//               isSelected: _selectedGender == Gender.female,
//               onChanged: (Gender newValue) {
//                 setState(() {
//                   _selectedGender = newValue;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
