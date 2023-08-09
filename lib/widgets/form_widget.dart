import 'package:flutter/material.dart';

class Form_wid extends StatelessWidget {
  Form_wid({
    super.key,
  });
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = new GlobalKey<FormState>();
    String pass = "";
    String email = "";

    send() {
      var formData = formState.currentState;

      if (formData!.validate()) {
        //  Navigator.of(context).pushNamed("location");
        print("object");
      } else {
        print("not object");
      }
    }

    return Container(
        width: 350,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Form(
                key: formState,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: TextFormField(
                          onChanged: (text) {
                            email = text;
                          },
                          validator: (emaill) {
                            if (emaill!.length < 3) {
                              return "please enter your name correctly";
                            }
                            if (email != "zahraa") {
                              return "user name is not correct";
                            }
                          },
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textInputAction: TextInputAction.go,
                          cursorColor: Colors.orange,
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            hintText: "Email ID",
                            prefixIcon: CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 16,
                              child: Icon(
                                Icons.alternate_email_rounded,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.orangeAccent,
                                )),
                          )),
                    ),

                    TextFormField(
                        obscureText: true,
                        onChanged: (text) {
                          pass = text;
                        },
                        validator: (password) {
                          if (password!.length < 3) {
                            return "please enter your password correctly";
                          }
                          if (pass != "12345") {
                            return "user name is not correct";
                          }
                        },
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textInputAction: TextInputAction.go,
                        controller: passwordcontroller,
                        cursorColor: Colors.orange,
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: CircleAvatar(
                            backgroundColor: Colors.white70,
                            radius: 16,
                            child: Icon(
                              Icons.lock,
                              size: 25,
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.orangeAccent,
                              )),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[800],
                            ),
                            child: TextButton(
                              onPressed: send,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), // login
                  ],
                ),
              ),
            )));
  }
}
