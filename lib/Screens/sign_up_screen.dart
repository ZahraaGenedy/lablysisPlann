import 'package:flutter/material.dart';
import 'package:lablysisplan/widgets/social_wid.dart';
import 'package:lablysisplan/widgets/sign_up_form_wid.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
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
          height: 710,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: SingleChildScrollView(
                child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 440,
                        height: 230,
                        color: Colors.white,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset('assets/images/2.png')),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.blue[700]),
                      ),
                    ],
                  ),
                ),
                social_wid(),
                Text("Or, register with email...",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                sign_up_form(),
              ],
            )),
          ),
        ));
  }
}
