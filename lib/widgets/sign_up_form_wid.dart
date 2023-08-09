import 'package:flutter/material.dart';
class sign_up_form extends StatelessWidget {
    sign_up_form({
    super.key,
  });
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController namecontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = new GlobalKey<FormState>();
    String name = "";
    String email = "";
    String password = "";
    send() {
      var formData = formState.currentState;

      if (formData!.validate()) {
        //  Navigator.of(context).pushNamed("location");
        print("object");
      } else {
        print("not object");
      }
    }
    return Form(
      key: formState,
      child: Column(
        children: [
          TextFormField(
              onChanged: (text) {
                name = text;
              },
              validator: (name) {
                if (name!.isEmpty ) {
                  return "please enter your name ";
                }
                if (name!.length <3 ) {
                  return "please enter your name correctly ";
                }
              },
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              controller: namecontroller,
              textInputAction: TextInputAction.go,
              // textAlign: TextAlign.center,
              cursorColor: Colors.orange,
              //  controller: password ,
              decoration: InputDecoration(
                hintText: "Full Name",
                prefixIcon: CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 16,
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent,
                    )),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent,
                    )),
              )),
          SizedBox(height: 25,),
          TextFormField(
              onChanged: (text) {
                email = text;
              },
              validator: (email) {
                if  (email!.isEmpty) {
                  return "please enter your email";
                }
                if (email!.length < 3) {
                  return "this email not exist";
                }
              },
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              controller: emailcontroller,
              textInputAction: TextInputAction.go,
              // textAlign: TextAlign.center,
              cursorColor: Colors.orange,

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
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent,
                    )),
              )),

          SizedBox(height: 25,),

          TextFormField(
              obscureText: true,
              onChanged: (text) {
                password = text;
              },
              validator: (password) {

                if (password!.length < 3) {
                  return "your password is weak";
                }
                if  (password!.isEmpty) {
                  return "please enter password";
                }
              },
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              controller: passwordcontroller,
              textInputAction: TextInputAction.go,
              // textAlign: TextAlign.center,
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
                errorBorder: OutlineInputBorder(
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
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[800],
                  ),
                  child: TextButton(
                    onPressed:send,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ), // login
        ],
      ),
    );
  }
}
