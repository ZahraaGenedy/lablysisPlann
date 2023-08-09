import 'package:flutter/material.dart';
import 'package:lablysisplan/widgets/image_text_wid.dart';
import 'package:lablysisplan/widgets/social_wid.dart';
import 'package:lablysisplan/widgets/form_widget.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});
//  const MyHomePage({super.key, required this.title});
 // final String title;

  @override
  State<loginscreen> createState() => _logincreenState();
}

class _logincreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },child: Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
      width: 400,
      height: 810,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            image_text_wid(),
            Form_wid(),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Or, login with...",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
            ),
            social_wid(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't you have an account?",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed("sign up");
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.indigo[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    ));
  }
}
